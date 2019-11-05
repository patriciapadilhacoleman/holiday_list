
bob = Giftee.create(f_name:"Robert", l_name:"Cruz", budget:"100.00")

gift1 = Gift.create(giftee: bob, name:"sweater", description:"blue with stripes", price:25.99)
gift2 = Gift.create(giftee: bob, name: "socks", description:"black", price: 10.00)

