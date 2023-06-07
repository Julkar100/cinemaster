import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(
            backgroundColor: const Color(0xEEF6F6F6),
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text(
                    "Mohammod Julkarnayen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  accountEmail: Text(
                    "julonekarmakar@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/face.png"),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.rectangle,
                  ),
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/home.png'),
                    height: 20,
                  ),
                  title: Text(
                    'Home',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/profile.png'),
                    height: 25,
                  ),
                  title: Text(
                    'Profile',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/voucher.png'),
                    height: 20,
                  ),
                  title: Text(
                    'Voucher',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/location.png'),
                    height: 20,
                  ),
                  title: Text(
                    'Location',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/help.png'),
                    height: 20,
                  ),
                  title: Text(
                    'Help',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/about.png'),
                    height: 20,
                  ),
                  title: Text(
                    'About',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage('assets/icons/logout.png'),
                    height: 20,
                  ),
                  title: Text(
                    'Logout',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ));
  }
}
