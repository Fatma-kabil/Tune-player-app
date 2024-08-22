import 'package:flutter/material.dart';
import 'package:tune_player/models/tune_model.dart';

import '../widgets/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.lightGreen, sound: 'note4.wav'),
    TuneModel(color: Color(0xff0DA588), sound: 'note5.wav'),
    TuneModel(color: Colors.blueAccent, sound: 'note6.wav'),
    TuneModel(color: Color(0xffA227AC), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff253238),
        title: const Text('Flutter Tune',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Column(
          children: tunes
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList()),
    );
  }

  // List<TuneItem> getTuneItems() {
  // List<TuneItem> items = [];
  // for (var element in tuneColors) {
  //  items.add(TuneItem(color: element));
  // }
  // return items;
//  }
}
