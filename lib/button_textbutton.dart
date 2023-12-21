import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  // text edting controller

  //TextEditingController Value = TextEditingController();

  // Snack Bar
  SnackBarMassage(Message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          Message,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        elevation: 5,
        centerTitle: true,
      ),

      ///BODY
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //SizedBox(height: 8,),

              ElevatedButton(
                onPressed: () {
                  SnackBarMassage("Elevated Button", context);
                },
                child: Text('Press me'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[300],
                  foregroundColor: Colors.black,
                  minimumSize: Size(300, 40),
                  // maximumSize: Size(300, 80),
                  elevation: 5,
                  shadowColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              //SizedBox(height: 500,),

              // Text Button

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      SnackBarMassage('Welcome to Text button', context);
                    },
                    child: Text('Text Button'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      foregroundColor: Colors.red,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      SnackBarMassage('Welcome to Text button', context);
                    },
                    child: Text('Text Button'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      foregroundColor: Colors.red,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),

              // Icon Button

              IconButton(
                onPressed: () {
                  SnackBarMassage("Icon Button", context);
                },
                icon: Icon(Icons.reddit_outlined),
              ),

              Row(),

              // TEXT FIELD

              TextField(
                //controller: Value,
                // onTap: () {
                //   print('textfield pressed me');
                // },

                onSubmitted: (value) {
                  SnackBarMassage('info submitted Successfuly', context);
                },

                textInputAction: TextInputAction.done,

                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  label: Text('NAME'),
                  prefixIcon: Icon(Icons.text_decrease),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  prefix: Text('MR.'),
                  suffix: Text('Majhi'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 10,
                      style: BorderStyle.solid,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                //controller: Value,
                // onTap: () {
                //   print('textfield pressed me');
                // },

                onSubmitted: (value) {
                  SnackBarMassage('information submitted Successfuly', context);
                },

                textInputAction: TextInputAction.done,

                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  label: Text('NAME'),
                  prefixIcon: Icon(Icons.text_decrease),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  prefix: Text('MR.'),
                  suffix: Text('Majhi'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 10,
                      style: BorderStyle.solid,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Container and GestureDetector
              GestureDetector(
                onTap: () {
                  SnackBarMassage("Gesture Detector", context);
                },
                child: Container(
                  padding: EdgeInsets.all(50),
                  margin: EdgeInsets.only(left: 16, right: 32),
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.green,
                      width: 10,
                      style: BorderStyle.solid,
                    ),
                    // box Shadow
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),

                  // Apple Icons
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.apple,
                    size: 100,
                  ),
                ),
              ),

              // InkWell button
              InkWell(
                onTap: () {
                  SnackBarMassage('InkWell Button', context);
                },
                child: Text("InkWell Button"),
                splashColor: Colors.red,
                highlightColor: Colors.deepPurple,
                radius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
