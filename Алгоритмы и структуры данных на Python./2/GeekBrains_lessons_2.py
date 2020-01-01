from pycallgraph import PyCallGraph
from pycallgraph.output import GraphvizOutput

graphviz = GraphvizOutput()
graphviz.output_file = 'lesson_2.png'


with PyCallGraph(output=graphviz):
	#1
	print("Задание 1")
	print("Ноль в качестве знака операции завершит работу программы")
	while True:
	    s = input("Знак (+,-,*,/): ")
	    if s == '0': break
	    if s in ('+','-','*','/'):
	        x = float(input("x="))
	        y = float(input("y="))
	        if s == '+':
	            print("%.2f" % (x+y))
	        elif s == '-':
	            print("%.2f" % (x-y))
	        elif s == '*':
	            print("%.2f" % (x*y))
	        elif s == '/':
	            if y != 0:
	                print("%.2f" % (x/y))
	            else:
	                print("Деление на ноль!")
	    else:
	        print("Неверный знак операции!")

#2
print("Задание 2")
n = int(input())
even=odd=0
while n>0:
    if n%2 == 0:
        even += 1
    else:
        odd += 1
    n = n//10
print("четных - %d, нечетных - %d" % (even, odd))

#3
print("Задание 3")
n = int(input())
m = 0
while n>0:
    m = m*10 + n%10
    n = n//10
print(m)

#4
print("Задание 4")
n = int(input())
e = 1
s = 0
for i in range(n):
    s += e
    e /= -2
print(s)

#5
print("Задание 5")
for i in range(32,128):
    print("%4d-%s" % (i,chr(i)), end='')
    if i%10 == 0:
        print()
 
print()

#6
print("Задание 6")
from random import random
n = round(random() * 100)
i = 1
print("Компьютер загадал число. Отгадайте его. У вас 10 попыток")
while i <= 10:
    u = int(input(str(i) + '-я попытка: '))
    if u > n:
        print('Много')
    elif u < n:
        print('Мало')
    else:
        print('Вы угадали с %d-й попытки' % i)
        break
    i += 1
else:
    print('Вы исчерпали 10 попыток. Было загадано', n)

#7
print("Задание 7")
n = int(input())
s = 0
for i in range(1,n+1):
    s += i
m = n * (n + 1) // 2
print(s)
print(m)



#8
print("Задание 8")
n = int(input("Сколько будет чисел? "))
d = int(input("Какую цифру считать? "))
count = 0
for i in range(1,n+1):
    m = int(input("Число " + str(i) + ": "))
    while m > 0:
        if m%10 == d:
            count += 1
        m = m // 10
 
print("Было введено %d цифр %d" % (count, d))


#9
print("Задание 9")
n = int(input())
max_s = 0
max_m = 0
while n != 0:
    m = n
    s = 0
    while n>0:
        s += n%10
        n //= 10
    if s > max_s:
        max_s = s
        max_m = m
    n = int(input())
print('Число',max_m,'имеет максимальную сумму цифр:', max_s)