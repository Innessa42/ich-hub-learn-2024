# . Напишите программу, которая запрашивает у пользователя целое число и определяет, является ли оно палиндромом.
# Число является палиндромом, если оно читается одинаково слева направо и справа налево.
# Выведите соответствующее сообщение на экран с помощью команды print.
# Используйте математические операции. Работу со строками использовать нельзя.
#  Пример вывода:
#  Введите целое число: 12321
# исло является палиндромом.
#
# 2. Напишите программу, которая запрашивает у пользователя целое число и проверяет, является ли оно числом Армстронга.
# Число Армстронга - это число, которое равно сумме своих цифр, возведенных в степень, равную количеству цифр в числе.
# Выведите соответствующее сообщение на экран с помощью команды print.
# Пример вывода:
# Введите целое число: 153
# Число является числом Армстронга.



numm = int(input('Введите целое число:'))
temp = numm
len_numm = len(str(numm))
armstrong = 0
dig = 0
while temp > 0:
    dig = temp % 10;  #0 = 153 % 10
    armstrong += dig ** len_numm
    temp = temp // 10
if armstrong == numm:
    print('Число является числом Армстронга.')
else:
    print('Число не является числом Армстронга.')

# number = int(input("Введите целое число:"))
# tmp = number
# revers_number = 0
# while tmp > 0:
#     dig = tmp % 10
#     revers_number = revers_number * 10 + dig
#     tmp = tmp // 10
# if number == revers_number:
#     print(f"Число является палиндромо")
# else:
#     print(f"cislo  ne polindrom")

# num = int(input('Введите целое число: '))
# temp = num
# reverse_num = 0
# while temp > 0:
#     digit = temp % 10
#     reverse_num = reverse_num * 10 + digit
#     temp = temp // 10
# if num == reverse_num:
#     print(f'Число {num} является палиндромом.')
# else:
#     print(f'Число {num} не является палиндромом.')
