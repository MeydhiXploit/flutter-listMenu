import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DeveloperKampus Tutorial'),
        ),
        body: const Center(
          child: Text(
            "Selamat datang di DeveloperKampus Tutorial!!",
            style: TextStyle(color: Colors.black, fontSize: 40.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0, child: const Icon(Icons.add), onPressed: () {}),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Developer Kampus tutorial",
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              ListTile(
                title: Text('Item 1'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text('Item 2'),
                leading: Icon(Icons.mail),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Search", icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: "Profile", icon: Icon(Icons.account_circle)),
            ],
            onTap: (int indexOfItem) {}),
      ),
    );
  }
}
