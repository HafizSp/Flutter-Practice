import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

bool iconBool = true;
IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.nights_stay;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  iconBool = !iconBool;
                });
              },
              icon: Icon(iconBool ? iconLight : iconDark),
            )
          ],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Home Page'),
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      themeMode: iconBool ? ThemeMode.light : ThemeMode.dark,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starting page'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                iconBool = !iconBool;
              });
            },
            icon: Icon(iconBool ? iconLight : iconDark),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FirstRoute()));
          },
          child: Text('First Route'),
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('$index'),
            subtitle: Text('Content of $index'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Details(
                            productName: index.toString(),
                          )));
            },
          );
        },
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String productName;
  const Details({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text(productName),
      ),
    );
  }
}
