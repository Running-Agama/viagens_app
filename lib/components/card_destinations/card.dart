import 'package:flutter/material.dart';

class CardDestination extends StatelessWidget {
  final TextStyle cardStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14
  );
  final TextStyle subtituloStyle = const TextStyle(
    color: Colors.white,
    fontSize: 10
  );
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/1/17/Cordillera_de_los_Andes.jpg',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(169, 0, 0, 0),
            blurRadius: 3,
            spreadRadius: -1,
            offset: Offset(-1, 5),
          )
        ],
      ),
      width: 220,
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  minimumSize: Size(1, 3),
                  shape: RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(20),
                    
                  )
                ),
                onPressed: (){}, 
                label: Icon(Icons.heart_broken_outlined
                
                )
              )
           ],),

          Card(
            color: Color.fromARGB(137, 0, 0, 0),
            
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text('Mount Fuji, ', style: cardStyle,),
                            Text('Tokyo', style: cardStyle)
                          ],
                        ))
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5, bottom: 2, right: 5),
                    child: Row(
                      
                      children: [
                        Icon(Icons.location_city, color: Colors.white),
                        SizedBox(width: 3,),
                        Text('Cidade,', style: subtituloStyle ),
                        Text('País', style: subtituloStyle,),
                        Expanded(child: Container()),
                        Icon(Icons.star, color: Colors.white,),
                        Text('0.0', style: subtituloStyle)
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
