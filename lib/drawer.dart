import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  SnackBarMessage(Message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          Message,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
        centerTitle: true,
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
                accountName: Text(
                  "SHUVON MAJHI",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "shuvon.majhi@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "lib/Images/TwobyTwo.jpg",
                    
                  ),
                ),
                currentAccountPictureSize: Size.square(50),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              hoverColor: Colors.grey,
              onTap: () {
                SnackBarMessage('Go to Home', context);
              },
            ),

            ListTile(
              leading: Icon(Icons.call),
              title: Text("Call"),
              hoverColor: Colors.grey,
              onTap: () {
                SnackBarMessage('Go to call', context);
              },
            ),

            ListTile(
              leading: Icon(Icons.report_gmailerrorred_outlined),
              title: Text("Report"),
              hoverColor: Colors.grey,
              onTap: () {
                SnackBarMessage('Go to Report', context);
              },
            ),

            ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("Question"),
              hoverColor: Colors.grey,
              onTap: () {
                SnackBarMessage('Go to Question', context);
              },
            ),

          ],
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(20),
            //color: Colors.redAccent,
            child: Text('This is Container', style: TextStyle(fontSize: 24)),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.greenAccent, width: 5),
              color: Colors.redAccent,
            ),
          ),


          Container(
            /// adding image in this container
            height: 200,
            width: 200,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(20),
            //color: Colors.redAccent,
            child: Image.network(
                "https://cdn0.iconfinder.com/data/icons/education-school-science/100/29-512.png"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.greenAccent, width: 5),
              color: Colors.redAccent,
            ),
          ),

          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.black,
                elevation: 25,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )),
            onPressed: () {
              SnackBarMessage('Tap me', context);
            },
            child: Text('Tap me'),
          )
        ],
      ),
    );
  }
}
