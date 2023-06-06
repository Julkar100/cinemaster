import 'package:flutter/material.dart';
import 'searchbar.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          actions: [
            IconButton(
                onPressed: () {

                },
                icon: Image(image: AssetImage('assets/icons/notification.png'),height: 20,color: Colors.white,)),
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearchDelegate());
                },
                icon: Image(image: AssetImage('assets/icons/search2.png'),height: 20,color: Colors.white,)),
          ],
          backgroundColor: Color(0xff25373d),
        ),
        body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/face.png')),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Center(
                    child: Text( "250 USD",
                      style: TextStyle(
                          color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.80, //80% of width,
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.face),
                          title: Text('Rahul Barmon'),
                        ),
                        Divider(
                          height: 0.3,
                          color: Colors.black87,
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text("+8801743002999"),
                        ),
                        Divider(
                          height: 0.6,
                          color: Colors.black87,
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text("rahulbarmon555@gmail.com"),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_city),
                          title: Text('+Habiganj-3300, Sylhet, Bangladesh'),
                        ),
                        Divider(
                          height: 0.6,
                          color: Colors.black87,
                        ),
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("+Logout"),
                          onTap: (){
                          },
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
              ],
            )),


      ),
      );
  }
}