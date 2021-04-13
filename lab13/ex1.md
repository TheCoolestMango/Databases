# Part 1

``` 
create (p1:fighter{name:"Brandon Vera", weight: "205"}),
(p2:fighter{name:"Brock Lesnar", weight: "230"}),
(p3:fighter{name:"Daniel Cormier", weight: "205"}),
(p4:fighter{name:"Frank Mir", weight: "230"}),
(p5:fighter {name:"Jon Jones", weight: "205"}),
(p6:fighter {name:"Kelvin Gastelum", weight: "185"}),
(p7:fighter {name:"Khabib Nurmagomedov", weight: "155"}),
(p8:fighter {name:"Matt Hamill", weight: "185"}),
(p9:fighter {name:"Michael Bisping", weight: "185"}),
(p10:fighter {name:"Neil Magny", weight: "170"}),
(p11:fighter {name:"Rafael Dos Anjos", weight: "155"}),

(p7)-[:beats]->(p11),
(p11)-[:beats]->(p10),
(p5)-[:beats]->(p3),
(p9)-[:beats]->(p8), 
(p5)-[:beats]->(p1),
(p1)-[:beats]->(p4),
(p4)-[:beats]->(p2),
(p10)-[:beats]->(p6),
(p6)-[:beats]->(p9),
(p9)-[:beats]->(p8),
(p9)-[:beats]->(p6),
(p8)-[:beats]->(p5); 
```


![image](https://user-images.githubusercontent.com/69856251/114512587-ef81ca80-9c41-11eb-83b4-4012eb692e14.png)
