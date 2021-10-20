import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/constant.dart';

void main() {
  runApp(const MusicStreamingApp());
}

class MusicStreamingApp extends StatelessWidget {
  const MusicStreamingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          bodyText2: TextStyle(
            color: Colors.teal,
            fontSize: 12,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.teal,
          size: 32,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.teal.shade100,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.teal,
                                width: 2,
                              ),
                            ),
                            child: Container(
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.person),
                            ),
                          );
                        }),
                  ),
                  VerticalDivider(
                    width: 0,
                    thickness: 2,
                    color: Colors.teal.withOpacity(0.3),
                  ),
                  Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Dreamwalker',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Spacer(),
                                    Text(
                                      'Profile',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 180,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Colors.teal.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.teal,
                                              blurRadius: 4,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                          ),
                                          FloatingActionButton(
                                            onPressed: () {},
                                            backgroundColor:
                                                Colors.teal.withOpacity(0.4),
                                            child: Icon(
                                              Icons.play_arrow,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.favorite_border),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Kids See Ghosts',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Kayne West and Kid Cudi',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Divider(
                              thickness: 2,
                              color: Colors.teal.withOpacity(0.3),
                            ),
                          ),
                          Container(
                            height: 280,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'History',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Spacer(),
                                    Text(
                                      'Show all',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                Expanded(
                                  child: ListView(
                                    children: [
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          'Solastalgla',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        subtitle: Text(
                                          'Missy Higgins',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          'Solastalgla',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        subtitle: Text(
                                          'Missy Higgins',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        dense: true,
                                        title: Text(
                                          'Solastalgla',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        subtitle: Text(
                                          'Missy Higgins',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          'Solastalgla',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        subtitle: Text(
                                          'Missy Higgins',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.teal.withOpacity(0.3),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Dreamwalker',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Spacer(),
                                    Text(
                                      'Profile',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 180,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Colors.teal.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.teal,
                                              blurRadius: 4,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                          ),
                                          FloatingActionButton(
                                            onPressed: () {},
                                            backgroundColor:
                                                Colors.teal.withOpacity(0.4),
                                            child: Icon(
                                              Icons.play_arrow,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.favorite_border),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Kids See Ghosts',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Kayne West and Kid Cudi',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.3),
                      blurRadius: 1,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    VerticalDivider(
                      width: 0,
                      thickness: 2,
                      color: Colors.teal.withOpacity(0.3),
                    ),
                    Expanded(
                      flex: 9,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kids See Ghosts',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Kayne West and Kid Cudi',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            FloatingActionButton(
                              child: Icon(Icons.pause),
                              elevation: 0,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
