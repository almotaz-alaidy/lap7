import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List MyListItem = ["1 person", "2person", "2-5person", "6-8 person"];
  String SelectedItem = "1 person";
  String MyGroupValue = "";
  bool MyValue = false;
  bool MyVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/d/d0/Background-clouds.jpg"),
                fit: BoxFit.cover)),
        child: ListView(children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "please enter youre information",
              style: TextStyle(
                  fontSize: 30, fontFamily: "DancingScript-VariableFont_wght"),
            ),
          ),
          Divider(
            height: 20,
          ),
          Container(
            child: Text(
              "how many person",
              style: TextStyle(
                  fontFamily: "DancingScript-VariableFont_wght", fontSize: 25),
            ),
          ),
          Divider(
            height: 20,
          ),
          DropdownButton(
            value: SelectedItem,
            items: MyListItem.map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style:
                      TextStyle(fontFamily: "DancingScript-VariableFont_wght"),
                ))).toList(),
            onChanged: (value) {
              setState(() {
                SelectedItem = value.toString();
              });
            },
          ),
          Divider(
            height: 20,
          ),
          Container(
            child: Text(
              "please select your class",
              style: TextStyle(
                  fontSize: 25, fontFamily: "DancingScript-VariableFont_wght"),
            ),
          ),
          Divider(
            height: 20,
          ),
          RadioListTile(
            secondary: Text(
              "hot!!! only 200 \$ on person",
              style: TextStyle(fontFamily: "Combo-Regular"),
            ),
            title: Text(
              "businis",
              style: TextStyle(fontFamily: "Combo-Regular"),
            ),
            value: "businis",
            groupValue: MyGroupValue,
            onChanged: (value) {
              setState(() {
                MyGroupValue = value.toString();
              });
            },
          ),
          Divider(
            height: 20,
          ),
          RadioListTile(
            secondary: Text(
              "hot!!! only 150 \$ on person",
              style: TextStyle(fontFamily: "Combo-Regular"),
            ),
            title: Text(
              "economy",
              style: TextStyle(fontFamily: "Combo-Regular"),
            ),
            value: "economy",
            groupValue: MyGroupValue,
            onChanged: (value) {
              setState(() {
                MyGroupValue = value.toString();
              });
            },
          ),
          Divider(
            height: 20,
          ),
          Container(
            child: Text(
              "please select whate ever you have during the trip ",
              style: TextStyle(
                  fontSize: 30, fontFamily: "DancingScript-VariableFont_wght"),
            ),
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            title: Text(
              "animal",
              style: TextStyle(fontSize: 20, fontFamily: "Combo-Regular"),
            ),
            subtitle: Text(
              "cat,dog,eg",
              style: TextStyle(fontSize: 20, fontFamily: "Combo-Regular"),
            ),
            leading: Icon(Icons.donut_large),
            trailing: Checkbox(
              value: MyValue,
              onChanged: (value) {
                setState(() {
                  MyValue = value!;
                });
              },
            ),
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            title: Text(
              "midicin",
              style: TextStyle(fontSize: 20, fontFamily: "Combo-Regular"),
            ),
            subtitle: Text(
              "banadol,revanen,eg",
              style: TextStyle(fontSize: 20, fontFamily: "Combo-Regular"),
            ),
            leading: Icon(Icons.medical_information),
            trailing: Checkbox(
              value: MyVal,
              onChanged: (value) {
                setState(() {
                  MyVal = value!;
                });
              },
            ),
          )
        ]),
      ),
    );
  }
}
