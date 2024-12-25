import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './components/card_destinations/card.dart';


class ExplorarState extends StatefulWidget{
  const ExplorarState({super.key});

  
  @override
  _ExplorarState createState()=>_ExplorarState();
}

class _ExplorarState extends State<ExplorarState> {
  
   int _viewOptionsIndex = 0;

   final List _destinations = [
    {
      "name": "Mount Fuji",
      "city": "Tokyo",
      "country": "Japan",
      "rating": 5,
      "visitCount": 5000000,
      "temperature": 0,
      "description": "Mount Fuji is Japan's most iconic peak, offering stunning views of its caldera and hiking trails for adventurers. It is a sacred site and a popular destination for tourists and mountaineers, as well as one of the most photogenic natural landscapes in the world.",
      "travelTime": 22,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Taj Mahal",
      "city": "Agra",
      "country": "India",
      "rating": 5,
      "visitCount": 8000000,
      "temperature": 35,
      "description": "One of the Seven Wonders of the World, the Taj Mahal is a masterpiece of white marble symbolizing eternal love. Visitors can explore its lush gardens, majestic mausoleum, and learn about its rich history.",
      "travelTime": 24,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Christ the Redeemer",
      "city": "Rio de Janeiro",
      "country": "Brazil",
      "rating": 5,
      "visitCount": 3500000,
      "temperature": 25,
      "description": "Christ the Redeemer is one of Brazil's greatest icons, offering a stunning panoramic view of Rio de Janeiro. The towering statue is a pilgrimage site and provides a unique experience, especially at sunset.",
      "travelTime": 9,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Colosseum",
      "city": "Rome",
      "country": "Italy",
      "rating": 5,
      "visitCount": 7000000,
      "temperature": 15,
      "description": "The Colosseum is one of the largest amphitheaters in the world and a symbol of Ancient Rome. Visitors can walk through its ruins and feel the grandeur of ancient history while learning about gladiators and historical events.",
      "travelTime": 11,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Machu Picchu",
      "city": "Cusco",
      "country": "Peru",
      "rating": 5,
      "visitCount": 1200000,
      "temperature": 18,
      "description": "Machu Picchu is an ancient Incan city located in the Peruvian mountains, offering an immersive historical and spiritual experience. Its mysterious ruins and stunning views are unforgettable for any visitor.",
      "travelTime": 9,
      "price": 1500,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Sugarloaf Mountain",
      "city": "Rio de Janeiro",
      "country": "Brazil",
      "rating": 4,
      "visitCount": 2000000,
      "temperature": 26,
      "description": "Sugarloaf Mountain offers one of the most spectacular views of Rio de Janeiro, with the sea and city at your feet. The cable car ride to the summit is a unique experience, providing an incredible perspective of Guanabara Bay.",
      "travelTime": 9,
      "price": 1300,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Great Wall of China",
      "city": "Beijing",
      "country": "China",
      "rating": 5,
      "visitCount": 10000000,
      "temperature": 10,
      "description": "The Great Wall of China is one of the most imposing structures in the world, stretching for thousands of kilometers. Walking through its preserved sections, visitors experience the rich military history and the grandeur of ancient engineering.",
      "travelTime": 24,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Sagrada Familia",
      "city": "Barcelona",
      "country": "Spain",
      "rating": 5,
      "visitCount": 5000000,
      "temperature": 20,
      "description": "Sagrada Familia, designed by Antoni Gaudí, is one of the most impressive architectural works in the world. Its intricate details and the grandeur of its towers make it one of the most visited sites in Spain.",
      "travelTime": 11,
      "price": 1300,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Angkor Wat",
      "city": "Siem Reap",
      "country": "Cambodia",
      "rating": 5,
      "visitCount": 2000000,
      "temperature": 30,
      "description": "Angkor Wat is the largest religious complex in the world and a cultural treasure, with stunning temples and sculptures. The sunrise at Angkor is a unique experience, as the sun's rays illuminate the temple towers.",
      "travelTime": 23,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Arc de Triomphe",
      "city": "Paris",
      "country": "France",
      "rating": 4,
      "visitCount": 4000000,
      "temperature": 15,
      "description": "The Arc de Triomphe is a historic landmark in Paris, commemorating France's military victories. Climbing to the top offers breathtaking views of the city and the famous Avenue des Champs-Élysées.",
      "travelTime": 11,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Golden Gate Bridge",
      "city": "San Francisco",
      "country": "United States",
      "rating": 5,
      "visitCount": 8000000,
      "temperature": 14,
      "description": "The Golden Gate Bridge is one of the most famous bridges in the world, known for its iconic design and vibrant colors. Walking along its pathways provides magnificent views of the San Francisco Bay.",
      "travelTime": 12,
      "price": 1500,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Stonehenge",
      "city": "Wiltshire",
      "country": "United Kingdom",
      "rating": 4,
      "visitCount": 1500000,
      "temperature": 10,
      "description": "Stonehenge is a mysterious stone circle whose origins are still debated by archaeologists. Visiting the site allows you to connect with ancient human mysteries while exploring the surrounding area.",
      "travelTime": 14,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Iguazu Falls",
      "city": "Foz do Iguaçu",
      "country": "Brazil",
      "rating": 5,
      "visitCount": 1200000,
      "temperature": 25,
      "description": "Iguazu Falls is one of the largest and most impressive waterfall systems in the world, located on the border between Brazil and Argentina. Visitors can get close to the falls on walkways or admire the view from observation decks.",
      "travelTime": 6,
      "price": 1000,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Neuschwanstein Castle",
      "city": "Bavaria",
      "country": "Germany",
      "rating": 5,
      "visitCount": 1500000,
      "temperature": 8,
      "description": "Neuschwanstein Castle looks like it came out of a fairy tale, with its tall towers and Alpine backdrop. The site offers a glimpse into real life inspired by legends and mythology.",
      "travelTime": 13,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Sydney Opera House",
      "city": "Sydney",
      "country": "Australia",
      "rating": 5,
      "visitCount": 2000000,
      "temperature": 22,
      "description": "The Sydney Opera House is a world-renowned architectural landmark, known for its unique sail-like design. Besides its stunning exterior, the venue is a cultural hub offering performances of music, theatre, and ballet.",
      "travelTime": 20,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Chichen Itza",
      "city": "Yucatán",
      "country": "Mexico",
      "rating": 5,
      "visitCount": 2000000,
      "temperature": 33,
      "description": "Chichen Itza is one of the main Mayan cities, famous for the pyramid of Kukulcán. This archaeological site offers an immersion into the ancient civilization and features incredible monuments, cenotes, and temples.",
      "travelTime": 10,
      "price": 1000,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Pyramids of Giza",
      "city": "Cairo",
      "country": "Egypt",
      "rating": 5,
      "visitCount": 5000000,
      "temperature": 36,
      "description": "The Pyramids of Giza are one of the most impressive wonders in the world. Here, visitors can explore the ancient pyramids, including the Great Pyramid of Khufu, and learn about the fascinating history of Ancient Egypt.",
      "travelTime": 19,
      "price": 1500,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Eiffel Tower",
      "city": "Paris",
      "country": "France",
      "rating": 5,
      "visitCount": 7000000,
      "temperature": 15,
      "description": "The Eiffel Tower is one of the most visited monuments in the world, offering stunning views of Paris. Climbing to the top provides an unparalleled panoramic view of the French capital.",
      "travelTime": 11,
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Guilin",
      "city": "Guilin",
      "country": "China",
      "rating": 4,
      "visitCount": 600000,
      "temperature": 18,
      "description": "Guilin is famous for its breathtaking karst landscapes and winding rivers. A boat ride along the Li River offers an unforgettable experience with towering limestone peaks and a breathtaking view.",
      "travelTime": 24,
      "price": 1000,
      "image": "https://via.placeholder.com/150"
    }
];

