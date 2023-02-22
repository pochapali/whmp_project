import 'package:flutter/material.dart';
import 'about.dart';
import 'my_header_drawer.dart';
import 'home.dart';
import 'big_cat_face.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = MyHomePage();
    } else if (currentPage == DrawerSections.big_cat_face) {
      container = big_cat_face();
    } else if (currentPage == DrawerSections.about){
      container = about();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello there!"),
        backgroundColor: Colors.amberAccent,
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [MyHeaderDrawer(), MyDrawerList()],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, "Counter", Icons.dashboard_outlined,
              currentPage == DrawerSections.home ? true : false),
          menuItem(2, "Big cat face", Icons.catching_pokemon_outlined,
              currentPage == DrawerSections.big_cat_face ? true : false),
          menuItem(3, "About", Icons.info_outline,
              currentPage == DrawerSections.about ? true : false)
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey : Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.big_cat_face;
            } else if (id == 3) {
              currentPage = DrawerSections.about;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { home, big_cat_face, about }
