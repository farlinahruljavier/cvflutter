import 'package:flutter/material.dart';
import 'package:flutter_application_2/about.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/profile.dart';
import 'package:flutter_application_2/riwayat.dart';
import 'package:flutter_application_2/skill.dart';
import 'my_drawer_header.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    ); //MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.profile;
  // final int i;

  // _HomePageState(this.i);
  // getPage(int indeks) {
  // //   switch (indeks) {
  // //     case 1:
  // //       return Dashboard();
  // //     case 2:
  // //       return Profile();
  // //     case 3:
  // //       return Skill();
  // //     case 4:
  // //       return Riwayat();
  // //     case 5:
  // //       return About();
  // //   }
  // }

  @override
  Widget build(BuildContext context) {
    var container;
    var judul;

    if (currentPage == DrawerSections.dashboard) {
      container = Dashboard();
      judul = "Dashboard";
    } else if (currentPage == DrawerSections.profile) {
      container = Profile();
      judul = "Profil";
    } else if (currentPage == DrawerSections.skill) {
      container = Skill();
      judul = "Skill";
    } else if (currentPage == DrawerSections.riwayat) {
      container = Riwayat();
      judul = "Riwayat Pendidikan";
    } else if (currentPage == DrawerSections.about) {
      container = About();
      judul = "Contact";
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text(judul),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
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
        // Show List Menu
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          Divider(),
          menuItem(2, "Profile", Icons.emoji_people_outlined,
              currentPage == DrawerSections.profile ? true : false),
          Divider(),
          menuItem(3, "Skill", Icons.emoji_objects_outlined,
              currentPage == DrawerSections.skill ? true : false),
          Divider(),
          menuItem(4, "Riwayat Sekolah", Icons.school_outlined,
              currentPage == DrawerSections.riwayat ? true : false),
          Divider(),
          menuItem(5, "About", Icons.perm_device_information_outlined,
              currentPage == DrawerSections.about ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[500] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.profile;
            } else if (id == 3) {
              currentPage = DrawerSections.skill;
            } else if (id == 4) {
              currentPage = DrawerSections.riwayat;
            } else if (id == 5) {
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
                flex: 3,
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

class PageState {
  int selectedIndeks;
}

enum DrawerSections {
  dashboard,
  profile,
  skill,
  riwayat,
  about,
}