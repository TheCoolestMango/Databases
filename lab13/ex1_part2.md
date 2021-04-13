# Part 2

* a)
```
match (a:fighter)-[:beats]-(b:fighter) with a, b, count(a) as cnt where a.weight in ["155","185","170"] AND cnt>0 return a;
```

![image](https://user-images.githubusercontent.com/69856251/114513761-3623f480-9c43-11eb-8a62-5669e1b0ae41.png)

* b) 
