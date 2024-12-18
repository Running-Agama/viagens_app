import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './components/card_destinations/card.dart';
class Explorar extends StatelessWidget {
  const Explorar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 30),
            child: Row(
              children: [
                Expanded(
                  
                  child: TextField(
                      
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Pesquisar...',
                    ),
                  ),
                  
                ),
                const SizedBox(width: 30),
                const Icon(Icons.access_alarm),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Lugares populares',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ver tudo',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Mais visualizados'),
                Text('Nearby'),
                Text('Latest'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 5),
                  child: 
                  cardDestination(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
