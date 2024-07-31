#def add(a:str,b:int)->str:
    #return a * b
#print(add("test", 2))

#def lift_str(a:list[str])-> str:
#return max(a, key = lambda s:len(s))
#print(list_str(['hello', 'mama', 'mia']))

#def list_str(a: list[str]) -> str:
   #return max(a, key=lambda s: len(s))


#print(list_str(['hello', 'mamanja', 'mia']))
#Напишите функцию, которая принимает список словарей и ключ,
# по которому нужно отсортировать список словарей.
#Функция должна быть аннотирована с помощью аннотаций типов.


def sort_list_of_dicts_by_key

    from operator import itemgetter
    from typing import Any

    dicts = [
        {'age': 15, 'name': 'Viktor'},
        {'age': 23, 'name': 'Tatiana'},
        {'age': 45, 'name': 'Olesya'},
    ]

    def sort_list_of_dicts_by_key(people: list[dict], key: Any) -> list[dict]:
        return sorted(people, key=itemgetter(key))

    print(sort_list_of_dicts_by_key(dicts, 'name'))
    print(sort_list_of_dicts_by_key(dicts, 'age'))

