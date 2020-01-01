#Написать программу, которая будет складывать, вычитать, умножать или делить два числа.
#Числа и знак операции вводятся пользователем. После выполнения вычисления программа не завершается, а запрашивает новые данные для вычислений.
#Завершение программы должно выполняться при вводе символа '0' в качестве знака операции.
#Если пользователь вводит неверный знак (не '0', '+', '-', '', '/'), программа должна сообщать об ошибке и снова запрашивать знак операции.
#Также она должна сообщать пользователю о невозможности деления на ноль, если он ввел его в качестве делителя.


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