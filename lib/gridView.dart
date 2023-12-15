import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<String> my = [
    '9',
    '8',
    '7',
    '6',
    '5',
    '4',
    '3',
    '2',
    '1',
    'C',
    '0',
    'DEL',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.call),
            SizedBox(
              width: 12,
            ),
            Icon(Icons.mail),
          ],
        ),
        
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemCount: my.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              color: Colors.green[400],
                              child: Center(
                                child: Text(
                                  my[index],
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
