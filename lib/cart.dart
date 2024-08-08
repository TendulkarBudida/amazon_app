import 'package:amazon_app/home.dart';
import 'package:flutter/material.dart';
import 'you.dart';
import 'main.dart';

class ACCart extends StatefulWidget {
  const ACCart({Key? key}) : super(key: key);

  @override
  State<ACCart> createState() => _ACCartState();
}

class _ACCartState extends State<ACCart> {

  double spacing = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          getRow1(),
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset('images/cart.jpg', width: 200),
                const SizedBox(height: 25),
                acContainer(350, TextAlign.center, 25, Colors.black, 'Your Amazon Cart is empty'),
                const SizedBox(height: 5),
                acContainer(350, TextAlign.center, 15, Colors.blueAccent, "Shop today's deals"),
                const SizedBox(height: 25),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        debugPrint('Pressed - Sign in - Button');
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent, foregroundColor: Colors.black),
                      child: const Center(
                        child: Text('Sign in', style: TextStyle(fontSize: 17),),
                      )
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        debugPrint('Pressed - Create Account - Button');
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, foregroundColor: Colors.black),
                      child: const Center(
                        child: Text('Create Account', style: TextStyle(fontSize: 17),),
                      )
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Customers who bought items in your Recent History also bought',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GridView.count(
                    padding: EdgeInsets.all(spacing),
                    mainAxisSpacing: spacing,
                    crossAxisSpacing: spacing,
                    crossAxisCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    //scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      getGridImageBottomText('Watch\nRs.89999', 'r8_i1.jpg'),
                      getGridImageBottomText('Mouse\nRs.699', 'r8_i2.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  debugPrint('Pressed - Continue Shopping - Button');
                  //_MyHomePageState.doIt();aa
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent, foregroundColor: Colors.black),
                child: const Center(
                  child: Text('Continue Shopping', style: TextStyle(fontSize: 17),),
                )
            ),
          )
        ],
      ),
    );
  }
}

Widget getGridImageBottomText(String text, String image) {
  return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: getImageOnly(image),
          ),
        ),
        Text(text, textAlign: TextAlign.left,),
      ]
  );
}
