#N=int(input("Введите N:"))
#L=len(str(N*N))+2
#for i in range(1,N+1):
    #for j in range(1,N+1):
        #print(f"{i*j:{L}d}",end="")
        #print(\n)

#a = int(input("Введите число a: "))
#
#print("\nТаблица умножения:\n")
#
#for a in range(1, a + 1):
#    for j in range(1, a + 1):
#        print(f'{a * j}', end=' ')
#    print()

#N = int(input("Введите число N: "))
#
#    # Выводим заголовок
#print("\nТаблица умножения:\n")
#
#    # Используем вложенные циклы для создания таблицы умножения
#for i in range(1, N + 1):
#    for j in range(1, N + 1):
#            # Выводим произведение чисел i и j с выравниванием по ширине для красоты
#        print(f"{i * j:4}", end=' ')
#        # Переход на новую строку после каждой строки таблицы
#    print()

#N = int(input("Введите число N: "))
#
## Выводим заголовок
#print("\nТаблица умножения:\n")
#
## Используем вложенные циклы для создания таблицы умножения
#for i in range(1, N + 1):
#    for j in range(1, N + 1):
#        # Выводим произведение чисел i и j с выравниванием по ширине для красоты
#        print(f"{i * j:4}", end=' ')
#    # Переход на новую строку после каждой строки таблицы
#    print()

# Запрашиваем у пользователя ввод двух списков одинаковой длины
#list1 = input("Введите первый список через пробел: ").split()
#list2 = input("Введите второй список через пробел: ").split()

# Проверяем, что длины списков одинаковы
#if len(list1) != len(list2):
   # print("Ошибка: списки должны быть одинаковой длины.")
#else:
    # Используем функцию zip() для создания пар элементов
    #paired_list = list(zip(list1, list2))

    # Выводим результат
    #print("\nНовый список с парами элементов:")
    #print(paired_list)


    # Функция для вычисления суммы и произведения двух чисел

#def sum_and_product(a, b):
     ##return (a + b, a * b)


    # Запрашиваем у пользователя ввод двух чисел
#num1 = float(input("Введите первое число: "))
#num2 = float(input("Введите второе число: "))

    # Вычисляем сумму и произведение
#result = sum_and_product(num1, num2)

    # Выводим результат
#print("\nСумма и произведение чисел:")
#print(f"Сумма: {result[0]}, Произведение: {result[1]}")


def calculate_stats(numbers):
    total_sum = sum(numbers)
    min_value = min(numbers)
    max_value = max(numbers)
    return total_sum, min_value, max_value

# Запрашиваем у пользователя ввод списка чисел через пробел
input_numbers = input("Введите список чисел через пробел: ").split()

# Преобразуем введенные строки в целые числа
numbers = [float(num) for num in input_numbers]

# Вычисляем сумму, минимальное и максимальное значения
result = calculate_stats(numbers)

# Выводим результат
print("\nРезультаты обработки списка чисел:")
print(f"Сумма: {result[0]}, Минимальное значение: {result[1]}, "f"Максимальное значение: {result[2]}")