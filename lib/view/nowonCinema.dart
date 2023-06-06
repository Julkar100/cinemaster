import 'package:cinemaster/view/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NowOnCinema extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
          'Tranding',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: false,
        elevation: 2,
        actions: [
          IconButton(
              onPressed: () {},
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 6),
            InkWell(
              onTap: () {
                Get.to(CustomSearchDelegate());
              },
              child: Container(
                margin:  EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image(image: AssetImage('assets/images/movie1.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Ambulance',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                          //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image(image: AssetImage('assets/images/movie2.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Moonfall',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image(image: AssetImage('assets/images/movie3.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Turning Red',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image(image: AssetImage('assets/images/movie4.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'The Lost City',
                              maxLines: 2,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image(image: AssetImage('assets/images/movie5.webp'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Ambulance',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius:  BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image(image: AssetImage('assets/images/movie6.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Ram Seta',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius:  BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image(image: AssetImage('assets/images/movie7.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Scream',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius:  BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image(image: AssetImage('assets/images/movie8.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Yodha',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius:  BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image(image: AssetImage('assets/images/movie9.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Dora',
                              maxLines: 1,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'The Lost City Of Gold',
                              maxLines: 1,
                              style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width  +0,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xff25373d)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 14, 0, 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius:  BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image(image: AssetImage('assets/images/movie10.jpg'))
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Sing 2',
                              maxLines: 1,
                              style:TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white70),

                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            child: Image(image: AssetImage('assets/icons/rate.png')
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child:
                          TextButton(
                            child: Text('Buy Ticket',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black87,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          )
                        //     ))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),

          ],
        ),
      )
    ));
  }
}