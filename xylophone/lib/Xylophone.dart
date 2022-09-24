import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        backgroundColor: Colors.teal[100],
        body: xyloPhoneUI(context),
      ),
    );
  }

  void playMusic(int musicNumber){
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  Widget userInterface({required int n,required Color color}){
    return Expanded(
        child: MaterialButton(
          onPressed: () {
            playMusic(n);
          },
          color: color, child: const Text(''),
        ));
  }

  Widget xyloPhoneUI(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        userInterface(n: 1,color: Colors.yellowAccent),
        userInterface(n: 2,color: Colors.greenAccent),
        userInterface(n: 3,color: Colors.redAccent),
        userInterface(n: 4,color: Colors.blueAccent),
        userInterface(n: 5,color: Colors.amberAccent),
        userInterface(n: 6,color: Colors.deepOrange),
        userInterface(n: 7,color: Colors.pinkAccent),
      ],
    );
  }
}