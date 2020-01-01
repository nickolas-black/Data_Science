# 2. Написать программу сложения и умножения двух шестнадцатеричных чисел.
# При этом каждое число представляется как массив, элементы которого — цифры числа.
# Например, пользователь ввёл A2 и C4F. Нужно сохранить их как [‘A’, ‘2’] и [‘C’, ‘4’, ‘F’] соответственно.
# Сумма чисел из примера: [‘C’, ‘F’, ‘1’], произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].

"""
2. Написать программу сложения и умножения двух шестнадцатеричных чисел.
При этом каждое число представляется как массив, элементы которого это цифры
числа. Например, пользователь ввёл A2 и C4F. Сохранить их как [‘A’, ‘2’] и
[‘C’, ‘4’, ‘F’] соответственно. Сумма чисел из примера: [‘C’, ‘F’, ‘1’],
произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].
"""

import collections
from functools import reduce


def task_section(task):
    print(f'\n{"":-^10} №{task} {"":-^10}')



num_1 = 'A2'
num_2 = 'C4F'

num_1, num_2 = list(num_1), list(num_2)
print(num_1)
print(num_2)

# deq_1 = collections.deque(num_1)
# deq_2 = collections.deque(num_2)
#
# print(deq_1)
# print(deq_2)


class Hexadecimal:
    def __init__(self, num_lst):
        self._hex_codes = '0123456789ABCDEF'
        self.dec_num = reduce(lambda x, y: x * 16 + (self._hex_codes.find(y)), num_lst, 0)

    def __add__(self, other):
        self.sum = self.dec_num + other.dec_num
        self.sum = self._convert_hex(self.sum)

    def __mul__(self, other):
        self.mult = self.dec_num * other.dec_num
        self.mult = self._convert_hex(self.mult)

    def _convert_hex(self, number_dec):
        hex_num = ''
        s = number_dec
        while True:
            chas = s // 16
            ost = s % 16
            str_ost = self._hex_codes[ost]
            hex_num = str_ost + hex_num

            if chas <= 16:
                str_chas = self._hex_codes[chas]
                return str_chas + hex_num
            s = chas


num_1 = Hexadecimal(num_1)
num_2 = Hexadecimal(num_2)

num_1 + num_2
num_1 * num_2

print(list(num_1.sum))
print(list(num_1.mult))


#  Вариант №2
print()
num_1 = 'A2'
num_2 = 'C4F'

num_1, num_2 = list(num_1), list(num_2)
print(num_1)
print(num_2)

lst_convert_hex_int = [int(''.join(i), 16) for i in [num_1, num_2]]
sum_ = sum(lst_convert_hex_int)
mult = reduce(lambda x, y:  x * y, lst_convert_hex_int)

hex_sum = list(hex(sum_).upper()[2:])
hex_mult = list(hex(mult).upper()[2:])

print(hex_sum)
print(hex_mult)


______________________________



from collections import deque

words = deque('0123456789abcdef')

def from16to10(string):
    global words
    d = deque(string)
    d.reverse()
    s = 0
    item = 0
    for i in d:
        s += words.index(i)*(16**item)
        item += 1
    return s


def from10to16(s):
    global words
    lit = ''
    item = 0
    while s > 0:
        lit += words[s % 16]
        s = s // 16
    lit = deque(lit)
    lit.reverse()
    return lit


inp1 = input("Введите шестнадцатричное число 1")
inp2 = input("Введите шестнадцатричное число 2")

print(f'Введено шестнадцатричное число {list(inp1)}')
print(f'Введено шестнадцатричное число {list(inp2)}')

inp1 = from16to10(inp1)
inp2 = from16to10(inp2)

res = inp1 + inp2
print(f'Результат сложения {from10to16(res)}')
res = inp1 * inp2
print(f'Результат умножения {from10to16(res)}')
