from collections import deque

# def HexToDec(Arr, n):
#     x = 0
#     for i in range(n):
#         if Arr[i] == 'A':
#             x += 10 * 16 ** (n - (i + 1))
#         elif Arr[i] == 'B':
#             x += 11 * 16 ** (n - (i + 1))
#         elif Arr[i] == 'C':
#             x += 12 * 16 ** (n - (i + 1))
#         elif Arr[i] == 'D':
#             x += 13 * 16 ** (n - (i + 1))
#         elif Arr[i] == 'E':
#             x += 14 * 16 ** (n - (i + 1))
#         elif Arr[i] == 'F':
#             x += 15 * 16 ** (n - (i + 1))
#         else:
#             x += int(Arr[i]) * 16 ** (n - (i + 1))
#     return x
#
#
# def DecToHex(Num):
#     Arr = []
#     while Num > 0:
#         if Num % 16 == 10:
#             Arr.append('A')
#         elif Num % 16 == 11:
#             Arr.append('B')
#
#         Arr.append(Num % 16)
#         Num //= 16
#     return Arr[::-1]
#
#
# a16 = list(input())
# na = len(a16)
# a10 = HexToDec(a16, na)
#
# operation = input()
#
# b16 = list(input())
# nb = len(b16)
# b10 = HexToDec(b16, nb)
#
# if operation == '*':
#     ans = a10 * b10
# elif operation == '+':
#     ans = a10 + b10
#
# # print(ans)
# # print(DecToHex(ans))
temp = input("Введите число номер один: ")
Num1 = list(temp)
# Делаем копию числа и заменяем буквы A,B,C,D,E,F на цифры в десятичнной сичтеме(Для удобства)
a = deque()
for i in temp:
    if i.upper() == 'A':
        a.append(10)
    elif i.upper() == 'B':
        a.append(11)
    elif i.upper() == 'C':
        a.append(12)
    elif i.upper() == 'D':
        a.append(13)
    elif i.upper() == 'E':
        a.append(14)
    elif i.upper() == 'F':
        a.append(15)
    else:
        a.append(int(i))

operation = input("Введите операцию: ")
temp = input("Введите число номер два: ")
Num2 = list(temp)
# Делаем копию числа и заменяем буквы A,B,C,D,E,F на цифры в десятичнной сичтеме(Для удобства)
b = deque()
for i in temp:
    if i.upper() == 'A':
        b.append(10)
    elif i.upper() == 'B':
        b.append(11)
    elif i.upper() == 'C':
        b.append(12)
    elif i.upper() == 'D':
        b.append(13)
    elif i.upper() == 'E':
        b.append(14)
    elif i.upper() == 'F':
        b.append(15)
    else:
        b.append(int(i))
cf = 0
print(a)
print(b)
ans = deque()
if operation == '+':
    while a and b:
        x1 = a.pop()
        x2 = b.pop()
        num = x1 + x2 + cf
        ans.appendleft(num % 16)
        if num >= 16:
            cf = 1
        else:
            cf = 0
    if cf:
        ans.appendleft(cf)
elif operation == '*':
    tempArrAll = deque()
    tempArr = deque()
    for i in range(len(b)):
        cf = 0
        for j in range(len(a)):
            temp = (a[i] * a[len(a)-j - 1]) + cf
            cf = temp // 16
            temp = temp % 16
            tempArr.appendleft(temp)
        if cf:
            tempArr.appendleft(cf)
        tempArr = tempArr + deque([0]*(len(a)-i-1))
        tempArrAll.append(tempArr)
        tempArr = deque()
    print(tempArrAll)
    for i in range(len(tempArrAll)):
        if len(tempArrAll[i]) < len(tempArrAll[0]):
            tempArrAll[i] = deque([0] * (len(tempArrAll[0]) - len(tempArrAll[i]))) + tempArrAll[i]
    rank = []
    c = deque()
    print(tempArrAll)
    cf = 0
    for i in range(len(tempArrAll[0])):
        rank = []
        for j in tempArrAll:
            rank.append(j.pop())
        Sum = sum(rank) + cf
        if Sum >= 16:
            cf = Sum // 16
            Sum = Sum % 16
        else:
            cf = 0
        c.append(Sum)
    ans = []
# Возвращаем число у привычному виду
    for j in range(len(c)):
        i = c.pop()
        if i == 10:
            ans.append('A')
        elif i == 11:
            ans.append('B')
        elif i == 12:
            ans.append("C")
        elif i == 13:
            ans.append("D")
        elif i == 14:
            ans.append("E")
        elif i == 15:
            ans.append("F")
        else:
            ans.append(str(i))
    print(f"Первое число: {Num1}")
    print(f"Второе число: {Num2}")
    print(f"Ответ: {ans}")
