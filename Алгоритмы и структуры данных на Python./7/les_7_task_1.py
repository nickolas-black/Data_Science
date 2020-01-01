#1. Отсортируйте по убыванию методом пузырька одномерный целочисленный массив, 
#заданный случайными числами на промежутке [-100; 100). 
#Выведите на экран исходный и отсортированный массивы.

from random import random

# вариант 1
a = [0]*10
for i in range(10):
    a[i] = int(random()*100)
print(a)
 
for i in range(9):
    for j in range(9-i):
        if a[j] > a[j+1]:
            a[j], a[j+1] = a[j+1], a[j]
print(a)


#варинат 2

from random import randint
from timeit import timeit

MAX_SIZE = 100
NUMBER_EXECUTIONS = 10_000


def bubble_sort(array):
    for i in range(len(array) - 1, 0, -1):
        flag = True
        for n in range(i):
            if array[n] > array[n+1]:
                array[n], array[n+1] = array[n+1], array[n]
                flag = False

        if flag == True:
            break
    return array


def bubble_sort_no_smart(array):
    for i in range(len(array) - 1, 0, -1):
        for n in range(i):
            if array[n] > array[n+1]:
                array[n], array[n+1] = array[n+1], array[n]

    return array


numbers = [randint(-100, 100) for _ in range(MAX_SIZE)]
print(numbers)
print(bubble_sort(numbers))

time1 = timeit(f'bubble_sort({numbers})',
              setup='from __main__ import bubble_sort',
              number=NUMBER_EXECUTIONS)
time2 = timeit(f'bubble_sort_no_smart({numbers})',
              setup='from __main__ import bubble_sort_no_smart',
              number=NUMBER_EXECUTIONS)
print(time1)
print(time2)