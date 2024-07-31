from collections import OrderedDict
from functools import partial


#def lru_cache(capacity, cache, key, value):
    #if key in cache:
       # cache.pop(key)
    #elif len(cache) >= capacity:
        #cache.popitem(last=False)
   # cache[key] = value


#capacity = 3
#cache = OrderedDict()
#lru_cache_with_params = partial(lru_cache, capacity, cache)
#print(cache)
#lru_cache_with_params(1, 2)
#print(cache)
#lru_cache_with_params(2, 3)
#print(cache)
#lru_cache_with_params(3, 4)
#print(cache)
#lru_cache_with_params(4, 5)
#print(cache)
#lru_cache_with_params(2, 8)
#print(cache)

#from collections import defaultdict

#b = dict()
 #with open('readme.md', 'r', encoding='utf-8') as file:
   # file = file.read().split()
    #print(file)
    #for word in file:
        #if word not in b:
           # b[word] = 1
       #else:
            #b[word] += 1


#a = defaultdict(int)
#with open('readme.md', 'r', encoding='utf-8') as file:
    #file = file.read().split()
   # for word in file:
      #  a[word] += 1
#print(a)


from collections import defaultdict

fish_inventory = [("Sammy","shark","tank-a"),

                  ("Jamie","cuttlefish","tank-b"),
                  ("Mary"),"squid","tank-a"),]
tanks = defaultdict(list)
for fish in fish_inventory:
    tanks[fish[2]].append(fish[:2])
    print(tanks)
    print(tanks["tank-a"])
    print(tanks["tank-b"])
    print(tanks["tank-c"])



from collections import Counter


with open('readme.md', 'r', encoding='utf-8') as file:
    file = file.read().split()
    a = Counter(file + [' '] * (len(file) - 1))
    print(a)




my_class = ZeroDivisionError
while my_class:
    print(my_class.__name__, end=' -> ')
    try:
        my_class = my_class.__bases__[0]
    except:
        sys.exit()
