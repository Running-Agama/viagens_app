import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100,
        leadingWidth: 250,
        leading: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá, c!',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text('Explore o mundo')
          ],
        ),
        actions: const [
          SizedBox(
            width: 100,
            child: Icon(Icons.ac_unit_rounded),
          )
        ],
      ),


      body: Column(
        children: [
          const TextField(),
          const Row(
            children: [Text('Lugares populares'), Text('Ver tudo')],
          ),
          const Flex( 
            direction: Axis.horizontal , mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children:[
              Text('Mais visualizados'),
              Text('Nearby'),
              Text('Latest')
            ],
          ),
        
          Flexible(
             child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
                return Row(
                  children: [
                    Container(
                      height: 350,
                      width: 120,
                      color: index % 2 == 0 ? Colors.blue : Colors.amber,
                      child: 
                      Text('d'),
                    )
                  ],
                );
              },
              
          ),)
        ],
        
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'd'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'd'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'd'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'd')
        ],
      ),
        
       
      
    );
  }
}
