import 'package:flutter/material.dart';

class bottunnavigationristey extends StatefulWidget {
  bottunnavigationristey({Key? key}) : super(key: key);

  @override
  State<bottunnavigationristey> createState() => _bottunnavigationristeyState();
}

class _bottunnavigationristeyState extends State<bottunnavigationristey> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Rishtey.com',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text(
                "POPULAR CATEGORIES",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        focusColor: Colors.amber,
                        child: Icon(Icons.location_city),
                        backgroundColor: Colors.yellow,
                        elevation: 0,
                        foregroundColor: Colors.black,
                        splashColor: Colors.grey,
                        onPressed: () => {},
                      ),
                      Text(
                        "City/Country",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                        )
                      ]),
                ),
                Container(
                  height: 100,
                  width: 150,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        focusColor: Colors.amber,
                        child: Icon(Icons.brightness_3_rounded),
                        backgroundColor: Colors.redAccent,
                        elevation: 0,
                        foregroundColor: Colors.black,
                        splashColor: Colors.grey,
                        onPressed: () => {},
                      ),
                      Text(
                        "Religion",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                        )
                      ]),
                ),
                Container(
                  height: 100,
                  width: 150,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        focusColor: Colors.grey,
                        child: Icon(Icons.cases_outlined),
                        backgroundColor: Colors.lime,
                        elevation: 0,
                        foregroundColor: Colors.black,
                        splashColor: Colors.grey,
                        onPressed: () => {},
                      ),
                      Text(
                        "Profession",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                        )
                      ]),
                ),
                Container(
                  height: 100,
                  width: 150,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        focusColor: Colors.yellow,
                        child: Icon(Icons.people),
                        backgroundColor: Colors.yellow,
                        elevation: 0,
                        foregroundColor: Colors.white,
                        splashColor: Colors.grey,
                        onPressed: () => {},
                      ),
                      Text(
                        "Caste",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                        )
                      ]),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        focusColor: Colors.grey,
                        child: Icon(Icons.cases_outlined),
                        backgroundColor: Colors.lime,
                        elevation: 0,
                        foregroundColor: Colors.black,
                        splashColor: Colors.grey,
                        onPressed: () => {},
                      ),
                      Text(
                        "Profession",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                        )
                      ]),
                ),
                Container(
                  height: 100,
                  width: 150,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        focusColor: Colors.yellow,
                        child: Icon(Icons.people),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        foregroundColor: Colors.black,
                        splashColor: Colors.grey,
                        onPressed: () => {},
                      ),
                      Text(
                        "Caste",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                        )
                      ]),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
