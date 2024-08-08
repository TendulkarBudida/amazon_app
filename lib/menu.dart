import 'package:flutter/material.dart';
import 'home.dart';

class ACMenu extends StatefulWidget {
  const ACMenu({Key? key}) : super(key: key);

  @override
  State<ACMenu> createState() => _ACMenuState();
}

class _ACMenuState extends State<ACMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          acMainContainer(),
          const SizedBox(height: 20,),
          GridView.count(
            mainAxisSpacing: spacing + 10,
            crossAxisSpacing: spacing + 10,
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              acMenuContainer('Prime', 'menu_1.jpg'),
              acMenuContainer('Deal and Savings', 'menu_2.jpg'),
              acMenuContainer('Mobiles & Electronic Devices', 'menu_3.jpg'),
              acMenuContainer('Fashion & Beauty', 'menu_4.jpg'),
              acMenuContainer('Groceries and Pet Supplies', 'menu_5.jpg'),
              acMenuContainer('Health & Personal Care', 'menu_6.jpg'),
              acMenuContainer('Home, Furniture & Appliances', 'menu_7.jpg'),
              acMenuContainer('Music, Video and Gaming', 'menu_8.jpg'),
              acMenuContainer('FunZone & Inspiration', 'menu_9.jpg'),
              acMenuContainer('Books and Education', 'menu_10.jpg'),
              acMenuContainer('Toys, Children and Baby', 'menu_11.jpg'),
              acMenuContainer('Payments and Bookings', 'menu_12.jpg'),
              acMenuContainer('Automotive', 'menu_13.jpg'),
              acMenuContainer('Office & Professional', 'menu_14.jpg'),
              acMenuContainer('Sports, Outdoor & Travel', 'menu_15.jpg'),
              acMenuContainer('Gifting', 'menu_16.jpg'),
              acMenuContainer('Sell on Amazon', 'menu_17.jpg'),
              acMenuContainer('Your Things', 'menu_18.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget acMainContainer() {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [BoxShadow(blurRadius: 5)],
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)),
                ),
                height: 75,
                width: 200,
                child: const Icon(Icons.paypal),
              ),
              const Text('Amazon Pay')
            ],
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)),
                ),
                height: 75,
                width: 200,
                child: const Icon(Icons.tv),
              ),
              const Text('Amazon miniTV'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget acMenuContainer(String name, String image) {
  return Container(
    padding: const EdgeInsets.all(1.73),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/${image}'),
        fit: BoxFit.scaleDown,
      ),
      boxShadow: [BoxShadow(blurRadius: 5)],
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Text(name),
  );
}