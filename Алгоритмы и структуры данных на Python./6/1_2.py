# Определить, какое число в массиве встречается чаще всего.
# С использованием результирующего списка

import random
import sys


def calc_mem(x, level=0):
    print('\t' * level, f'class={x.__class__} memory={sys.getsizeof(x)} val={x}')
    mem = 0
    mem += sys.getsizeof(x)
    if hasattr(x, '__iter__'):
        if hasattr(x, 'items'):
            for y, xx in enumerate(x):
                mem += calc_mem(y, level + 1) + calc_mem(x[xx], level + 1)
        elif not isinstance(x, str):
            for xx in x:
                mem += calc_mem(xx, level + 1)
    return mem


def frq_func_list(razmer=10):
    mem = 0
    list_num = [random.randint(0, razmer) for _ in range(1, razmer + 1)]
    mem += calc_mem(list_num)

    # Заполняем нулями массив с количеством повторениий, индекс будет числом
    list_res = [0 for _ in range(0, razmer + 1)]
    mem += calc_mem(list_res)
    for i, item in enumerate(list_num):
        list_res[item] += 1

    print(list_res)
    print('Общая посчитанная память=', mem)


if __name__ == '__main__':
    frq_func_list(razmer=1000)
    print(sys.version, sys.platform)
    # 3.7.4(tags /v3.7    .4: e09359112e, Jul    8    2019, 19: 29:22) [MSC v.1916 32 bit(Intel)]    win32
    # Используется два списка, размер второго избыточен
    # Память ~500(для 10), ~3500(для 100), ~35000(для 1000)
    # Вывод - зависимость раста памяти от входного размера списка линейная
