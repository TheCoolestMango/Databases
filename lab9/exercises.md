# Week 11. Lab 9

1. ```db.restaurant.find({})```

2. ```db.restaurants.find({},{restaurant_id: 1, name:1, borough: 1, cuisine:1})```

3. ```db.restaurants.find({borough:'Bronx'}).limit(5)```

4. ```db.restaurant.find({ $or:[ {cuisine:{$nin: ['American', 'Chinese']} }, {name: /^(Wil)/} ] },{restaurant_id:1, name:1, borough:1, cuisine:1})```

5. ```db.restaurant.find({name: /(mon)/},{name:1, borough:1, longitude:1, attitude:1, cuisine:1})```

6. ```db.restaurant.find({ borough:{$in:[ "Staten Island", "Queens", "Bronx", "Brooklyn" ] } },{restaurant_id:1, name:1, borough:1, cuisine:1})```
