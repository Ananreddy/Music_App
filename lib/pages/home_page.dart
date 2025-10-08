import 'package:flutter/material.dart';
 
 class Homepage extends StatefulWidget{
         const Homepage({super.key});
          
       @override
       State<Homepage> createState() => _HomePageState();
         }

 class _HomePageState extends State<Homepage> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar:AppBar(
          title:Text("P L A Y L I S T"),
          centerTitle:true,
          
          ),
          drawer: Drawer(),
        );
      }

 }        