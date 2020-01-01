"""
1. Определение количества различных подстрок с использованием хэш-функции.
Пусть дана строка S длиной N, состоящая только из маленьких латинских букв.
Требуется найти количество различных подстрок в этой строке.
"""


import hashlib

# вариант 1


s = input("Введите строку из маленьких латинских букв: ")
N = len(s)
r = set()

for i in range(N):
    if i == 0:
        N = len(s) - 1
    else:
        N = len(s)
    for j in range(N, i, -1):
        print(s[i:j])
        r.add(hashlib.sha1(s[i:j].encode('utf-8')).hexdigest())
print(r)

print(f"Количество различных подстрок в строке '{s}' равно {len(r)}")


# вариант 2

def count_subs(string):
    result = set()

    for i in range(1, len(string)):
        for j in range(len(string) - i + 1):
            h = hash(string[j:i+j])
            result.add(h)
            # print(string[j:i+j])

    return len(result)


s2 = input('Введите строку: ')
print(f'В данной строке {count_subs(s2)} различных подстрок')