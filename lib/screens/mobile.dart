import "package:flutter/material.dart";

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 130,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Colors.black54),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Studi",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      Text(
                        "Pal",
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.menu_book_outlined, color: Colors.black38),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Studipal Web "),
                    Text(
                      "is Only Available on Desktop download the mobile app instead",
                    ),
                    SizedBox(height: 70),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 4, 25, 4),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(96, 54, 108, 153),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),

                      child: Text("Download"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
