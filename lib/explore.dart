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
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 30),
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
                      color: _viewOptionsIndex == 0 ? const Color.fromARGB(223, 57, 56, 56) : Colors.white,
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
                      color: _viewOptionsIndex == 1 ? const Color.fromARGB(223, 57, 56, 56) : Colors.white,
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
                      color: _viewOptionsIndex == 2 ? const Color.fromARGB(223, 57, 56, 56) : Colors.white,
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const CardDestination(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  


}