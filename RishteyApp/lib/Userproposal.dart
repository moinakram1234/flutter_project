import 'package:flutter/material.dart';

class userproposal extends StatefulWidget {
  const userproposal() : super();

  @override
  _userproposalState createState() => _userproposalState();
}

class _userproposalState extends State<userproposal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          userdetails(),
          userdetails(),
          userdetails(),
          userdetails(),
          userdetails(),
          userdetails(),
        ],
      ),
    );
  }
}

class userdetails extends StatelessWidget {
  const userdetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 170,
          width: 320,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20))),
            elevation: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.school,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Master"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.cases_rounded,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Software Engineer"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.people),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Bhatti"),
                    SizedBox(
                      width: 10,
                    ),
                    //religion details
                    Icon(Icons.brightness_3_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Muslim"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_city,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Islamabad"),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    new GestureDetector(
                      onTap: () {},
                      child: new Text("Conract"),
                    ),
                    new GestureDetector(
                      onTap: () {},
                      child: new Text("Details"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
