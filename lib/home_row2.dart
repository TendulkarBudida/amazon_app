import 'package:flutter/material.dart';

class MobilesPage extends StatefulWidget {
  const MobilesPage({Key? key}) : super(key: key);

  @override
  State<MobilesPage> createState() => _MobilesPageState();
}

class _MobilesPageState extends State<MobilesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.phone_android),
                text: "Mobiles",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.phone_android),
            ),
          ],
        ),
      ),
    );
  }
}

class FreshPage extends StatefulWidget {
  const FreshPage({Key? key}) : super(key: key);

  @override
  State<FreshPage> createState() => _FreshPageState();
}

class _FreshPageState extends State<FreshPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.family_restroom),
                text: "Fresh",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.family_restroom),
            ),
          ],
        ),
      ),
    );
  }
}

class FashionPage extends StatefulWidget {
  const FashionPage({Key? key}) : super(key: key);

  @override
  State<FashionPage> createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.accessibility_new),
                text: "Fashion",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.accessibility_new),
            ),
          ],
        ),
      ),
    );
  }
}

class DealsPage extends StatefulWidget {
  const DealsPage({Key? key}) : super(key: key);

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.contact_support_outlined),
                text: "Deals",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.contact_support_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class MiniTVPage extends StatefulWidget {
  const MiniTVPage({Key? key}) : super(key: key);

  @override
  State<MiniTVPage> createState() => _MiniTVPageState();
}

class _MiniTVPageState extends State<MiniTVPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.tv),
                text: "MiniTV",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.tv),
            ),
          ],
        ),
      ),
    );
  }
}

class ElectronicsPage extends StatefulWidget {
  const ElectronicsPage({Key? key}) : super(key: key);

  @override
  State<ElectronicsPage> createState() => _ElectronicsPageState();
}

class _ElectronicsPageState extends State<ElectronicsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.headphones),
                text: "Electronics",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.headphones),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}

class BeautyPage extends StatefulWidget {
  const BeautyPage({Key? key}) : super(key: key);

  @override
  State<BeautyPage> createState() => _BeautyPageState();
}

class _BeautyPageState extends State<BeautyPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.beach_access_outlined),
                text: "Beauty",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.beach_access_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.book_sharp),
                text: "Books, Toys",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.book_sharp),
            ),
          ],
        ),
      ),
    );
  }
}

class AppliancesPage extends StatefulWidget {
  const AppliancesPage({Key? key}) : super(key: key);

  @override
  State<AppliancesPage> createState() => _AppliancesPageState();
}

class _AppliancesPageState extends State<AppliancesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.refresh),
                text: "Appliances",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}

class EssentialsPage extends StatefulWidget {
  const EssentialsPage({Key? key}) : super(key: key);

  @override
  State<EssentialsPage> createState() => _EssentialsPageState();
}

class _EssentialsPageState extends State<EssentialsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.label_important_rounded),
                text: "Essentials",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.label_important_rounded),
            ),
          ],
        ),
      ),
    );
  }
}