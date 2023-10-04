import 'package:flutter/material.dart';

void main() {
  runApp(SquareAreaCalculator());
}

class SquareAreaCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Square Area Calculator'),
        ),
        body: SquareAreaCalculatorScreen(),
      ),
    );
  }
}

class SquareAreaCalculatorScreen extends StatefulWidget {
  @override
  _SquareAreaCalculatorScreenState createState() =>
      _SquareAreaCalculatorScreenState();
}

class _SquareAreaCalculatorScreenState
    extends State<SquareAreaCalculatorScreen> {
  double sideLength = 0.0;
  double area = 0.0;

  void calculateArea() {
    setState(() {
      area = sideLength * sideLength;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter side length'),
            onChanged: (value) {
              setState(() {
                sideLength = double.tryParse(value) ?? 0.0;
              });
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: calculateArea,
            child: Text('Calculate Area'),
          ),
          SizedBox(height: 20.0),
          Text('Area of the square: $area'),
        ],
      ),
    );
  }
}
