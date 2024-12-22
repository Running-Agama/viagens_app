import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './components/card_destinations/card.dart';

class Explorar extends StatelessWidget {
  const Explorar({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text('Lugares populares', style: optionsStyle),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text('Ver tudo', style: optionsStyle),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: const Text('Próximos', style: optionsStyle),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: const Text('Latest', style: optionsStyle),
                ),
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
                  child: CardDestination(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
