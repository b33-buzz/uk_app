import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/widget/card_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: 50,
            width: 200,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Perform search action
                  },
                  icon: const Icon(Icons.search),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for a concept, term, or keyword.',
                      hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'What we can help you find,\nVark?',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Row(children: [
            CardWidget(
              text: 'Variables',
              image: 'assets/images/image 2.png',
              padding: EdgeInsets.only(left: 30, top: 20),
            ),
            CardWidget(
              text: 'Python',
              image: 'assets/images/Python.png',
              padding: EdgeInsets.only(left: 10, top: 20),
            ),
          ]),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'More ways to learn in 2021',
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: SizedBox(
                  width: 330,
                  height: 100,
                  child: Image.asset(
                    'assets/images/image 3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                width: 330,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find what language works for you!',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                      style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
