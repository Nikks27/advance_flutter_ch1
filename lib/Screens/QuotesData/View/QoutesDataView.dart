import 'package:flutter/material.dart';


class Qoutesdataview extends StatelessWidget {
  const Qoutesdataview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qoutes Data',style: TextStyle(fontSize: 25),),
      ),
      body: Card(
        child: ListView.builder(itemBuilder: (context, index) => ListTile(
          leading: Text(index.toString()),
          title: Text(
            ''
          ),
        ),),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
