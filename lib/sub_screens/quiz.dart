import "package:dashed_border/dashed_border.dart";
import "package:flutter/material.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool documentExists = false;

  @override
  Widget build(BuildContext context) {
    return documentExists
        ? Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Switch to Essay"),
                    Text("Score : 19"),
                    Icon(Icons.refresh_outlined),
                  ],
                ),
                SizedBox(height: 15),
                MultiChoice(
                  "what is creativity",
                  "an art ",
                  "expression",
                  "peace",
                  "thought process",
                  context,
                ),
              ],
            ),
          )
        : Column(
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
                  border: DashedBorder(width: 2, color: Colors.black38),
                  borderRadius: BorderRadius.circular(7),
                ),

                child: Icon(Icons.add),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    documentExists = true;
                  });
                },
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

Widget MultiChoice(
  String Question,
  String answer1,
  String answer2,
  String answer3,
  String answer4,
  BuildContext context,
) {
  return Column(
    children: [
      SizedBox(height: 20),

      Container(
        width: MediaQuery.of(context).size.width * 0.5,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(135, 177, 196, 211),
          border: Border.all(width: 2, color: Colors.black38),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(Question),
      ),
      SizedBox(height: 40),
      Answer(answer1, context),
      Answer(answer2, context),
      Answer(answer3, context),
      Answer(answer4, context),
      SizedBox(height: 20),
      Text("1/10"),
    ],
  );
}

Widget Answer(String answer, context) {
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width * 0.25,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: Colors.black54),
      borderRadius: BorderRadius.circular(10),
    ),

    child: Text(answer),
  );
}
