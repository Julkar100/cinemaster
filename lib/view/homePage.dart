
import 'package:cinemaster/view/profile.dart';
import 'package:cinemaster/view/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'nowonCinema.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Cineporda',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: false,
        elevation: 2,
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Image(
                image: AssetImage('assets/icons/notification.png'),
                height: 20,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: Image(
                image: AssetImage('assets/icons/search2.png'),
                height: 20,
                color: Colors.white,
              )),
        ],
        backgroundColor: Color(0xff25373d),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff25373d),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Rahul Barman",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                "rahulbarmon555@gmail.com",
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
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover),
                shape: BoxShape.rectangle,
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage('assets/icons/profile.png'),
                height: 25,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.white,),

              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image(
                image: AssetImage('assets/icons/location.png'),
                height: 20,
                color: Colors.white,
              ),
              title: Text(
                'Location',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.white,),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25373d),
        child: Image(
          image: AssetImage('assets/icons/profile.png'),
          height: 30,
          color: Color(0xFFFFFFFF),
        ),
        onPressed: () {
          Get.to(Profile());
        },
      ),
      backgroundColor: Color(0xEEF6F6F6),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff25373d),
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/drawer.png'),
                height: 25,
                color: Color(0xFFFFFFFF),
              ),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/location.png'),
                height: 20,
                color: Color(0xFFFFFFFF),
              ),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 140.0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOutCubic,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 500),
              viewportFraction: 1,
            ),
            items: [
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/ca1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/ca2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/ca3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ], //Slider Container properties
          ),
          Expanded(
              child: ListView(
                children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Top Movie",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(NowOnCinema());
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 900,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie1.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie2.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie3.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie4.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie5.webp'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie6.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie7.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie8.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie9.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie10.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                    ],
                  ),
                ]),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Now On Cinema",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(NowOnCinema());
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w100),
                        ))
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 900,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie11.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie2.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie13.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie14.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie15.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie16.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie17.webp'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie18.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie19.png'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie20.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                    ],
                  ),
                ]),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Upcoming Movies ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(NowOnCinema());
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w100),
                        ))
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 900,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up07.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up01.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up02.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up03.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up04.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up05.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up06.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up08.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up09.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 100,
                            decoration:
                                BoxDecoration(shape: BoxShape.rectangle),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/up10.jpg'),
                                          fit: BoxFit.cover)),
                                ))),
                          )),
                    ],
                  ),
                ]),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
