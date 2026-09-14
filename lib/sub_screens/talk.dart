import "package:dashed_border/dashed_border.dart";
import "package:flutter/material.dart";

class Talk extends StatefulWidget {
  const Talk({super.key});

  @override
  State<Talk> createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Select Pdf or Word Document", style: TextStyle(fontSize: 19)),
        Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: DashedBorder(width: 2, color: Colors.black38),
            borderRadius: BorderRadius.circular(7),
          ),

          child: Icon(Icons.add),
        ),

        InkWell(
          child: Container(
            margin: EdgeInsets.all(20),
            width: 200,
            padding: EdgeInsets.fromLTRB(40, 6, 40, 6),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(202, 53, 116, 168),
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(193, 116, 155, 223),
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
                Icon(Icons.folder_outlined, color: Colors.black38),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
