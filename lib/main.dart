// import 'package:flutter/material.dart';
// import 'package:untitled3/pages/main_page.dart';
//
// const Color darkBlue = Color.fromARGB(255, 255, 255, 255);
//
// void main() {
//   runApp(
//     MaterialApp(
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: darkBlue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const MainPage(),
//     ),
//   );
// }

import 'package:flutter/material.dart';

import 'settings/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Finance';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: SettingsScreen(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text(_title, style: TextStyle(fontSize: 14, color: Colors.black)),
      //     backgroundColor: Colors.transparent,
      //     elevation: 0.0,
      //     actions: <Widget>[
      //       TextButton(
      //         onPressed: () {},
      //         child: const Text('Settings', style: TextStyle(fontSize: 14, color: Colors.grey)),
      //       ),
      //     ],
      //   ),
      //   body: const MyStatefulWidget(),
      // ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        primary: Colors.lightBlue,
        textStyle: const TextStyle(fontSize: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ));
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF00A6F9),
                  Color(0xFF0072FB),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: <BoxShadow>[BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0.0, 0.75))],
            ),
            alignment: Alignment.center,
            width: 300.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 13),
                const Text(
                  '\﹩ 904.91',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Text('change currency', style: TextStyle(fontSize: 12)),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20.0),
                    ),
                  ),
                  alignment: Alignment.center,
                  width: 300.0,
                  height: 34.0,
                  child: const Text(
                    '10 monthly expenses',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(icon: const Icon(Icons.data_usage), tooltip: 'Statistic', onPressed: () {}),
                  const SizedBox(height: 2),
                  const Text('Statistic'),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(icon: const Icon(Icons.add_circle), tooltip: 'Add', onPressed: () {}),
                  const SizedBox(height: 2),
                  const Text('Add'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const ListItemCard(
            text1: 'Apple TV+',
            text2: 'Entertaiment',
            price: '\﹩ 85',
          ),
          const SizedBox(height: 20),
          Card(
            color: const Color(0xFFF2F4F5),
            child: Container(
              width: 300.0,
              height: 75.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            'Netflix',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_horiz),
                              alignment: Alignment.topRight,
                              tooltip: 'info',
                              onPressed: () {}),
                        ],
                      ),
                      const Text(
                        'Entertaiment',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Text(
                    '\﹩ 4.99',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            color: const Color(0xFFF2F4F5),
            child: Container(
              width: 300.0,
              height: 75.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            'Health Insurance',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_horiz),
                              alignment: Alignment.topRight,
                              tooltip: 'Info',
                              onPressed: () {}),
                        ],
                      ),
                      const Text(
                        'Health',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '\﹩ 89.49',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItemCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String price;

  const ListItemCard({super.key, required this.text1, required this.text2, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF2F4F5),
      child: Container(
        width: 300.0,
        height: 75.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      text1,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: const Icon(Icons.more_horiz),
                        alignment: Alignment.topRight,
                        tooltip: 'info',
                        onPressed: () {}),
                  ],
                ),
                Text(
                  text2,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            Text(
              price,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
