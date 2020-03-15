from typing import List

import requests
from bs4 import BeautifulSoup as bs, PageElement
import numpy as np
import unicodedata
import pandas as pd
from pymongo import MongoClient

main_link_HH = 'https://hh.ru/search/vacancy'
main_link_SJ = 'https://russia.superjob.ru/vacancy/search'
header = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'}
# получение пользовательского запроса
# обработка запроса - приведение к виду, который используется на сайте
search_string = 'python'
search_query_HH = '+'.join(search_string.split())
search_query_SJ = '%20'.join(search_string.split())

#####
# получение результатов запроса с сайта hh.ru
# bs_result - результат разбора первого запроса
# все обработанные bs() результаты для первого источника сохраняем в список bs_result
# на сайте hh.ru при нахождении определенного блока на странице можно сделать вывод, что вакансии на этой странице есть;
# поэтому сохраним такую страницу для последующего разбора
# если получена ссылка в строке с get(href) - значит, информация о вакансии на странице есть - и мы получаем еще одну разобранную функцией bs страницу
# сохраняем информацию в виде списка для разбора вакансий hh.ru
#####
request_result_HH = requests.get(main_link_HH + '?text=' + search_query_HH, headers=header)
bs_result_HH = bs(request_result_HH.text, 'lxml')
bs_result_list_HH: List[PageElement] = [bs_result_HH.find('div', {'class': 'vacancy-serp'})]
i = 1
while i:
    try:
        bs_result_HH = bs(
            requests.get(main_link_HH + '?text=' + search_query_HH + '&page=' + str(i), headers=header).text, 'lxml')
        bs_result_vacancies_HH = bs_result_HH.find('div', {'class': 'vacancy-serp'})
        bs_result_vacancies_HH.find('a', {'data-qa': 'vacancy-serp__vacancy-title'}).get('href')
        bs_result_list_HH.append(bs_result_vacancies_HH)
        i += 1
    except Exception:
        break

#####
# получение результатов запроса с сайта superjob.ru
# получение результатов со второго источника тем же методом - и сохранение их в список bs_result2
# номер последней страницы можно узнать из paging внизу страницы
# 0 и 1 страницы на superjob - это одно и то же; поэтому, после получения первых результатов (первая страница) переходим ко второй (2)
# в получившемся page_list_SJ 9 "лишних" элементов; если элементов больше, значит, есть и другие, кроме проверенной, страницы
#####
request_result_SJ = requests.get(main_link_SJ + '?keywords=' + search_query_SJ, headers=header)
bs_result_SJ = bs(request_result_SJ.text, 'lxml')
bs_result_list_SJ = []
bs_result_list_SJ.append(bs_result_SJ)
page_list_SJ = bs_result_SJ.find_all('span', {'class': '_3IDf-'})
i = 2
if any('>1</span>' in str(i) for i in page_list_SJ):
    last_page = int(str(page_list_SJ[-3:-1][0]).split('>')[1].split('<')[0])
    while i <= last_page:
        bs_result_SJ = bs(
            requests.get(main_link_SJ + '?keywords=' + search_query_SJ + '&page=' + str(i), headers=header).text,
            'lxml')
        bs_result_list_SJ.append(bs_result_SJ)
        i += 1

# создаем списки для сохранения данных о зарплате
# минимальная зарплата - min_salary
# максимальная зарплата - max_salary
# информация о заработной плате сохраняется в salary_data (со всех источников, по порядку)
# валюта, в которой платится зарплата - currency
# список вакансий: vac_list_title_HH для HeadHunter, vac_list_title_SJ для SuperJob
# список всех вакансий: vac_list_title (со всех источников, по порядку)
# итоговый датафрейм: result
##### Зарплата: разбор
# для каждого элемента в получающемся списке проверям 4 условия
# 1 - если строка с информацией о зарплате начинается со слова "до": создаем список данных разбиением по пробелу;
# "до" удаляем; последний элемент списка = валюта; все, что до него - зарплата
# 2 - та же логика при наличии слова 'от'.
# 3 - если в тексте строки есть знак '-', значит, указана зарплата "от и до":
# первый элемент - это минимальная зарплата;
# второй - максимальная;
# последний элемент после сплита максимальной зарплаты по пробелу - это название валюты
# 4 - последний вариант: если ничего не указано, значит, данных нет:
# вставляем значение np.nan для данных о зарплате, пустая строка - для списка валют.

