
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/Provider/Provider.dart';
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/View/introscreen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Introscreen1 extends StatelessWidget {
  const Introscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    Introprovider introproviderTrue = Provider.of(context, listen: true);
    Introprovider introproviderFalse = Provider.of(context, listen: false);
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            // color: Color(0xffD9D3C7),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 55),
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(

                              ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 400,
                          width: 400,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/image1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Fresh Food',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. aenean commondo ligula\neget dolor',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      introproviderFalse.removeIntro();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Introscreen2(),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        alignment: Alignment.center,
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 25),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}