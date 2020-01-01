import random


# сортировка выбором
def selection_sort(orig_list):
    for i in range(len(orig_list)):
        idx_min = i
        for j in range(i+1, len(orig_list)):
            if orig_list[j] < orig_list[idx_min]:
                idx_min = j

        tmp = orig_list[idx_min]
        orig_list[idx_min] = orig_list[i]
        orig_list[i] = tmp

    return orig_list


# сортировка вставками
def insertion_sort(orig_list):
    for i in range(len(orig_list)):
        v = orig_list[i]
        j = i

        while (orig_list[j-1] > v) and (j > 0):

            orig_list[j] = orig_list[j-1]
            j = j - 1

        orig_list[j] = v
    return orig_list


# сортировка пузырьком
def bubble_sort(orig_list, asc=True):
    n = 1
    swapped = True

    if asc:
        while n < len(orig_list):
            if swapped:
                swapped = False
                for i in range(len(orig_list) - n):
                    if orig_list[i] > orig_list[i + 1]:
                        orig_list[i], orig_list[i + 1] = orig_list[i + 1], orig_list[i]
                        swapped = True
            n += 1
    else:
        while n < len(orig_list):
            if swapped:
                swapped = False
                for i in range(len(orig_list) - n):
                    if orig_list[i] < orig_list[i + 1]:
                        orig_list[i], orig_list[i + 1] = orig_list[i + 1], orig_list[i]
                        swapped = True
            n += 1

    return orig_list


# быстрая сортировка
def quick_sort(orig_list):
    if len(orig_list) <= 1:
        return orig_list
    else:
        q = random.choice(orig_list)
        L = []
        M = []
        R = []
        for elem in orig_list:
            if elem < q:
                L.append(elem)
            elif elem > q:
                R.append(elem)
            else:
                M.append(elem)
        return quick_sort(L) + M + quick_sort(R)


# Merge Sort - сортировка слиянием
# overall time complexity is O(n * log(n))
def merge_sort(orig_list):
    if len(orig_list) > 1:
        center = len(orig_list) // 2
        left = orig_list[:center]
        right = orig_list[center:]

        merge_sort(left)
        merge_sort(right)

        # перестали делить
        # выполняем слияние
        i, j, k = 0, 0, 0

        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                orig_list[k] = left[i]
                i += 1
            else:
                orig_list[k] = right[j]
                j += 1
            k += 1

        while i < len(left):
            orig_list[k] = left[i]
            i += 1
            k += 1

        while j < len(right):
            orig_list[k] = right[j]
            j += 1
            k += 1
        return orig_list


# Шейкерная сортировка
'''
разновидность пузырьковой сортировки.
Отличается тем, что просмотры элементов выполняются
один за другим в противоположных направлениях,
при этом большие элементы стремятся к концу массива,
а маленькие - к началу.
'''


def cocktail_sort(orig_list):
    left = 0
    right = len(orig_list) - 1
    while left <= right:
        for i in range(left, right):
            if orig_list[i] > orig_list[i+1]:
                orig_list[i], orig_list[i+1] = orig_list[i+1], orig_list[i]
        right -= 1
        for i in range(right, left, -1):
            if orig_list[i-1] > orig_list[i]:
                orig_list[i], orig_list[i-1] = orig_list[i-1], orig_list[i]
        left += 1
    return orig_list


# сортировка Шейла
def shell_sort(a):
    def new_increment(a):
        i = int(len(a) / 2)
        yield i
        while i != 1:
            if i == 2:
                i = 1
            else:
                i = int(round(i / 2.2))
            yield i

    for increment in new_increment(a):
        for i in range(increment, len(a)):
            for j in range(i, increment - 1, -increment):
                if a[j - increment] < a[j]:
                    break
                a[j], a[j - increment] = a[j - increment], a[j]
    return a