// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 252, 232, 247),
          title: const Text(
            "Puzzels",
            style: TextStyle(color: Colors.pink, fontSize: 25),
          ),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                'lib/images/pic5.jpg',
              ),
            ),
          ),
          actions: [
            Image(
              image: AssetImage('lib/icons/filter.png'),
              fit: BoxFit.fill,
            )
          ],
        ),
        body: const HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,

          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 252, 232, 247),
          currentIndex: 3,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.south_america_sharp), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ''),
            const BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 252, 232, 247),
          height: 220,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                child: Stack(children: [
                  Opacity(
                    opacity: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "lib/images/pic4.jpg",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 50,
                    child: Icon(
                      Icons.favorite_rounded,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 90,
                    child: Text(
                      "20",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 80,
                    child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Likes",
                          style: TextStyle(fontSize: 15),
                        )),
                  )
                ]),
              ),
              Container(
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "lib/images/pic6.jpg",
                      ),
                    ),
                  ),
                  Positioned(
                    left: 45,
                    bottom: 0,
                    child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          children: [
                            Text(
                              "   Tony",
                              style: TextStyle(fontSize: 15),
                            ),
                            Image.asset("lib/images/tick.png")
                          ],
                        )),
                  )
                ]),
              ),
              Container(
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("lib/images/pic1.jpg")),
                  ),
                  Positioned(
                    left: 45,
                    bottom: 0,
                    child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          children: [
                            Text(
                              "  James",
                              style: TextStyle(fontSize: 15),
                            ),
                            Image.asset("lib/images/tick.png")
                          ],
                        )),
                  )
                ]),
              ),
              Container(
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("lib/images/pic2.jpg")),
                  ),
                  Positioned(
                    left: 55,
                    bottom: 0,
                    child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          children: [
                            Text(
                              "  Jordan",
                              style: TextStyle(fontSize: 15),
                            ),
                            Image.asset("lib/images/tick.png")
                          ],
                        )),
                  )
                ]),
              ),
            ]),
          ),
        ),
        Container(
          height: 15,
          color: const Color.fromARGB(255, 252, 232, 247),
        ),
        Stack(children: [
          Container(
            color: const Color.fromARGB(255, 252, 232, 247),
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
          ),
        ]),
        Column(children: [
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'lib/images/pic2.jpg',
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      "Jordan ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset(
                      "lib/images/tick.png",
                      height: 20,
                    )
                  ],
                ),
                subtitle: Text(
                  "Hii!",
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Column(
                  children: [
                    Text("13:10"),
                    Container(
                        height: 33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 241, 82, 130)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
              )
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'lib/images/pic3.jpg',
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      "Tim ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Image.asset(
                      "lib/images/tick.png",
                      height: 20,
                    )
                  ],
                ),
                subtitle: Text("Hii!",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                trailing: Text("13:10"),
              ),
              Divider(
                thickness: 0.5,
              )
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'lib/images/pic1.jpg',
                  ),
                ),
                title: Text(
                  "James",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Typing...",
                  style: TextStyle(color: Colors.pink, fontSize: 15),
                ),
                trailing: Column(
                  children: [
                    Text("13:10"),
                    Container(
                        height: 29,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 241, 82, 130)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "9+",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
              )
            ],
          ),
        ])
      ],
    );
  }
}
