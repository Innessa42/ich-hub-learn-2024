# Написать программу, которая с помощью библиотеки requests будет проверять доступность сайта,
# адрес которого передан в аргументе.

import os
import sys

import requests

arg = sys.argv
if len(arg) < 2:
    print('You should setup file name for running in cmd line')
else:
    name_site_for_run = arg[1]

responce = requests.get(f'{name_site_for_run}')
if responce.status_code == 200:
    print('The website is avaible')
else:
    print('The website is not avaible')


    import requests


    def check_site_availability(url):
        try:
            response = requests.get(url)
            if response.status_code == 200:
                print(f"The site {url} is accessible.")
            else:
                print(f"The site {url} returned status code: {response.status_code}")
        except requests.ConnectionError:
            print(f"The site {url} is not accessible. Connection Error.")
        except requests.Timeout:
            print(f"The site {url} is not accessible. Timeout Error.")
        except requests.RequestException as e:
            print(f"The site {url} is not accessible. An error occurred: {e}")


    # Example usage
    if __name__ == "__main__":
        url = input("Enter the URL of the site you want to check: ")
        check_site_availability(url)



    import requests


    def get_activity(type, participants):
        url = "http://www.boredapi.com/api/activity/"
        params = {
            'type': type,
            'participants': participants
        }
        try:
            response = requests.get(url, params=params)
            response.raise_for_status()  # Проверка статуса ответа
            activity = response.json()

            if 'activity' in activity:
                print(f"Here's something you can do: {activity['activity']}")
                print(f"Type: {activity['type']}")
                print(f"Participants: {activity['participants']}")
                if 'price' in activity:
                    print(f"Price: {activity['price']}")
                if 'link' in activity:
                    print(f"Link: {activity['link']}")
            else:
                print("No activity found for the given criteria. Try different options.")
        except requests.RequestException as e:
            print(f"An error occurred: {e}")


    if __name__ == "__main__":
        type = input(
            "What type of activity are you interested in (e.g., education, recreational, social, diy, charity, cooking, relaxation, music, busywork)? ").strip().lower()
        participants = input("How many participants? ").strip()

        if participants.isdigit():
            participants = int(participants)
            get_activity(type, participants)
        else:
            print("Please enter a valid number for participants.")



#Написать программу, которая с помощью библиотеки requests будет проверять доступность сайта, адрес которого передан в аргументе.
#ChatGPT
#Конечно! Вот пример программы на Python, которая проверяет доступность сайта с использованием библиотеки requests.

#python
#Copy code
import requests

def check_site_availability(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            print(f"The site {url} is accessible.")
        else:
            print(f"The site {url} returned status code: {response.status_code}")
    except requests.ConnectionError:
        print(f"The site {url} is not accessible. Connection Error.")
    except requests.Timeout:
        print(f"The site {url} is not accessible. Timeout Error.")
    except requests.RequestException as e:
        print(f"The site {url} is not accessible. An error occurred: {e}")

# Example usage
if __name__ == "__main__":
    url = input("Enter the URL of the site you want to check: ")
    check_site_availability(url)
#Пояснение
#Импортируем библиотеку: Мы используем import requests для импорта библиотеки.
#Функция check_site_availability:
#Принимает URL в качестве аргумента.
#Пытается выполнить GET-запрос на указанный URL.
#Если код ответа равен 200, сайт доступен.
#Если код ответа отличается от 200, выводится соответствующее сообщение с кодом ответа.
#Если возникает ошибка соединения (ConnectionError), таймаут (Timeout), или другая ошибка запроса (RequestException), выводится соответствующее сообщение.
#Пример использования
#Программа запрашивает у пользователя URL и проверяет его доступность, вызывая функцию check_site_availability.
#Вы можете сохранить этот код в файл, например, check_site.py, и запустить его с помощью Python.

#Изучите API ресурса http://www.boredapi.com/
#Напишите программу, которая запрашивает у пользователя, чем он хотел бы заняться, и сколько всего будет участников, и с помощью изученного API предлагает вариант активности.
#200
#ChatGPT
#Чтобы написать программу, которая использует API ресурса http://www.boredapi.com/, необходимо сначала ознакомиться с документацией API. На основе полученной информации можно сделать запрос, учитывая интересы пользователя и количество участников.

#Вот пример программы, которая запрашивает у пользователя его предпочтения и количество участников, а затем использует Bored API для получения соответствующей активности:

#python
#Copy code
#import requests

def get_activity(type, participants):
    url = "http://www.boredapi.com/api/activity/"
    params = {
        'type': type,
        'participants': participants
    }
    try:
        response = requests.get(url, params=params)
        response.raise_for_status()  # Проверка статуса ответа
        activity = response.json()

        if 'activity' in activity:
            print(f"Here's something you can do: {activity['activity']}")
            print(f"Type: {activity['type']}")
            print(f"Participants: {activity['participants']}")
            if 'price' in activity:
                print(f"Price: {activity['price']}")
            if 'link' in activity:
                print(f"Link: {activity['link']}")
        else:
            print("No activity found for the given criteria. Try different options.")
    except requests.RequestException as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    type = input("What type of activity are you interested in (e.g., education, recreational, social, diy, charity, cooking, relaxation, music, busywork)? ").strip().lower()
    participants = input("How many participants? ").strip()

    if participants.isdigit():
        participants = int(participants)
        get_activity(type, participants)
    else:
        print("Please enter a valid number for participants.")
#Пояснение к программе
#Импорт библиотеки: Мы используем requests для выполнения HTTP-запросов.
#Функция get_activity:
#Принимает тип активности и количество участников в качестве аргументов.
#Формирует запрос к API с нужными параметрами.
#Если запрос успешен (код состояния 200), выводит информацию о предложенной активности.
#Если активность не найдена, выводит соответствующее сообщение.
#В случае ошибки запроса выводит сообщение об ошибке.
#Основная часть программы:
#Запрашивает у пользователя тип активности и количество участников.
#Проверяет, является ли введенное количество участников числом.
#Вызывает функцию get_activity с введенными параметрами.
#Эта программа запрашивает у пользователя предпочтения и количество участников,
# делает запрос к Bored API и выводит предложенную активность, подходящую под заданные параметры.









