import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 200),
          child: Text(
            'skip'
          ),
        ),
      ),
      body: Column(
        children: [
          Text('Fresh Food'),
          Text('Lorem ipsum dolor sit amet, consectetuer'),
          Text('adipiscing elit. Aenean commodo ligula'),
          Text('eget dolor.'),

          TextButton(onPressed: () {

          }, child: Text('Next')),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image:  AssetImage(
                  ''
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
