import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mipan_susu/audioServices.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Audio _accompaniment;
  Audio _miPan;
  Audio _firstSuSu;
  Audio _akaskus;
  Audio _longmipan;
  Audio _longsusu;

  void startTimer() {
    _accompaniment.loop('accompaniment.mp3');
  }

  void stopTimer() {
    _accompaniment.stop();
  }

  @override
  void initState() {
    _accompaniment = Audio();
    _miPan = Audio();
    _firstSuSu = Audio();
    _akaskus = Audio();
    _longmipan = Audio();
    _longsusu = Audio();
    super.initState();
  }

  @override
  void dispose() {
    _accompaniment.dispose();
    _miPan.dispose();
    _firstSuSu.dispose();
    _akaskus.dispose();
    _longmipan.dispose();
    _longsusu.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.2,
          ),
          Image.asset('assets/Images/dancingLlama.gif'),
          SizedBox(
            height: screenSize.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: startTimer,
                child: Text('Looping Accompaniment'),
              ),
              RaisedButton(
                onPressed: stopTimer,
                child: Text('Stop Accompaniment'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  Future.delayed(Duration(milliseconds: 0), () {
                    _miPan.start('mipan.mp3');
                  });
                },
                child: Text('mipan'),
              ),
              RaisedButton(
                onPressed: () {
                  _miPan.stop();
                },
                child: Text('Stop mipan'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  Future.delayed(Duration(milliseconds: 0), () {
                    _firstSuSu.start('1stsusu.mp3');
                  });
                },
                child: Text('1stsusu'),
              ),
              RaisedButton(
                onPressed: () {
                  _firstSuSu.stop();
                },
                child: Text('Stop 1stsusu'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  Future.delayed(Duration(milliseconds: 0), () {
                    _akaskus.start('akaskusnyamnyam.mp3');
                  });
                },
                child: Text('akaskusnyamnyam'),
              ),
              RaisedButton(
                onPressed: () {
                  _akaskus.stop();
                },
                child: Text('Stop akaskusnyamnyam'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  _longmipan.start('longmipaan.mp3');
                },
                child: Text('Long mi pan'),
              ),
              RaisedButton(
                onPressed: () {
                  _longmipan.stop();
                },
                child: Text('Stop Long mi pan'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  Future.delayed(Duration(milliseconds: 0), () {
                    _longsusu.start('longsusu.mp3');
                  });
                },
                child: Text('longsusu'),
              ),
              RaisedButton(
                onPressed: () {
                  _longsusu.stop();
                },
                child: Text('Stop longsusu'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
