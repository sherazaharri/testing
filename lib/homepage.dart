import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key : key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  //to get the user input
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "Input Text",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: () {
                  _textController.clear();
                }, icon: const Icon(Icons.clear)),
              ),
            ),
            MaterialButton(  //Button to insert the text into a variable
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Add', style: TextStyle(color: Colors.white)),
            ),
          ],
        )
      ),
    );
  }
}