import 'package:flutter/material.dart';

void main() {
  runApp(RectangleAreaCalculator());
}

class RectangleAreaCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rectangle Area Calculator'),
        ),
        body: CalculatorForm(),
      ),
    );
  }
}

class CalculatorForm extends StatefulWidget {
  @override
  _CalculatorFormState createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  double area = 0.0;

  void calculateArea() {
    double length = double.tryParse(lengthController.text) ?? 0.0;
    double width = double.tryParse(widthController.text) ?? 0.0;

    double calculatedArea = length * width;

    setState(() {
      area = calculatedArea;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: lengthController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Length'),
          ),
          TextField(
            controller: widthController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Width'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: calculateArea,
            child: Text('Calculate Area'),
          ),
          SizedBox(height: 20.0),
          Text('Area: $area'),
        ],
      ),
    );
  }
}
