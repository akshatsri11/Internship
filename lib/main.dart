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
            style: TextStyle(color: Colors.pink),
          ),
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
            const BottomNavigationBarItem(icon: Icon(Icons.web), label: ''),
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
          height: MediaQuery.of(context).size.height / 3.5,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Container(
                  height: 10,
                  width: 100,
                  child: Image.asset(
                    "lib/images/pic4.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 60, 10, 60),
              child: Card(
                child: Container(
                    width: 100,
                    child: Image.asset(
                      "lib/images/pic6.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 130, child: Image.asset("lib/images/pic1.jpg")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Image.asset("lib/images/pic2.jpg")),
            ),
          ]),
        ),
        Stack(children: [
          Container(
            color: const Color.fromARGB(255, 252, 232, 247),
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
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
                title: Text(
                  "Jordan",
                  style: TextStyle(fontSize: 20),
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
                title: Text(
                  "Tim",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
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
