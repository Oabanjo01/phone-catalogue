// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'phones.dart';
import 'phonedetails.dart';

void main() {
  runApp(const Phonepics());
}

class Phonepics extends StatelessWidget {
  const Phonepics({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phone pictures',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.teal,
          brightness: Brightness.dark
        )
      ),
      home: const MyHomePage(apptitle: 'Phone catalogue'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.apptitle}) : super(key: key);

  final String apptitle;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/elizabeth-lies-T9Gsevu_N8Y-unsplash.jpg'),
            fit: BoxFit.cover
            )),
      //   child: Image.asset('lib/images/elizabeth-lies-T9Gsevu_N8Y-unsplash.jpg',
      //     fit: BoxFit.cover,
      //     height: double.infinity,
      // ),
      child: ListView.builder(
        itemCount: Phone.samples.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Phonedetails(phone: Phone.samples[index],);
                }
              ),
              );
            },
            child: buildPhoneCards(Phone.samples[index]),
          );
        }
        ),
      )
    );
  }
  Widget buildPhoneCards(Phone phone) {
  return Card(
    elevation: 1.0,
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0)),
    child: Padding(padding: const EdgeInsets.all(14.0),
      child: Column(
        children: <Widget>[
        Image(
          image: AssetImage(phone.imageUrl),
          ),
        Text(
          phone.label,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),)
        ],
      ),
    )
  );
}

  AppBar appBar() {
    return AppBar(
      title: Text(widget.apptitle),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.1,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print('Menu');
        },
        ),
      actions: <Widget>[
        IconButton(onPressed: () {
          print('search');
        },
        icon: Icon(Icons.search)
        ),
        IconButton(onPressed: () {
          print('options');
        },
        icon: Icon(Icons.more_vert),)
      ],
    );
  }
}
