import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      // body: Scrollbar(
      //   thickness: 20,
      //   radius: Radius.circular(20),
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     children: [
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         endIndent: 30,
      //         indent: 30,
      //       ),
      //       ListTile(
      //         title: Text('Hello'),
      //         subtitle: Text('My name is Hafiz'),
      //         isThreeLine: true,
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.delete),
      //         onTap: () {
      //           MySnackBar('Success', context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Scrollbar(
        thickness: 20,
        radius: Radius.circular(20),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
