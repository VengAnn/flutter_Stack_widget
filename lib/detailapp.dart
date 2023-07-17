import 'package:flutter/material.dart';

class DetailApp extends StatefulWidget {
  const DetailApp({super.key});

  @override
  State<DetailApp> createState() => _DetailAppState();
}

class _DetailAppState extends State<DetailApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //width: double.maxFinite,
        width: 360,
        height: 600,
        color: Colors.grey,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              //right: 0,
              top: -50,
              right: (360 - 200) / 2,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
            //one more container
            Positioned(
              left: (360 - 100) / 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('test'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
