import 'package:flutter/material.dart';

class ACYou extends StatefulWidget {
  const ACYou({Key? key}) : super(key: key);

  @override
  State<ACYou> createState() => _ACYouState();
}

class _ACYouState extends State<ACYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amazon'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add)
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search)
          ),
        ],
      ),
      body: Container(
        //padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            acContainer(300, TextAlign.center, 27, Colors.black, 'Sign in for the best experience'),
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
            Row(
              children: [
                Image.asset('images/check.jpg', width: 90, height: 90,),
                const SizedBox(width: 10),
                acContainer(280, TextAlign.left, 20, Colors.black, 'Check order status and track, change or return items'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Image.asset('images/shop.jpg', width: 90, height: 90,),
                const SizedBox(width: 10),
                acContainer(280, TextAlign.left, 20, Colors.black, 'Shop past purchases and everyday essentials'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Image.asset('images/create.jpg', width: 90, height: 90,),
                const SizedBox(width: 10),
                acContainer(280, TextAlign.left, 20, Colors.black, 'Create lists with items you want, now or later'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget acContainer(double width, TextAlign alignment, double fontSize, Color color, String text) {
  return Center(
    child: Container(
      padding: const EdgeInsets.only(top: 0, right: 20, left: 20, bottom: 0),
      width: width,
      child: Text(
        text,
        textAlign: alignment,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    ),
  );
}