  @override
  Widget build(BuildContext context) {
    const optionsStyle = TextStyle(
      fontSize: 12,
      color: Colors.black,
    );

    return SingleChildScrollView(


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 20),
            child: 
            Container(
              
              height: 40,
              
              decoration: 
              
              BoxDecoration(
                border: Border.all( ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: 
              Center(
                child: Row(
              
              children: [
                const Expanded(
                
                  child:  SizedBox(
                    
                    height: 40,
                    
                    child: TextField(
                      cursorHeight: 12,
                      
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      hintText: 'Pesquisar...',

                      hintStyle: TextStyle(fontSize: 12)
                    ),
                    
                  ),
                  
                  )
                ),
                
                SizedBox(
                  width: 1,
                  height: 20,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(Icons.access_alarm, size: 20),
                )
                
              ],
              
            ),
              )
            
            )
            
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Lugares populares'),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,      
                    padding: const EdgeInsets.all(0)
                  ),
                  onPressed: (){},
                  child: const Text('Ver tudo', style: TextStyle(fontSize: 11, color: Colors.grey )),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                GestureDetector(
                  onTap: (){
                    setState((){
                    _viewOptionsIndex = 0;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve:  Curves.easeInOut,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _viewOptionsIndex == 0 ? const Color.fromARGB(223, 57, 56, 56) : Colors.transparent,
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: Center(
                      child: Text('Most Viewed' , style: TextStyle(color: _viewOptionsIndex == 0 ? Colors.white : Colors.grey),),
                    )
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    setState((){
                    _viewOptionsIndex = 1;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve:  Curves.easeInOut,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _viewOptionsIndex == 1 ? const Color.fromARGB(223, 57, 56, 56) : Colors.transparent,
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: Center(
                      child: Text('Nearby' , style: TextStyle(color: _viewOptionsIndex == 1 ? Colors.white : Colors.grey),),
                    )
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    setState((){
                    _viewOptionsIndex = 2;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve:  Curves.easeInOut,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _viewOptionsIndex == 2 ? const Color.fromARGB(223, 57, 56, 56) : Colors.transparent,
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: Center(
                      child: Text('Latest' , style: TextStyle(color: _viewOptionsIndex == 2 ? Colors.white : Colors.grey),),
                    )
                  ),
                )
                
                
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 350,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: _destinations.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 5),
                  child:CardDestination(
                          name: _destinations[index]["name"],
                          city: _destinations[index]["city"],
                          country: _destinations[index]["country"],
                          rating: _destinations[index]["rating"],
                        ),

                );
              },
            ),
          ),
        ],
      ),
    );
  }
  


}