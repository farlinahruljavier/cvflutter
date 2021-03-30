import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return TEST();
  }
}

class TEST extends StatefulWidget {
  @override
  _TESTState createState() => _TESTState();
}

class _TESTState extends State<TEST> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'General'),
    Tab(text: 'Contact'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: AppBar(
            backgroundColor: Colors.green[400],
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/riky.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Riky Adi Saputra",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Email'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Phone'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Facebook'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Skype'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Whatsapp'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text('Line'),
                  ),
                  Text('awdawdawd'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Email'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Phone'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Facebook'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Skype'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Whatsapp'),
                  ),
                  Text('awdawdawd'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text('Line'),
                  ),
                  Text('awdawdawd'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
