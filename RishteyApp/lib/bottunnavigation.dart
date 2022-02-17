import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Userproposal.dart';

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
      body: Container(
        child: Card(
          child: Column(
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
                    buttonscrol(Icons.school, Colors.yellow, "Education"),
                    buttonscrol(Icons.cases_rounded, Colors.red, "Profession"),
                    buttonscrol(Icons.people, Colors.green, "Caste"),
                    buttonscrol(
                        Icons.location_city, Colors.blueGrey, "City/Country"),
                    buttonscrol(Icons.list, Colors.teal, "Religion"),
                    buttonscrol(Icons.list, Colors.teal, "Browse All"),
                  ],
                ),
              ),
              Container(
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200.withOpacity(0.9),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: const Center(
                          child: Text(
                        "Success Stories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200.withOpacity(0.4)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Text(
                        "Active Users",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.shade200.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Text(
                        "Packages",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: const Center(
                          child: Text(
                        "About us",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.shade200.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Top Suggestions for You"),
              const SizedBox(
                height: 20,
              ),
              userproposal(),
            ],
          ),
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
            icon: Icon(Icons.wysiwyg),
            label: 'Proposal',
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

  Widget buttonscrol(IconData next, MaterialColor clr, String s) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 80,
          ),
          FloatingActionButton(
            child: Icon(next),
            backgroundColor: clr.shade500,
            foregroundColor: Colors.black,
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            s,
          ),
        ],
      );
}