####
# HeadHunter
####
min_salary = []
max_salary = []
currency = []
vac_list_title_HH = []
vac_list_title_SJ = []
for bs_result_vacancies_HH in bs_result_list_HH:
    for i in bs_result_vacancies_HH.find_all('a', {'data-qa': 'vacancy-serp__vacancy-title'}):
        link = i.get('href').split('?query')[0]
        vac_list_title_HH.append([link, i.getText(), 'HeadHunter', link.split('vacancy/')[-1].split('&place')[0]])
    for i in bs_result_vacancies_HH.find_all('div', {'class': 'vacancy-serp-item__row vacancy-serp-item__row_header'}):
        vac_salary = i.find('span', {'data-qa': 'vacancy-serp__vacancy-compensation'})
        if vac_salary:
            salary = unicodedata.normalize('NFKD', vac_salary.getText())
            if salary[0:2] == 'до':
                max_salary.append(''.join(salary.split(' ')[:-1]).replace('до', ''))
                currency.append(salary.split(' ')[-1])
                min_salary.append(np.nan)
            elif salary[0:2] == 'от':
                min_salary.append(''.join(salary.split(' ')[:-1]).replace('от', ''))
                currency.append(salary.split(' ')[-1])
                max_salary.append(np.nan)
            elif '-' in salary:
                min_salary.append(''.join(salary.split('-')[0].split(' ')))
                currency.append(salary.split('-')[-1].split(' ')[-1])
                max_salary.append(''.join(salary.split('-')[1].split(' ')[:-1]))
        else:
            min_salary.append(np.nan)
            max_salary.append(np.nan)
            currency.append('')

####
# SuperJob
####
for bs_result_SJ in bs_result_list_SJ:
    # по какой-то причине теги на superjob меняются; поэтому обрабатываются сразу 2 варианта, которые были выявлены при перехвате ошибок
    try:
        bs_result_vacancies_SJ = bs_result_SJ.find_all('div', {'class': 'f-test-vacancy-item'})
    except Exception:
        pass
    if 0 == len(bs_result_vacancies_SJ):
        try:
            bs_result_vacancies_SJ = bs_result_SJ.find_all('div', {'class': '_3syPg _3P0J7 _9_FPy'})
        except Exception:
            pass
    for i in bs_result_vacancies_SJ:
        try:
            link = main_link_SJ + i.find('a', {'class': 'icMQ_'}).get('href')
            vac_list_title_SJ.append(
                [link, i.find('div', {'class': '_3mfro CuJz5 PlM3e _2JVkc _3LJqf'}).getText(), 'SuperJob',
                 link.split('.html')[0].split('-')[-1]])
        except Exception:
            link = main_link_SJ + i.find('a', {'class': 'icMQ_'}).get('href')
            vac_list_title_SJ.append([link, i.find('span', {'class': '_1rS-s'}).getText(), 'SuperJob',
                                      link.split('.html')[0].split('-')[-1]])
    salaries_SJ = bs_result_SJ.find_all('span', {'class': 'f-test-text-company-item-salary'})
    for vac_salary_SJ in salaries_SJ:
        vac_salary_SJ = unicodedata.normalize("NFKD", vac_salary_SJ.getText())
        if vac_salary_SJ[0:3] == 'до ':
            max_salary.append(''.join(vac_salary_SJ.split(' ')[:-1]).replace('до', ''))
            currency.append(vac_salary_SJ.split(' ')[-1])
            min_salary.append(np.nan)
        elif vac_salary_SJ[0:3] == 'от ':
            min_salary.append(''.join(vac_salary_SJ.split(' ')[:-1]).replace('от', ''))
            currency.append(vac_salary_SJ.split(' ')[-1])
            max_salary.append(np.nan)
        elif '—' in vac_salary_SJ:
            min_salary.append(''.join(vac_salary_SJ.split('—')[0].split(' ')))
            currency.append(vac_salary_SJ.split('—')[-1].split(' ')[-1])
            max_salary.append(''.join(vac_salary_SJ.split('—')[1].split(' ')[:-1]))
        elif vac_salary_SJ[:10] == 'По договор':
            min_salary.append(np.nan)
            max_salary.append(np.nan)
            currency.append('')
        elif len(vac_salary_SJ) > 1:
            min_salary.append(''.join(vac_salary_SJ.split(' ')[:-1]))
            max_salary.append(''.join(vac_salary_SJ.split(' ')[:-1]))
            currency.append(vac_salary_SJ.split(' ')[-1])
        else:
            min_salary.append(vac_salary_SJ)
            max_salary.append(vac_salary_SJ)
            currency.append('')

salary_data = pd.DataFrame([min_salary, max_salary, currency]).T.rename(
    columns={0: 'min_salary', 1: 'max_salary', 2: 'currency'})
result_list = []
vac_list_title_HH.extend(vac_list_title_SJ)
vac_list_title = vac_list_title_HH
i = len(vac_list_title)
for k in range(i):
    result_list.append([vac_list_title[k][1],
                        salary_data['min_salary'][k],
                        salary_data['max_salary'][k],
                        salary_data['currency'][k],
                        vac_list_title[k][0],
                        vac_list_title[k][2],
                        vac_list_title[k][3]])
result = pd.DataFrame(result_list).rename(
    columns={0: 'Вакансия', 1: 'Мин.зарплата', 2: 'Макс.зарплата', 3: 'Валюта', 4: 'Ссылка', 5: 'Сервис', 6: 'ID'})

