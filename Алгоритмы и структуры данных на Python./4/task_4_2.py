#. Написать два алгоритма нахождения i-го по счёту простого числа.
# Функция нахождения простого числа должна принимать на вход натуральное
# и возвращать соответствующее простое число. Проанализировать скорость и
# сложность алгоритмов.

import timeit
import cProfile
import math

# без исполььзования множества
# def primes(n):
#     a = [0] * n
#     for i in range(n):
#         a[i] = i
#     a[1] = 0
#     m = 2
#     while m < n:
#         if a[m] != 0:
#             j = m * 2
#             while j < n:
#                 a[j] = 0
#                 j = j + m
#         m += 1
#     b = []
#     for i in a:
#         if a[i] != 0:
#             b.append(a[i])
#     del a
#     return b
#
# cProfile.run('primes(100)')

#результат cProfile

#     14
# 10 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:11(primes)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         6    0.000    0.000    0.000    0.000 {method 'append' of 'list' objects}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#       24
# 13 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:11(primes)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         9    0.000    0.000    0.000    0.000 {method 'append' of 'list' objects}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#       100
# 29 function calls in 0.000 seconds
#     Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:11(primes)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#        25    0.000    0.000    0.000    0.000 {method 'append' of 'list' objects}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#результат timeit
#10 loops, best of 5: 38 nsec per loop
#100 loops, best of 5: 25.6 nsec per loop
#500 loops, best of 5: 17.6 nsec per loop

# с использование множества
# def primes2(N):
#   """Возвращает все простые от 2 до N"""
#   sieve = set(range(2, N))
#   for i in range(2, int(math.sqrt(N))):
#     if i in sieve:
#       sieve -= set(range(2*i, N, i))
#   return sieve
# cProfile.run('primes2(100)')

#результат cProfile

#14
# 5 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:71(primes2)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {built-in method math.sqrt}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#24
#5 function calls in 0.000 seconds
# Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:71(primes2)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {built-in method math.sqrt}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#100
# 5 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:71(primes2)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {built-in method math.sqrt}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#результат timeit
#10 loops, best of 5: 39.1 nsec per loop
#100 loops, best of 5: 17.3 nsec per loop
#500 loops, best of 5: 15.5 nsec per loop

# def IsPrime(n):
#    d = 2
#    while d * d <= n and n % d != 0:
#        d += 1
#    return d * d > n
#
# cProfile.run('IsPrime(100)')

#результат cProfile
#14
# 4 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:117(IsPrime)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#24
# 4 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:117(IsPrime)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#100
# 4 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:117(IsPrime)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#результат timeit
#10 loops, best of 5: 41.7 nsec per loop
#100 loops, best of 5: 17.5 nsec per loop
#500 loops, best of 5: 15.5 nsec per loop

def IsPrime2(n):
   d = 2
   while n % d != 0:
       d += 1
   return d == n

cProfile.run('IsPrime2(100)')


#результат cProfile
#14
# 4 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:158(IsPrime2)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#24
# 4 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:158(IsPrime2)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

#100
# 4 function calls in 0.000 seconds
#    Ordered by: standard name
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 task_4_2.py:158(IsPrime2)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objec

#результат timeit
#10 loops, best of 5: 38.5 nsec per loop
#100 loops, best of 5: 17.4 nsec per loop
#500 loops, best of 5: 15.5 nsec per loop
