#print("1" + 2)
#a=8
#b=4
#print((a + b) /2 + abs(a - b)/2)

#def decorator(funk):
    #def wrapper():
        #start_time = time.time()
        #funk()
        #def_time = time.time() - start_time
        #print(def_time) # nu este gata

       # return wrapper()
@decorator
 def def_test():
        for i in range(100):
            print(i)
def_test()
@validate_args(int, str)

def greet(age, name):

    print(f"Привет, {name}! Тебе {age} лет.")


greet(25, "Анна")  # Все аргументы имеют правильные типы


greet("25", "Анна")  # Возникнет исключение TypeError

