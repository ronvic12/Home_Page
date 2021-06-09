import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An OpportunityKnocks App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            ],
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search'),
          ),
          SizedBox(height: 30),
          Text('All Benefits',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var benefit in benefits)
                    Image.asset('assets/images/$benefit.png')
                ]),
          )
        ],
      ),
    ));
  }
}

final benefits = [
  'Ali_Baba',
  'Davis_Creamery',
  'UC_Davis_Football',
  'Sac_Kings'
];
