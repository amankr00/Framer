import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anime extends StatefulWidget{
const Anime({super.key});

@override
State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
@override
Widget build(BuildContext context) { 
return _buildUI();
}

Widget _buildUI() {
return Center(
child : LottieBuilder.asset('assets/animations/anime.json'));
}
}