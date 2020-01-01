# Проанализировать скорость и сложность одного любого алгоритма из разработанных в рамках домашнего задания первых трех уроков.
# Примечание. Идеальным решением будет:
# a. выбрать хорошую задачу, которую имеет смысл оценивать,
# b. написать 3 варианта кода (один у вас уже есть),
# c. проанализировать 3 варианта и выбрать оптимальный,
# d. результаты анализа вставить в виде комментариев в файл с кодом (не забудьте указать, для каких N вы проводили замеры),
# e. написать общий вывод: какой из трёх вариантов лучше и почему.


import random
import timeit
from random import random

# 1-й вариант
# N = 15
# arr = [0] * N
# for i in range(N):
#     arr[i] = int(random() * 100)
#     print(arr[i], end=' ')
# print()
# mn = min(arr)
# mx = max(arr)
# imn = arr.index(mn)
# imx = arr.index(mx)
# print('arr[%d]=%d arr[%d]=%d' % (imn + 1, mn, imx + 1, mx))
# arr[imn], arr[imx] = arr[imx], arr[imn]

# 2-й вариант
N = 15
arr = [0] * N
for i in range(N):
    arr[i] = int(random() * 100)
    print(arr[i], end=' ')
print()
mn = 0
mx = 0
for i in range(N):
    if arr[i] < arr[mn]:
        mn = i
    elif arr[i] > arr[mx]:
        mx = i
print('arr[%d]=%d arr[%d]=%d' % (mn + 1, arr[mn], mx + 1, arr[mx]))


# 3-й вариант
# size =10
# array = [random.randint(-100, 100) for _ in range(size)]
# print(array)
#
# min_3 = 0
# max_3 = 0
#
# for i in range(size):
#     if array[i] < array[min_3]:
#         min_3 = i
#     elif array[i] > array[max_3]:
#         max_3 = i
#
# print(f'Min = {array[min_3]} в ячейке {min_3} '
#       f'\nMax = {array[max_3]} в ячейке {max_3}')

#результат timeit

#вариант 1
#33 40 24 28 33 35 66 42 79 67 95 95 29 12 96
# arr[14]=12 arr[15]=96
# 10 loops, best of 5: 46.2 nsec per loop

# 78 57 32 46 71 47 22 49 47 68 53 44 9 87 72
# arr[13]=9 arr[14]=87
# 100 loops, best of 5: 22.9 nsec per loop

# 16 42 42 94 20 36 56 19 55 40 97 61 15 71 33
# arr[13]=15 arr[11]=97
# 200 loops, best of 5: 18.4 nsec per loop

#вариант 2
# 10 67 0 94 90 85 52 97 75 6 73 31 67 57 59
# arr[3]=0 arr[8]=97
# 10 loops, best of 5: 43.1 nsec per loop

# 94 34 79 91 8 25 59 59 65 7 44 7 2 46 1
# arr[15]=1 arr[1]=94
# 100 loops, best of 5: 19.2 nsec per loop

# 24 23 89 55 44 56 78 13 7 34 97 54 16 50 65
# arr[9]=7 arr[11]=97
# 200 loops, best of 5: 19.5 nsec per loop

#вариант 3
# [-62, 3, -1, 77, 16, -33, -29, -36, 14, -38]
# Min = -62 в ячейке 0
# Max = 77 в ячейке 3
# 10 loops, best of 5: 41.5 nsec per loop

# [-46, 28, -57, -85, -13, 34, -71, 81, 70, -64]
# Min = -85 в ячейке 3
# Max = 81 в ячейке 7
# 100 loops, best of 5: 23 nsec per loop

# [12, 2, -16, -20, 18, 81, 73, -9, -1, 9]
# Min = -20 в ячейке 3
# Max = 81 в ячейке 5
# 200 loops, best of 5: 20.8 nsec per loop

#ВЫВОД: лучшим на мой взгляд является второй вариант, так как у него скорость обработки выше и
# использование памяти меньше. а так же он прост в исполненнии и написании