
import 'package:flutter/material.dart';
import 'home_row2.dart';

String url1 = 'https://m.media-amazon.com/images/I/61N16ybjOYL._AC_SX679_.jpg';
String url2 = 'https://m.media-amazon.com/images/I/61CGHv6kmWL.__AC_SX300_SY300_QL70_FMwebp_.jpg';

double spacing = 8.0;

class ACHome extends StatefulWidget {
  const ACHome({Key? key}) : super(key: key);

  @override
  State<ACHome> createState() => _ACHomeState();
}

class _ACHomeState extends State<ACHome> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.cyanAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView(
          //padding: const EdgeInsets.all(8),
          children: <Widget>[
            getRow1(),
            getRow2(context),
            getRow3(),
            getRow4(),
            getRow5(),
            getRow6(),
            getRow7(),
            getRow8(),
          ],
        )),
      ],
    );
  }
}

Widget getRow1() {
  return Container(
    height: 50,
    color: Colors.lightBlueAccent,
    child: Row(
      children: const [
        Icon(Icons.location_on_outlined),
        Text('Select a location to see product availability'),
        Icon(Icons.keyboard_arrow_down_outlined),
      ],
    ),
  );
}

Widget getRow2(BuildContext context) {

  return SizedBox(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        getImageBottomTextCopy('Mobiles', 'i1.jpg', context, () => MobilesPage()),
        getImageBottomTextCopy('Fresh', 'i2.jpg', context, () => FreshPage()),
        getImageBottomTextCopy('Fashion', 'i3.jpg', context, () => FashionPage()),
        getImageBottomTextCopy('Deals', 'i4.jpg', context, () => DealsPage()),
        getImageBottomTextCopy('MiniTV', 'i5.jpg', context, () => MiniTVPage()),
        getImageBottomTextCopy('Electronics', 'i6.jpg', context, () => ElectronicsPage()),
        getImageBottomTextCopy('Home', 'i7.jpg', context, () => HomePage()),
        getImageBottomTextCopy('Beauty', 'i8.jpg', context, () => BeautyPage()),
        getImageBottomTextCopy('Books, Toys', 'i9.jpg', context, () => BooksPage()),
        getImageBottomTextCopy('Appliances', 'i10.jpg', context, () => AppliancesPage()),
        getImageBottomTextCopy('Essentials', 'i11.jpg', context, () => EssentialsPage()),
      ],
    ),
  );
}

Widget getRow3() {
  return Container(
    //height: 50,a
    color: Colors.amber[600],
    child: Center(
        child: Image.asset('images/r3.jpg')),
  );
}

Widget getRow4() {

  return Container(
    height: 200,
    color: Colors.white,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 200, height: 200, child: getGridSmall()),
        getImageOnly('r4_i1.jpg'),
        getImageOnly('r4_i2.jpg'),
        getImageOnly('r4_i3.jpg'),
        getImageOnly('r4_i4.jpg'),
        getImageOnly('r4_i5.jpg'),
        getImageOnly('r4_i6.jpg'),
        getImageOnly('r4_i7.jpg'),
        getImageOnly('r4_i8.jpg'),
        getImageOnly('r4_i9.jpg'),
        getImageOnly('r4_i10.jpg'),
        getImageOnly('r4_i11.jpg'),
        getImageOnly('r4_i12.jpg'),
        getImageOnly('r4_i13.jpg'),
        getImageOnly('r4_i14.jpg'),
      ],
    ),
  );
}

Widget getRow5() {
  return SizedBox(
    child: Center(child: Image.asset('images/r5.jpg')),
  );
}

Widget getRow6() {
  return SizedBox(
    child: Center(child: Image.asset('images/r6.jpg')),
  );
}

Widget getRow7() {
  return SizedBox(
    child: Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'Recommended deals for you',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        Center(child: Image.asset('images/r7.jpg')),
        SizedBox(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              textAlign: TextAlign.left,
              'See all deals',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget getRow8() {
  double spacing = 8.0;

  return Container(
    color: Colors.grey,
    child: GridView.count(
      padding: EdgeInsets.all(spacing),
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      //scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        getGridImageBottomText('Watch\nRs.35998', 'r8_i1.jpg'),
        getGridImageBottomText('Mouse\nRs.499', 'r8_i2.jpg'),
        getGridImageBottomText('Sandals\nRs.999', 'r8_i3.jpg'),
        getGridImageBottomText('Keyboard\nRs.3499', 'r8_i4.jpg'),
        getGridImageBottomText('SanDisk Cruxer Blade\nRs.37', 'r8_i5.jpg'),
        getGridImageBottomText('Mobile Glass protector\nRs.289', 'r8_i6.jpg'),
        getGridImageBottomText('Marvel Comics\nRs.499', 'r8_i7.jpg'),
        getGridImageBottomText('Lotus Herbal White\nRs.295', 'r8_i8.jpg'),

      ],
    ),
  );
  /*Container(
    height: 50,
    color: Colors.amber[600],
    child: const Center(child: Text('Entry 8')),
  );*/
}

Widget getImageBottomTextCopy(String text, String image, BuildContext context, Widget Function() Page) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => Page()//{return const Page2();}
          )
        );
      },
      child: Column(
        children: [
          Expanded(child: Image.asset('images/$image')),
          Container(padding: const EdgeInsets.only(top: 0.5), child: Text(text)),
        ],
      ),
    )
  );
}

Widget getImageBottomText(String text, String image) {
  return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(child: Image.asset('images/$image')),
          Container(padding: const EdgeInsets.only(top: 0.5), child: Text(text)),
        ],
      ));
}

Widget getImageOnly(String image) {

  return Container(
      padding: EdgeInsets.only(right: spacing, top: spacing, bottom: spacing),
      child: Center(child: Image.asset('images/$image')));
}

Widget getGridSmall() {
  double spacing = 2.0;

  return GridView.count(
    shrinkWrap: true,
    padding: EdgeInsets.all(3 * spacing),
    mainAxisSpacing: spacing,
    crossAxisSpacing: spacing,
    crossAxisCount: 2,
    physics: const NeverScrollableScrollPhysics(),
    children: [
      getImageOnlySmall('pay.png'),
      getImageOnlySmall('send.png'),
      getImageOnlySmall('scan.png'),
      getImageOnlySmall('bills.png'),
    ],
  );
}

Widget getImageOnlySmall(String image) {
  double spacing = 2.0;

  return Container(
      padding: EdgeInsets.only(right: spacing, top: spacing, bottom: spacing),
      child: Center(child: Image.asset('images/$image')));
}

Widget getGridImageBottomText(String text, String imageURL) {
  return Column(children: [
    Expanded(
      child: Container(
        color: Colors.white,
        child: getImageOnly(imageURL),
      ),
    ),
    Text(text, textAlign: TextAlign.center,),
  ]);
}
