import 'package:flutter/material.dart';
import 'package:flutter_application_test/SnackBarMessage.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  var myList = [
    {'name': 'Shuvon', 'city': 'Dhaka', 'age': '20'},
    {'name': 'John', 'city': 'New York', 'age': '25'},
    {'name': 'Alice', 'city': 'London', 'age': '30'},
    {'name': 'Bob', 'city': 'Tokyo', 'age': '22'},
    {'name': 'Emma', 'city': 'Paris', 'age': '28'},
    {'name': 'Michael', 'city': 'Berlin', 'age': '35'},
    {'name': 'Sophia', 'city': 'Sydney', 'age': '29'},
    {'name': 'David', 'city': 'Toronto', 'age': '32'},
    {'name': 'Olivia', 'city': 'Los Angeles', 'age': '27'},
    {'name': 'Daniel', 'city': 'Dubai', 'age': '31'},
    {'name': 'Isabella', 'city': 'Singapore', 'age': '45'},
    {'name': 'Alexander', 'city': 'Moscow', 'age': '39'},
    {'name': 'Mia', 'city': 'Hong Kong', 'age': '26'},
    {'name': 'William', 'city': 'Seoul', 'age': '34'},
    {'name': 'Ella', 'city': 'Mumbai', 'age': '33'},
    {'name': 'James', 'city': 'Rio de Janeiro', 'age': '29'},
    {'name': 'Ava', 'city': 'Cape Town', 'age': '36'},
    {'name': 'Liam', 'city': 'Stockholm', 'age': '28'},
    {'name': 'Charlotte', 'city': 'Amsterdam', 'age': '31'},
    {'name': 'Benjamin', 'city': 'Barcelona', 'age': '30'},
    {'name': 'Lucas', 'city': 'Bangkok', 'age': '27'},
    {'name': 'Grace', 'city': 'Istanbul', 'age': '32'},
    {'name': 'Henry', 'city': 'Cairo', 'age': '35'},
    {'name': 'Lily', 'city': 'Athens', 'age': '29'},
    {'name': 'Sebastian', 'city': 'Rome', 'age': '31'},
    {'name': 'Chloe', 'city': 'Nairobi', 'age': '26'},
    {'name': 'Ethan', 'city': 'Mexico City', 'age': '33'},
    {'name': 'Zoe', 'city': 'Beijing', 'age': '28'},
    {'name': 'Matthew', 'city': 'Delhi', 'age': '30'},
    {'name': 'Aria', 'city': 'Helsinki', 'age': '29'},
    {'name': 'Daniel', 'city': 'Johannesburg', 'age': '31'},
    {'name': 'Ava', 'city': 'Montreal', 'age': '28'},
    {'name': 'James', 'city': 'Bangalore', 'age': '33'},
    {'name': 'Sophia', 'city': 'Vienna', 'age': '29'},
    {'name': 'Ethan', 'city': 'Budapest', 'age': '34'},
    {'name': 'Mia', 'city': 'Prague', 'age': '27'},
    {'name': 'Oliver', 'city': 'Warsaw', 'age': '32'},
    {'name': 'Emma', 'city': 'Seville', 'age': '30'},
    {'name': 'Logan', 'city': 'Dublin', 'age': '28'},
    {'name': 'Isabella', 'city': 'Oslo', 'age': '31'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text('listView'),
      ),

      drawer: Drawer(),

      // body
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SearchBar(
              hintText: 'Search here',
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('lib/Images/TwobyTwo.jpg'),
                      ),
                      title: Text(myList[index]['name']!),
                      tileColor: Colors.lightGreen,
                      subtitle: Text(myList[index]['city']!),
                      trailing: Icon(Icons.phone),
                      onTap: () {
                        SnackBarMessage(context, myList[index]['name']);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
