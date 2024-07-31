#a=The Moon And The Earht
#while a:
#a =  "mama mila ramu"
#print(a.replace(_old: "ma"))

#a = " Hello Andrey ! You are welcome to Belgrade !"
#b = a.split(" ")
#print(b)
#print(b[0])
#print(b[-1])
#template = "Hello *! You are welcome to ^!"
#name = input("Enter your name:")
#place = input("Enter the plase:")
#print(template.replace("*",name).replace("^",place))

#a = ["hello", "brave", "new", "world"]
#a = "hello"
#b = "world"
#b = "*".join([a, b, "gvhfj"])
#print(b)#

#a = "hello"
#print(a.ljust(10, "_"))
#print(a.rjust(10, "_"))
#print(a.center(10, "_"))
#b= "-----dsada---"
#print(b.strip())
#print(b.lstrip())
#print(b.rstrip())

#Напишите программу, которая считывает 5 чисел с клавиатуры и записывает их в текстовый файл
#def numbers():
 #   for i in range(5):
  #      number = int(input('Enter the number:'))
   #     with open('test,txt', 'a+') as file:
    #         file.write(str(number)+"\n")


#def numbers():
 #   for i in range(5):
  #      number = int(input('Enter the number: '))
   #     with open('test.txt', 'a+') as file:
    #        file.write(str(number)+'\n')
#numbers()

#Дано
#предложение из слов, разделенных пробелами. Написать функцию transform(),
#которая принимает такое предложение и возвращает аналогичное, но где все слова
#длины 3 в этом предложении - заглавными буквами. Пример: “The quick brown fox
#jumps over the lazy dog” -> “THE quick brown FOX jumps over THE lazy DOG”. Подсказка: решение в лоб может использовать цикл.
#def transform(line):
    #line = line.split()
    #print(line)
    #for i,word in enumerate(line):
        #if len(word) == 3:
            #line[i] = word.upper()
            #print(line)
            #print(''.join(line))

#transform('The quick brown fox jumps over the lazy dog')


#The quick brown fox
#jumps over the lazy dog” -> “THE quick brown FOX jumps over THE lazy DOG”. П

def transform(
       line,
        condition=lambda word: len(word) == 3,
        action=lambda word: word.upper()
):
    line = line.split()
    print(line)
    for i, word in enumerate(line):
        if condition(word):
            line[i] = action(word)
    print(line)
    print(' '.join(line))


transform(
    'The quick brown fox jumps over the lazy dog',
    condition=lambda word: len(word) > 3,
    action=lambda word: "*".join(list(word))
)




# Напишите программу, которая запрашивает у пользователя целое положительное число и проверяет, является ли оно простым.
#Простое число - это число, которое делится только на 1 и на само себя без остатка.
# Используйте цикл while и проверку деления числа на все числа от 2 до N-1 для решения задачи. Выведите соответствующее сообщение на экран с помощью команды print.
# Пример вывода:
# Введите целое положительное число: 17
# Число 17 является простым.
#
number





