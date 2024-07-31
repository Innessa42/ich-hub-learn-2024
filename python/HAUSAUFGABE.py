#1.print ("Python, Data&Database, Lynux, GermanY" )

#2.name = input("Vvedite vashe imea: ")
#age = input("Vvedite vasch vozrast: ")
#print("Privet", (name), "Tebe",(age), "let.")

#rad = float(input("Bitte Radius eingeben:" ))
#pi = 3.14
#radius = 2 * pi * rad
#PO = pi * rad ** 2
#print ( radius, PO)

#x1 = float(input("koordinat 1 :" ))
#x2 = float(input("koordinat 2 : "))
#y1 = float(input("koordinat 1 : "))
#y2 = float(input("koordinat 2 : "))
#distance = ((x2 -x1) ** 2 +(y2-y1) ** 2) ** 0.5
#print(distance)

#print("Определяем значения переменных")
#A = True
#B = False
#C = True
#D = False

#("Первая формула"): ¬((A ∨ B) ∧ (C ∨ D))
#formula1 = not ((A or B) and (C or D))


##print("Вторая формула"): (¬A ∧ ¬B) ∨ (¬C ∧ ¬D)
#print("Формула 1:", formula1)
#print("Формула 2:", formula2)
#print("Формулы эквивалентны:", formula1 == formula2)

#x =True
#y = False
#print( x == y )
#print( x != y )
#print( x or y )
#print( x and y )
#print( not x  )
#print ( not y)

#x = True
#y = False
#a = input("Bitte erste Zahl einfugen(True or False): ")
#y = input("Bitte erste Zahl einfugen(True or False): ")
#print(x == y)
#print( x != y )
#print( x or y )
#print( x and y )
#print( not x  )
#print ( not y )

#a = int(input("Введите первое число: "))
#b = int(input("Введите второе число: "))
#c = int(input("Введите третье число: "))
#if a <= b <= c:
   # print(f'числа в порядке возрастания: {a}, {b}, {c}')
#elif a <= c <= b:
    #print(f'числа в порядке возрастания: {a}, {c}, {b}')
#elif b <= a <= c:
    #print(f'числа в порядке возрастания: {b}, {a}, {c}')
#elif b <= c <=  a:
    ##print(f'числа в порядке возрастания: {b}, {c}, {a}')
#elif c <= a <= b:
    #print(f'числа в порядке возрастания: {c}, {a}, {b})')
#elif c <= b <= a:
    #print(f'числа в порядке возрастания: {c}, {b}, {a}')

#jahr = int(input("Bitte jahr eingeben:"))
#if (jahr %4==0 and jahr %100 !=0) or (jahr % 400 == 0):
    #print(f"God {jahr} является высокосным",)
#else:
    #print(f"God {jahr} является не высокосным",)

#import random
#random_number = random.randint ( 1, 100)
#print("угадать число от 1 до 100: " )
#while True:
    #number = int(input())
    #if number < random_number:
        #print("загаданное число больше, попробовать снова: ")
    #elif number > random_number:
        #print("загаданное число  меньше, попробовать снова: ")
    #else:
       # print(f"Поздровляем вы угадали число! " )

N = int(input("Введите натуральное число"))
fib1 = 0
fib2 = 1
count = 0
while count < N:
    if count == 0:
        print(fib1, end="")
    elif count == 1:
        print(",",fib2, end="")
    else:
        fib_next = fib1 + fib2
        print(",",fib_next, end="")
        fib1 = fib2
        fib2 = fib_next
    count += 1

#while N > 0 :
#   dvoich = **
#   dvoich = str(N % 2) + dvoich
#   N // 2
