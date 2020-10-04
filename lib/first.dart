
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
myapp()
{
  
       AudioPlayer audioPlayer = AudioPlayer();
        var a=AudioCache(fixedPlayer: audioPlayer);

  return Container(
    color: Colors.grey,
    child: Column(
    

      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
       
          width:400,
          height:100,
          child:Column(
            children: <Widget>[
              Text("Play From Network"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child:Icon(Icons.play_arrow),
                    
                    onPressed:(){
                     

                      audioPlayer.play("http://api.pendusaab.com/download/128k-nyho/Kaise-Mujhe.mp3");
                    }  ,),
                  RaisedButton(
                    
                      child:Icon(Icons.pause),
                      onPressed:(){
                        audioPlayer.pause();
                      },
                  ),
                    RaisedButton(
                      onPressed: () {
                          audioPlayer.stop();
                       },
                      
                        child:Icon(Icons.stop),
                    )
                ],
              ),
            ],
          )
          
          

          
          

          
        ),
        Container(
          margin: EdgeInsets.all(18),
          width:400,
          height:100,
          
          child:Column(
            children: <Widget>[
              Text("Play From Assets"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    
                    onPressed:(){
                       
                      a.play("Faded.mp3");
                    } ,
                    
                      
                      child:Icon(Icons.play_arrow),
                  ),
                  RaisedButton(
                    onPressed: () {
                      audioPlayer.pause();

                      },
                    
                      child:Icon(Icons.pause),
                  ),
                    RaisedButton(
                      onPressed: () {
                        audioPlayer.stop();

                        },
                      
                        child:Icon(Icons.stop),
                    )

                ],
              ),
            ],
          )
        ),

      ],
      
    ),
  ); 

  


}
