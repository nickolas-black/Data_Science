"""3. Массив размером 2m + 1, где m — натуральное число, заполнен случайным образом. Найдите в массиве медиану.
Медианой называется элемент ряда, делящий его на две равные части: в одной находятся элементы,
которые не меньше медианы, в другой — не больше медианы."""

import random
m = 10
array = [random.randint(0, 100) for i in range(2*m+1)]
print(array)

#Пирамидальной сортировка
# Процедура преобразования в двоичную кучу
def heap(array, n, i):
    largest = i
    l = 2 * i + 1
    r = 2 * i + 2

    if l < n and array[i] < array[l]:
        largest = l
    if r < n and array[largest] < array[r]:
        largest = r
    if largest != i:
        array[i], array[largest] = array[largest], array[i]
        heap(array, n, largest)

# Функция для сортировки массива заданного размера
def heap_sort(array):
    n = len(array)
    for i in range(n, -1, -1):
        heap(array, n, i)

    for i in range(n-1, 0, -1):
        array[i], array[0] = array[0], array[i]
        heap(array, i, 0)



heap_sort(array)

print(f'медиана равна = {array[m]}')

array.sort() #проверка правильности расчета медианы
print(array)




