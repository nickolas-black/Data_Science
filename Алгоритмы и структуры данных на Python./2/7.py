#Написать программу, доказывающую или проверяющую, 
#что для множества натуральных чисел выполняется равенство:
#1+2+...+n = n(n+1)/2, где n — любое натуральное число.


n = int(input())
s = 0
for i in range(1,n+1):
    s += i
m = n * (n + 1) // 2
print(s)
print(m)
