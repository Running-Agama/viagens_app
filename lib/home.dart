import 'package:flutter/material.dart';
import 'explore.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 250,
        leading: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Olá, c!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text('Explore o mundo'),
            ],
          ),
        ),
        actions: const [
          SizedBox(
            width: 100,
            child: Icon(Icons.ac_unit_rounded),
          ),
        ],
      ),
      body: IndexedStack(
        index: _index,
        children: [
          Explorar(),
          Text('oi')
        ],
      ),

        
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index)=>setState(() {
          _index = index;
        }),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: ''),
        ],
      ),
    );
  }
}
