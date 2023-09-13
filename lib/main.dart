import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text(
          'Home',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                MySnackBar('I am search', context);
              },
              icon: Icon(Icons.search),
            ),
          ),
        ],
        toolbarHeight: 100,
        elevation: 70,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Text('Container'),
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 10),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.green.shade200,
                // shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.green.shade200,
                  filled: true,
                  // hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.email),
                  label: Text('Enter Email'),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.green.shade200,
                  filled: true,
                  // hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.password),
                  label: Text('Enter Password'),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: Text('Text Button'),
            //   style: TextButton.styleFrom(
            //       padding: EdgeInsets.all(20),
            //       textStyle: TextStyle(fontSize: 20)),
            // ),
            ElevatedButton(
              onLongPress: () {
                MySnackBar('Delete', context);
              },
              onPressed: () {
                MySnackBar('Send', context);
              },
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            // OutlinedButton(onPressed: () {}, child: Text('Outline button'))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  currentAccountPicture:
                      Image.network('https://rabbil.com/files/rabbilVai.png'),
                  currentAccountPictureSize: Size(50, 50),
                  accountName: Text(
                    'Rabbil Hasan',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    'info@hafiz.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.help), title: Text('Help')),
            ListTile(leading: Icon(Icons.contact_mail), title: Text('Contact')),
            ListTile(leading: Icon(Icons.abc_outlined), title: Text('About us'))
          ],
        ),
      ),
    );
  }
}
