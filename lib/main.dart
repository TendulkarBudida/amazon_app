import 'package:flutter/material.dart';
import 'home.dart';
import 'you.dart';
import 'more.dart';
import 'cart.dart';
import 'menu.dart';

int currentPageIndex = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> pages = const [
    ACHome(),
    ACYou(),
    ACMore(),
    ACCart(),
    ACMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    debugPrint('yes');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amazon'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: ACSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: currentPageIndex == 2 ? null : pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person_2_outlined), label: 'You'),
          NavigationDestination(icon: Icon(Icons.more_horiz_outlined), label: 'More'),
          NavigationDestination(icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.menu_outlined), label: 'Menu'),
        ],
        onDestinationSelected: (int index) {
          debugPrint(index.toString());
          setState(() {
            if (index == 2) {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), //for the round edges
                builder: (context) {
                  return SizedBox(
                    height: 200,
                    //specify height, so that it does not fill the entire screen
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('images/pay.jpg', width: 100,)),
                                const SizedBox(width: 100, child: Text('Pay Bills, Send Money & more', textAlign: TextAlign.center)),
                                const SizedBox(height: 30),
                              ],
                            )
                          )
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('images/miniTV.jpg', width: 100,)),
                                const SizedBox(width: 100, child: Text('Pay Bills, Send Money & more', textAlign: TextAlign.center)),
                                const SizedBox(height: 30),
                              ],
                            )
                          )
                        ),
                      ]
                    ) //what you want to have inside, I suggest using a column
                  );
                },
                context: context,
                isDismissible: true,//boolean if you want to be able to dismiss it
                isScrollControlled: true,//boolean if something does not display, try that
              );
            }
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
      ),
    );
  }

   void doIt() {
    setState(() {
      currentPageIndex = 0;
    });
  }
}

class Helper {

}

class ACSearchDelegate extends SearchDelegate {
  List<String> searchItems = [
    'Apple',
    'Banana',
    'Watermelon',
    'Strawberry',
    'Orange',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchItem = [];
    for (var fruit in searchItems) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchItem.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchItem.length,
      itemBuilder: (context, index) {
        var result = matchItem[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchItem = [];
    for (var fruit in searchItems) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchItem.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchItem.length,
      itemBuilder: (context, index) {
        var result = matchItem[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}