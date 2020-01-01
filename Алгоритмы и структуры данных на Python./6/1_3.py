# Определить, какое число в массиве встречается чаще всего.
# С использованием результирующего словаря

import random
import sys


def calc_mem(x, level=0):
    print('\t' * level, f'class={x.__class__} memory={sys.getsizeof(x)} val={x}')
    mem = 0
    mem += sys.getsizeof(x)
    if hasattr(x, '__iter__'):
        if hasattr(x, 'items'):
            for y, xx in enumerate(x):
                mem +=calc_mem(y, level + 1) +  calc_mem(x[xx], level + 1)
        elif not isinstance(x, str):
            for xx in x:
                mem += calc_mem(xx, level + 1)
    return mem

def frq_func_dict(razmer=10):
    list_num = [random.randint(0, razmer) for _ in range(1, razmer + 1)]
    mem = 0
    mem += calc_mem(list_num)

    diction = {}
    for item in list_num:
        if item in diction.keys():
            diction[item] += 1
        else:
            diction[item] = 1
    mem += calc_mem(diction)

    print(diction)
    print('Общая посчитанная память=', mem)


if __name__ == '__main__':
    print(sys.version, sys.platform)
    # 3.7.4(tags /v3.7    .4: e09359112e, Jul    8    2019, 19: 29:22) [MSC v.1916 32 bit(Intel)]    win32
    frq_func_dict(1000)
    #Результаты 700(для 10) 5000(100) 50000(1000)
    # Вывод - зависимость раста памяти от входного размера списка линейная
    # Но вариант с list показал себя лучше, тк dict занимает больше места в памяти.