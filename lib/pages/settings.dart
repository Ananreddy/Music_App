import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget{
const SettingsPage({super.key});

            

    @override
    Widget build (BuildContext context){
        return Scaffold(
          appBar: AppBar (title: Text("S E T T I N G S"),
         centerTitle:true,
         ),
         body: Container(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child:Row(
                //dark mode
                children: [
                  Text("Dark Mode"),
                  // switch
                  CupertinoSwitch(
                    value: 
                    Provider.of<ThemeProvider>(context,listen:false).isDarkMode, 
                    onChanged: (value) => Provider.of<ThemeProvider>(context, listen:false).toggleTheme(),
                    )
                  
                ],
              ),
         ),
        ); 
        
    }        
}