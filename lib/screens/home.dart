// ignore_for_file: dead_code

import "package:flutter/material.dart";
import 'package:dashed_border/dashed_border.dart';
import 'package:studipal_web/sub_screens/history.dart';
import 'package:studipal_web/sub_screens/quiz.dart';
import 'package:studipal_web/sub_screens/summary.dart';
import 'package:studipal_web/sub_screens/talk.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showDisplay = true;
  bool isUser = false;
  bool isLogged = false;

  List<Widget> Pages = [Talk(), History(), Quiz(), Summary()];

  int chosen = 0;

  void login() {
    setState(() {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.6,

            child: Column(children: [Text("Log In")]),
          ),
        ),
      );

      isLogged = !isLogged;
    });
  }

  void logout() {
    setState(() {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.6,

            child: Column(children: [Text("Log Out")]),
          ),
        ),
      );

      isLogged = !isLogged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Container(
                        width: 140,
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(width: 2, color: Colors.black87),
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Studi",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      207,
                                      46,
                                      114,
                                      170,
                                    ),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Pal",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.menu_book_outlined,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black38),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        width: 500,
                        child: TextField(
                          decoration: .new(
                            prefixIcon: Icon(Icons.search_outlined),
                            hint: Text("Search"),
                            isDense: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showDisplay = !showDisplay;
                          print("done");
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black38),
                          borderRadius: BorderRadius.circular(40),
                        ),

                        child: Icon(Icons.menu, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 6),
              Row(
                children: [
                  showDisplay
                      ? Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 6,
                              color: const Color.fromARGB(57, 205, 215, 231),
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),

                          child: SingleChildScrollView(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Options(
                                    "Dark Mode",
                                    Icons.colorize_outlined,
                                    () {},
                                  ),

                                  OptionsNav("Uploads", Icons.upload, () {
                                    setState(() {
                                      chosen = 1;
                                    });
                                  }, (chosen == 1)),
                                  (chosen != 0)
                                      ? OptionsNav(
                                          "Talk to Document",
                                          Icons.smart_toy_outlined,
                                          () {
                                            setState(() {
                                              chosen = 0;
                                            });
                                          },
                                          (chosen == 0),
                                        )
                                      : SizedBox.shrink(),

                                  OptionsNav(
                                    "Create Quiz",
                                    Icons.abc_outlined,
                                    () {
                                      setState(() {
                                        chosen = 2;
                                      });
                                    },
                                    (chosen == 2),
                                  ),
                                  OptionsNav(
                                    "Create FlashCards",
                                    Icons.gamepad_outlined,
                                    () {
                                      setState(() {
                                        chosen = 3;
                                      });
                                    },
                                    (chosen == 3),
                                  ),

                                  Options(
                                    "Premium Access",
                                    Icons.star_border_outlined,
                                    () {},
                                  ),

                                  Options(
                                    "Similar Apps",
                                    Icons.app_registration_outlined,
                                    () {},
                                  ),
                                  Options(
                                    "Support us",
                                    Icons.favorite_border_outlined,
                                    () {},
                                  ),
                                  Options(
                                    isLogged ? "Log Out" : "Log in",
                                    Icons.logout_outlined,
                                    isLogged ? logout : login,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.80,

                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black38),
                        borderRadius: BorderRadius.circular(7),
                      ),

                      child: Expanded(child: Center(child: Pages[chosen])),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.80,

                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black38),
                      borderRadius: BorderRadius.circular(7),
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Helper Bot",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(172, 26, 47, 83),
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.smart_toy_outlined,
                              color: Colors.black38,
                            ),
                          ],
                        ),
                        Divider(),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.60,

                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Dialogs(
                                false,
                                "hello there, what would you want to know ?",
                              ),
                              Dialogs(
                                true,
                                "hello there, what would you want to know ?",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hint: Text(
                                        "ask a question from document...",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black26,
                                        ),
                                      ),
                                      isDense: true,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.send_outlined,
                                  color: const Color.fromARGB(172, 56, 79, 119),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Powered By Sleepy Panda ",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  Text(
                    "©2025-${DateTime.now().year} All Rights Reserved",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Options(String Title, IconData icon, GestureTapCallback tap) {
  bool hover = false;
  return InkWell(
    onHover: (value) {
      If(value) {
        hover = true;
      }
    },
    hoverColor: const Color.fromARGB(87, 202, 216, 240),
    onTap: tap,
    child: Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Divider(),
          Row(
            children: [
              SizedBox(width: 5),
              Icon(icon, color: Colors.black38),
              SizedBox(width: 5),
              Text(
                Title,
                style: TextStyle(
                  color: const Color.fromARGB(193, 0, 0, 0),
                  fontWeight: FontWeight(400),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    ),
  );
}

Widget OptionsNav(
  String Title,
  IconData icon,
  GestureTapCallback tap,
  bool active,
) {
  bool hover = false;
  bool chosen = active;

  return InkWell(
    onHover: (value) {
      If(value) {
        hover = true;
      }
    },
    hoverColor: const Color.fromARGB(87, 202, 216, 240),

    onTap: tap,
    child: Container(
      padding: EdgeInsets.only(right: 20),
      color: chosen
          ? const Color.fromARGB(57, 205, 215, 231)
          : Colors.transparent,

      child: Column(
        children: [
          Divider(),
          Row(
            children: [
              SizedBox(width: 5),
              Icon(icon, color: Colors.black38),
              SizedBox(width: 5),
              Text(
                Title,
                style: TextStyle(
                  color: const Color.fromARGB(193, 0, 0, 0),
                  fontWeight: FontWeight(400),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    ),
  );
}

Widget Dialogs(bool isUser, String message) {
  return Container(
    margin: EdgeInsets.all(10),
    clipBehavior: Clip.antiAlias,
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 2, color: Colors.black38),
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            isUser ? Icons.face_5_outlined : Icons.smart_toy_outlined,
            color: isUser ? const Color.fromARGB(179, 0, 0, 0) : Colors.black87,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontWeight: isUser ? FontWeight(400) : FontWeight.bold,
                  overflow: TextOverflow.clip,
                  color: isUser
                      ? Colors.black38
                      : const Color.fromARGB(143, 0, 0, 0),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
