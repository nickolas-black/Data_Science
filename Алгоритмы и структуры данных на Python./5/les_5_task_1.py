from collections import namedtuple

n = int(input("Введите количество предприятий: "))
Org = namedtuple('Org', ['Name', 'Profit'])
report = []
while n > 0:
    In = input("Введите наименования предприятияи его заработок за 4 квартала (5 значений через пробел): ").split()
    Profit = [int(In[i]) for i in range(1, len(In))]
    temp = Org(In[0], Profit)
    report.append(temp)
    n -= 1
YearProfit = []
for i in report:
    YearProfit.append(sum(i[1]))
AverageProfit = round(sum(YearProfit) / len(YearProfit), 4)
print(f'Средняя прибыль по всем предприятиям в этом году: {AverageProfit}')
Low = []
High = []
for i in report:
    if sum(i[1]) >= AverageProfit:
        High.append(i[0])
    else:
        Low.append(i[0])
print("Списк предприятий, прибыль которых ниже средней: ")
print(Low)
print("Списк предприятий, прибыль которых выше или равна средней: ")
print(High)
