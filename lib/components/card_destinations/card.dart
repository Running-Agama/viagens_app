import 'package:flutter/material.dart';

class cardDestination extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Container(
      decoration:  BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10)
      ),
      width: 220,
      height: 300,
      margin: EdgeInsets.only(right: 8),
        child: 
        const Column(
            children: [
              Text('oi')
            ],
        ),
    );
    
  }
}