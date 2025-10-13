import 'package:flutter/material.dart';
import 'package:music_app/models/song.dart';


class PlaylistProvider extends ChangeNotifier {
  //playlist of songs
  final List<Song> _playlist = [
  //song
  Song(
    songName: "Moonlight",
    artistName: "Dhruv",
    albumArtImagePath:"assets/images/album_art_1.jpeg",
    audioPath:"assets/audio/moonlight - Dhruv.flac",
  ),     

  Song(
   songName: "Back To Friends",
    artistName: "sombr",
    albumArtImagePath:"assets/images/album_art_2.jpeg",
    audioPath: "assets/audio/Bones - back to friends - sombr.flac" ,

  ),

  Song(
    songName: "Bones",
    artistName: "Imagine Dragons",
    albumArtImagePath:"assets/images/album_art_3.jpeg",
    audioPath:  "assets/audio/Bones - Imagine Dragons.flac",
    ),   
  ];

  //curent playing song index
int? _currentSongIndex;

/*

G E T T E R S

*/


List<Song> get playlist =>  _playlist;
int? get currentSongIndex  => _currentSongIndex;


/*

S E T T E R S

*/


set currentSongIndex (int? newIndex){
 
 _currentSongIndex = newIndex;
 notifyListeners();

}


}

