import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shopping List"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar('Your shopping cart is empty', context);
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: const MyLiveTest6(),
    );
  }
}

class MyLiveTest6 extends StatelessWidget {
  const MyLiveTest6({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('Apples'),
          subtitle: Text(
            'lorem ipsum omit',
            style: TextStyle(
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Dairy'),
          subtitle: Text(
            'lorem ipsum omit',
            style: TextStyle(
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.sports_football),
          title: Text('Basketball'),
          subtitle: Text(
            'lorem ipsum omit',
            style: TextStyle(
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text('Alarm Clock'),
          subtitle: Text(
            'lorem ipsum omit',
            style: TextStyle(
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.laptop),
          title: Text('Laptop'),
          subtitle: Text(
            'lorem ipsum omit',
            style: TextStyle(
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
