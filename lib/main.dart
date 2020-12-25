import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.wav');
  }

  Expanded buildKey({Color keyColor, String soundFile, String soundName}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        child: Text('$soundName'),
        onPressed: () {
          playSound(soundFile);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(
              soundFile: 'a_little_stitious',
              keyColor: Color(0xFFEBEBEB),
              soundName: 'A little stitious',
            ),
            buildKey(
              soundFile: 'how_the_turns_tables',
              keyColor: Color(0xFF81D5F7),
              soundName: 'How the turn tables',
            ),
            buildKey(
              soundFile: 'the_worst_thing_about_prison',
              keyColor: Color(0xFF35C6F5),
              soundName: 'The worst thing about prison',
            ),
            buildKey(
              soundFile: 'i_declare_bankruptcy',
              keyColor: Color(0xFF018388),
              soundName: 'I declare bankruptcy',
            ),
            buildKey(
              soundFile: 'creed_bratton_debt',
              keyColor: Color(0xFF4F5970),
              soundName: 'Creed Bratton',
            ),
            buildKey(
              soundFile: 'dont_be_an_idiot_dwight_schrute_the_office',
              keyColor: Color(0xFFB67F38),
              soundName: 'Do not be an idiot',
            ),
            buildKey(
              soundFile: 'the_office_identity_theft',
              keyColor: Color(0xFF3A2F30),
              soundName: 'Identity theft',
            ),
          ],
        ),
      ),
    );
  }
}
//extension HexColor on Color {
//  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
//  static Color fromHex(String hexString) {
//    final buffer = StringBuffer();
//    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
//    buffer.write(hexString.replaceFirst('#', ''));
//    return Color(int.parse(buffer.toString(), radix: 16));
//  }
//  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
//  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
//      '${alpha.toRadixString(16).padLeft(2, '0')}'
//      '${red.toRadixString(16).padLeft(2, '0')}'
//      '${green.toRadixString(16).padLeft(2, '0')}'
//      '${blue.toRadixString(16).padLeft(2, '0')}';
//}
