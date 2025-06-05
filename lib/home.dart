import 'package:flutter/material.dart';
import 'package:watertracker/calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _sliderValue = 0;
  double _currentValue = 0;
  final double _maxValue = 3000;

  void _addWater() {
    setState(() {
      _currentValue += _sliderValue;
      if (_currentValue > _maxValue) {
        _currentValue = _maxValue; // Cap the value at max
      }
    });
  }

  double get _fillPercent => _currentValue / _maxValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Watertracker'),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Calendar(),
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return ImageShader(
                      AssetImage('assets/images/bottle.png').resolve(ImageConfiguration()),
                      TileMode.clamp,
                      TileMode.clamp,
                      Matrix4.identity().storage,
                    );
                  },
                  blendMode: BlendMode.srcATop,
                  child: Container(
                    width: 150,
                    height: 400 * (_currentValue / _maxValue),
                    color: Colors.blue[100],
                  ),
                ),
                Image.asset(
                  'assets/images/bottle.png',
                  width: 150,
                  height: 400,
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              '${_sliderValue.round()} ml',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 1000,
              divisions: 20,
              label: '${_sliderValue.round()} ml',
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: _addWater,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor: Colors.blue[100],
                padding: EdgeInsets.all(20),
              ),
              child: Text('+'),
            )
          ]
        )
      )
    );
  }
}
