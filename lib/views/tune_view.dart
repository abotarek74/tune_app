import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfffe4039), sound: 'note1.wav'),
    TuneModel(color: Color(0xfffd982b), sound: 'note2.wav'),
    TuneModel(color: Color(0xfffdeb57), sound: 'note3.wav'),
    TuneModel(color: Color(0xff33af57), sound: 'note4.wav'),
    TuneModel(color: Color(0xff009587), sound: 'note5.wav'),
    TuneModel(color: Color(0xff0097ed), sound: 'note6.wav'),
    TuneModel(color: Color(0xffa227ac), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff233038),
        elevation: 0,
        title: const Center(
          child: Text(
            'Flutter tune',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }
}
