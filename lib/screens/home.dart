import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showDisplay = false;
  bool isUser = false;
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

                          child: Column(
                            children: [
                              Options("Dark Mode", Icons.access_alarm),
                              Options("Uploads", Icons.access_alarm),
                              Options("Create Quiz", Icons.access_alarm),
                              Options("Summerize Document", Icons.access_alarm),

                              Options("Upgrade To Premium", Icons.access_alarm),

                              Options("Similar Apps", Icons.access_alarm),
                              Options("Support us", Icons.access_alarm),
                              Options("Log Out", Icons.logout_outlined),
                            ],
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

                      child: Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Select Pdf or Word Document",
                                style: TextStyle(fontSize: 19),
                              ),
                              Container(
                                height: 200,
                                width: 200,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black38,
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),

                                child: Icon(Icons.add),
                              ),

                              Container(
                                margin: EdgeInsets.all(20),
                                width: 200,
                                padding: EdgeInsets.fromLTRB(40, 6, 40, 6),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: const Color.fromARGB(
                                      202,
                                      53,
                                      116,
                                      168,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(
                                    193,
                                    116,
                                    155,
                                    223,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.folder, color: Colors.black54),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                          height: MediaQuery.of(context).size.height * 0.64,

                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Dialogs(
                                Icons.access_alarm,
                                "hello there, what would you want to know ?",
                              ),
                              Dialogs(
                                Icons.access_alarm,
                                "hello there, what would you want to know ?",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
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
            ],
          ),
        ),
      ),
    );
  }
}

Widget Options(String Title, IconData icon) {
  return Container(
    child: Column(
      children: [
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5),
            Icon(icon),
            SizedBox(width: 5),
            Text(Title),
          ],
        ),
        Divider(),
      ],
    ),
  );
}

Widget Dialogs(IconData icon, String message) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 2, color: Colors.black38),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(message)],
        ),
      ],
    ),
  );
}
