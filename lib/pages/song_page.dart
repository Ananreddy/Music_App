import 'package:flutter/material.dart';


class SongPage extends StatelessWidget {
      const SongPage ({super.key});


     @override
    Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(title: Text("S O N G  P A G E"),
        centerTitle:true,
        ),
      );
    }
}