import 'package:flutter/material.dart';

class ClickableInkWellExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable InkWell Example'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            // Action when the widget is tapped
            print('InkWell clicked!');
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Click Me!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
