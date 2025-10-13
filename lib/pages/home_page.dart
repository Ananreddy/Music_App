import 'package:flutter/material.dart';
import 'package:music_app/components/drawer.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:provider/provider.dart';


 
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

           body: Consumer<PlaylistProvider>(
           builder: (context, value, child) =>  ListView.builder(
           itemBuilder: (context,index)=>ListTile(),
            
            ),
           ),   
           
          drawer: const MyDrawer(),
          
         );
      }
   }        