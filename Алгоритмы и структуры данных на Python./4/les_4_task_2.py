import cProfile


def simple(Num):
    for i in range(1, Num):
        if i != 1 and i != Num and Num % i == 0:
            return False
    return True


def sieve1(Num):
    i = 2
    while Num:
        if simple(i):
            Num -= 1
        i = i + 1
    i = i - 1
    return i


def eratosthenes(Num):  # n - число, до которого хотим найти простые числа
    if Num == 1:
        return 2
    n = Num * Num
    sieve = [i for i in range(n)]
    sieve[1] = 0
    for i in range(2, n):
        if sieve[i] != 0:
            j = i * 2

            while j < n:
                sieve[j] = 0
                j = j + i
    result = [i for i in sieve if i != 0]
    return result[Num - 1]

# print(sieve1(4))
# print(simple(8))


# "les_4_task_1.sieve1(11)"
# 1000 loops, best of 5: 75.5 usec per loop
#
# "les_4_task_1.sieve1(100)"
# 1000 loops, best of 5: 8.94 msec per loop

#
# "les_4_task_2.eratosthenes(11)"
# 1000 loops, best of 5: 42.7 usec per loop

# "les_4_task_2.eratosthenes(100)"
# 1000 loops, best of 5: 4.78 msec per loop


# cProfile.run('sieve1(11)')
# 1    0.000    0.000    0.000    0.000 les_4_task_2.py:11(sieve1)
# 30    0.000    0.000    0.000    0.000 les_4_task_2.py:4(simple)

# cProfile.run('sieve1(100)')
# 1    0.000    0.000    0.004    0.004 les_4_task_2.py:11(sieve1)
# 540    0.004    0.000    0.004    0.000 les_4_task_2.py:4(simple)

# cProfile.run('sieve1(500)')
# 1    0.001    0.001    0.135    0.135 les_4_task_2.py:11(sieve1)
# 3570    0.134    0.000    0.134    0.000 les_4_task_2.py:4(simple)

# cProfile.run('eratosthenes(11)')
# 1    0.000    0.000    0.000    0.000 les_4_task_2.py:21(eratosthenes)

# cProfile.run('eratosthenes(100)')
# 1    0.006    0.006    0.006    0.006 les_4_task_2.py:21(eratosthenes)

# cProfile.run('eratosthenes(500)')
# 1    0.179    0.179    0.203    0.203 les_4_task_2.py:21(eratosthenes)


# Я использовал 2 типа решения:

# одна функция двигается до тех пор пока не найдет нужное по счету простое число,
# прибавляя i единицу, и проверяя данное i на простоту фторой функцией
#
# вторая функция использует для решения решето эратосфена, найдя все простые числа num**2, она выдает нужное по счету
# число

# Проведя тесты с помощью timeit и cprofile можно понять, что решения м помощью решета эратосфена, мало того,
# что в разы эфективней по времени работы программы, так и не использует рекурсию, что не вызовет переполнение стека
# вызова функции при работе сбольшыми числами. Одназначно данное решение оптимальней и лучше решения "в лоб"
