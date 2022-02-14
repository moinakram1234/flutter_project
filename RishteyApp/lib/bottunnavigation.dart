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
          style: TextStyle(color: Colors.white, shadows: [
            Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ]),
        ),
        leading: Icon(Icons.menu),
        //placing inbuilt icon on leading of appbar
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.contact_phone),
            tooltip: 'Contact',
            //using font awesome icon in action list of appbar
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.card_travel),

            //cart+ icon from FontAwesome
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            tooltip: 'User account',
            //cart+ icon from FontAwesome
          ),
        ],
      ), //set app bar
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text(
              "POPULAR CATEGORIES",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(offset: Offset(1.0, 1.0), color: Colors.grey)
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buttonscrol(),
                buttonscrol(),
                buttonscrol(),
                buttonscrol(),
                buttonscrol(),
                buttonscrol(),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
        ],
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

  Widget buttonscrol() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
          ),
          FloatingActionButton(
            focusColor: Colors.yellow,
            child: Icon(Icons.people),
            backgroundColor: Colors.cyan,
            elevation: 10,
            foregroundColor: Colors.black,
            splashColor: Colors.grey,
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Caste",
            style: TextStyle(fontWeight: FontWeight.bold, shadows: [
              Shadow(
                offset: Offset(3.0, 3.0),
                blurRadius: 3.0,
                color: Color.fromARGB(90, 0, 0, 0),
              )
            ]),
          ),
        ],
      );
}
