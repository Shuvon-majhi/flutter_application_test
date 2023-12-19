import 'package:flutter/material.dart';

class photos extends StatelessWidget {
  const photos({super.key});

  // SnackBarMessange
  SnackBarMessange(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message,style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
        backgroundColor: Colors.green,
        elevation: 10,
        behavior: SnackBarBehavior.floating,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset photos"),
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {
              SnackBarMessange("hello", context);
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),

      // images from assest
      // body: Center(
      //   child: Image.asset('lib/Images/view1.jpg'),
      // ),

      // image from network

      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://media.licdn.com/dms/image/D4D03AQG_kxXYD2SeNg/profile-displayphoto-shrink_200_200/0/1672571626708?e=1707955200&v=beta&t=04GtqSSDM-gXFYDTIgh-pze7HpQOdB0iTHBDierAhVE',
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
