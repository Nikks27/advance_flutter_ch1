import 'package:advance_flutter_ch1/utils/stepperWidget.dart';
import 'package:flutter/material.dart';

class steppervartical extends StatefulWidget {
  const steppervartical({super.key});

  @override
  State<steppervartical> createState() => _steppervarticalState();
}

class _steppervarticalState extends State<steppervartical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter Stepper Demo',style: TextStyle(color: Colors.white),),
      ),
      body: Theme(data: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade700),
      ),
          child:Stepper(
            currentStep: step,
           type: StepperType.vertical,
            steps: stepperList(),
            onStepContinue: () {
              setState(() {
                if(step <= 1 )
                  {
                    step++;
                  }
              });
            },
            onStepCancel: () {
              setState(() {
                if(step >0)
                  {
                    step--;
                  }
              });
            },
            onStepTapped: (int index)
            {
              setState(() {
                step = index;
              });
            },
      ),
      ),
    );
  }
}
 int step =0;