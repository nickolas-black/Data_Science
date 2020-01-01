"""2. Отсортируйте по возрастанию методом слияния одномерный вещественный массив,
заданный случайными числами на промежутке [0; 50). Выведите на экран исходный и отсортированный массивы."""

import random
size = 20
array = [random.uniform(0, 50) for _ in range(size)]
print(array)

def sort_merge(array):

    n = 1
    while n < len(array):
        i = 0
        while i + n < len(array):
            sort_array_merge(i, n, n)
            i = i + n + n
        n = n + n
    return array

def sort_array_merge(i, j, n):

    if i + j < len(array):
        if n == 1:
            if array[i] > array[i + j]:
                array[i], array[i + j] = array[i + j], array[i]
        else:
            n = n // 2
            sort_array_merge(i, j, n)
            if i + j + n < len(array):
                sort_array_merge(i + n, j, n)
            sort_array_merge(i + n, j - n, n)
    return array

print(sort_merge(array))
