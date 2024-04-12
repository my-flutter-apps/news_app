import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTapDetails extends StatefulWidget {
  const FirstTapDetails({super.key});

  @override
  State<FirstTapDetails> createState() => _FirstTapDetailsState();
}

class _FirstTapDetailsState extends State<FirstTapDetails> {
  bool switchValue = false;
  double sliderValue = 3.0;

  int slidingValue = 1;
  int toggleValue = 0;
  RangeValues rangeSliderValues = RangeValues(2, 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Tap Details'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CupertinoSwitch(value: switchValue, onChanged: (_) {}),
            Switch.adaptive(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                }),
            Divider(
              thickness: 15,
              /* indent: 0, endIndent: 0,*/
              color: Colors.redAccent,
            ),
            // CircularProgressIndicator.adaptive(),
            // CircularProgressIndicator(),
            LinearProgressIndicator(
              value: 0.6,
            ),
            Divider(
              thickness: 15,
              /* indent: 0, endIndent: 0,*/
              color: Colors.redAccent,
            ),
            Slider.adaptive(
                value: sliderValue,
                min: 0,
                max: 10,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    sliderValue = value;
                  });
                }),
            RangeSlider(
                values: rangeSliderValues,
                labels: RangeLabels(rangeSliderValues.start.toString(),
                    rangeSliderValues.end.toString()),
                divisions: 10,
                max: 10,
                onChangeEnd: (r) {},
                onChangeStart: (r) {},
                onChanged: (r) {
                  setState(() {
                    rangeSliderValues = r;
                  });
                }),
            ToggleButtons(

              onPressed: (i){
                setState(() {
                  toggleValue = i;
                });
              },
              children: [
              Text("One"),
              Text("Two")
            ], isSelected: [
              toggleValue == 0, toggleValue == 1
            ],

            ),
            SizedBox(height: 32.0,),
            CupertinoSlidingSegmentedControl(children: {
              1: Text("One"),
              2: Text("Two"),
              3: Text("Three"),
              4: Text("four"),
            }, onValueChanged: (a){
              setState(() {
                slidingValue = a ?? 1;
              });
            }, groupValue: slidingValue,),
            SizedBox(height: 32.0,),
            CupertinoSegmentedControl(
              groupValue: slidingValue,
                children: {
              1: Text("One"),
              2: Text("Two"),
              3: Text("Three"),
              4: Text("four"),
            }, onValueChanged: (v){
              setState(() {
                slidingValue = v;
              });
            }),
            Stepper(
              // type: StepperType.horizontal,

                steps: [
              Step(title: Text("Hello"), content: Container(color: Colors.red, height: 10,)),
              Step(title: Text("Hello 2"), content: Container(color: Colors.orange,  height: 10,)),
              Step(title: Text("Hello 3"), content: Container(color: Colors.blue, height: 10,)),
            ])
          ],
        ),
      ),
    );
  }
}
