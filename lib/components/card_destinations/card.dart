import 'package:flutter/material.dart';

class CardDestination extends StatefulWidget {
  final String name;
  final String city;
  final String country;
  final int rating;

  const CardDestination({
    required this.name,
    required this.city,
    required this.country,
    required this.rating,
  });

  @override
  _CardDestinationState createState() => _CardDestinationState();
}


class _CardDestinationState extends State<CardDestination> {
  

  final TextStyle cardStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
  final TextStyle subtituloStyle = const TextStyle(
    color: Colors.white,
    fontSize: 10,
  );

  bool isPressed = false;

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
          ),
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
                  shadowColor: Colors.transparent,
                  minimumSize: Size(50, 30),
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                label: 
                  isPressed 
                  ? const Icon(Icons.favorite, color: Colors.red) 
                  : const Icon(Icons.favorite_border, color: Colors.white)

              ),
            ],
          ),
          Card(
            color: const Color.fromARGB(137, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            //precisa fazer um scroll nos textos que excedem a largura
                            Text('${widget.name}, ', style: cardStyle),
                            Text(widget.country, style: cardStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 2, right: 5),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.white),
                        const SizedBox(width: 3),
                        Text(widget.city + ', ', style: subtituloStyle),
                        Text(widget.country, style: subtituloStyle),
                        Expanded(child: Container()),
                        const Icon(Icons.star, color: Colors.white),
                        const SizedBox(width: 3),
                        Text(widget.rating.toString(), style: subtituloStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
