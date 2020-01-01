# Определить, какое число в массиве встречается чаще всего.

import random
import sys


def calc_mem(x, level=0):
    print('\t' * level, f'class={x.__class__} memory={sys.getsizeof(x)} val={x}')
    mem = 0
    mem += sys.getsizeof(x)
    if hasattr(x, '__iter__') and type(x) != range:
        if hasattr(x, 'items'):
            for y, xx in enumerate(x):
                mem += calc_mem(y, level + 1) + calc_mem(x[xx], level + 1)
        elif not isinstance(x, str):
            for xx in x:
                mem += calc_mem(xx, level + 1)
    return mem


def frq_func_common(razmer=10):
    list_num = [random.randint(0, razmer) for _ in range(1, razmer + 1)]
    mx_frq = 1

    num = list_num[0]
    mem = 0
    mem += calc_mem(num)
    mem += calc_mem(list_num)
    mem += calc_mem(range(razmer - 1))
    mem += calc_mem(range(razmer - 1))
    for i in range(razmer - 1):
        frq = 1

        for k in range(i + 1, razmer):
            if list_num[i] == list_num[k]:
                frq += 1

        if frq > mx_frq:
            mx_frq = frq
            num = list_num[i]
    mem += calc_mem(frq)
    mem += calc_mem(mx_frq)
    print('Общая посчитанная память=', mem)


if __name__ == '__main__':
    all_mem = 0
    print(sys.version, sys.platform)
    # 3.7.4(tags /v3.7    .4: e09359112e, Jul    8    2019, 19: 29:22) [MSC v.1916 32 bit(Intel)]    win32
    frq_func_common(100)
    # Одновременно используется 2 Range, они хранят только начало и конец
    # диапазона т.е 14*2 байт. Также используется список, его размер зависит от входного параметра и равен размер*10,
    # каждый элемент содержит  12-14 байт. Используемые переменные типа int - mx_frq,num,razmer,i,k,frq, т.е 6*14=84
    # Range 2*2*14 =56 Список list_num - 100+10*14=240
    # Общая память ~320(для 10), ~2000(для 100), 19000( для 1000)

    # Вывод По памяти ф-ия работает очень скромно, но страдает скорость выполнения