# обработка нецифровых значений в поле минимальной / максимальной зарплаты
# обход всех значений в столбце минимальной и максимальной заработной платы
# попытка привести каждое в int
# при неудаче последний символ в строке сохраняется в переменную x - и попытка повтрояется
# в случае удачной очередной попытки, переменная x (перевернутая) добавляется в начало столбца с названием валюты
#### т.к. было выявлено, что в большинстве случаев дополнительные символы - это часть названия валюты
# далее: весь столбец переводится в тип float, т.к., теоретически, заработная плата может быть в копейках,
### а кроме этого, имеются данные np.nan (тип float)


for k, i in enumerate(result['Мин.зарплата']):
    try:
        result['Мин.зарплата'][k] = float(result['Мин.зарплата'][k])
    except Exception:
        x = []
        ii = list(result['Мин.зарплата'][k])
        while type(i) != int:
            iii = ii.pop(-1)
            x.append(iii)
            try:
                i = int(''.join(ii))
            except Exception:
                pass
        result['Мин.зарплата'][k] = float(i)
        result.iloc[k, 3] = ''.join(list([result['Валюта'][k], ''.join(x[::-1])])[::-1])

for k, i in enumerate(result['Макс.зарплата']):
    try:
        result['Макс.зарплата'][k] = float(result['Макс.зарплата'][k])
    except Exception:
        x = []
        ii = list(result['Макс.зарплата'][k])
        while type(i) != int:
            iii = ii.pop(-1)
            x.append(iii)
            try:
                i = int(''.join(ii))
            except Exception:
                pass
        result['Макс.зарплата'][k] = float(i)
        result.iloc[k, 3] = ''.join(list([result['Валюта'][k], ''.join(x[::-1])])[::-1])
result['Мин.зарплата'] = result['Мин.зарплата'].astype(float)
result['Макс.зарплата'] = result['Макс.зарплата'].astype(float)

# обработка разных обозначений валют; пока по-разному обозначена только российская валюта
result.loc[result['Валюта'] == '₽', 'Валюта'] = 'руб.'
# исправление ID
# result.loc[result['ID'].str.contains('click\?b='),'ID']=str(result.loc[result['ID'].str.contains('click\?b='),'ID']).split('click?b=')[1].split('\n')[0]


client = MongoClient('localhost', 27017)

db = client['vacancy_db']
# для опыта использования коллекций, вакансии разделены на коллекции по принадлежности к домену (HH и SJ)
# без коллекций код был бы короче
hh = db.head_hunter
sj = db.superjob

result_HH = result.loc[result['Сервис'] == 'HeadHunter', :].reset_index().drop('index', axis=1)
result_SJ = result.loc[result['Сервис'] == 'SuperJob', :].reset_index().drop('index', axis=1)

i = 0
while i < len(result_HH):
    hh.insert_one({'vacancy_name': result_HH['Вакансия'][i],
                   'salary_min': result_HH['Мин.зарплата'][i],
                   'salary_max': result_HH['Макс.зарплата'][i],
                   'salary_currency': result_HH['Валюта'][i],
                   'link': result_HH['Ссылка'][i],
                   'source_domain': result_HH['Сервис'][i]})
    i += 1

i = 0
while i < len(result_SJ):
    sj.insert_one({'vacancy_name': result_SJ['Вакансия'][i],
                   'salary_min': result_SJ['Мин.зарплата'][i],
                   'salary_max': result_SJ['Макс.зарплата'][i],
                   'salary_currency': result_SJ['Валюта'][i],
                   'link': result_SJ['Ссылка'][i],
                   'source_domain': result_SJ['Сервис'][i]})
    i += 1


def searsh_job_by_salary(salary_edge):
    search_result_sj = pd.DataFrame(columns=db.superjob.find()[0].keys())
    search_result_hh = pd.DataFrame(columns=db.head_hunter.find()[0].keys())
    search_resolve_sj = db.superjob.find(
        {'$or': [{'salary_min': {'$gt': salary_edge}}, {'salary_max': {'$gt': salary_edge}}]})
    search_resolve_hh = db.head_hunter.find(
        {'$or': [{'salary_min': {'$gt': salary_edge}}, {'salary_max': {'$gt': salary_edge}}]})
    i = 0
    while i != -1:
        try:
            for n_col, column in enumerate(search_result_sj.columns):
                search_result_sj.loc[i, column] = list(search_resolve_sj[i].values())[n_col]
            i += 1
        except Exception:
            i = -1
    i = 0
    while i != -1:
        try:
            for n_col, column in enumerate(search_result_hh.columns):
                search_result_hh.loc[i, column] = list(search_resolve_hh[i].values())[n_col]
            i += 1
        except Exception:
            i = -1
    return search_result_hh, search_result_sj


salary_edge = float(input('Введите желаемую заработную плату для подбора вакансии:\n'))
# salary_edge = 70000
search_result_hh_df, search_result_sj_df = searsh_job_by_salary(salary_edge)
search_result_df = search_result_sj_df.append(search_result_hh_df).reset_index().drop('index', axis=1)
search_result_df.drop('_id', axis=1, inplace=True)
search_result_df.head(50)

print(search_result_df)

count = search_result_df.count()
print('Кол-во записей в БД:', count)
