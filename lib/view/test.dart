part of 'pages.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  final String simulacraDesc =
      "Simulacra (aka Mimics) are the player's representation of the characters found in Tower of Fantasy. They have an associated weapon and an optional passive effect. Their associated matrices must be obtained separately. The Simulacrum is a place in Tower of Fantasy, one where you can purchase new weapons. Instead of guns or swords, however, these weapons are equippable characters, along with their abilities and playstyles. If you ever see “the Simulacrum” referenced, just remember that it is the facility that functions almost like a marketplace in Tower of Fantasy. Simulacra can’t be purchased directly. Instead, you can only buy packs that give you a chance at picking up a new Simulacra. These are purchased with a Gold Nucleus, though you can spend ten for a chance at a more powerful Simulacra. Finally, you can also buy the Tower of Fantasy Upgrade Pass, which will give you a Simulacra and several other rewards in addition to access to the game’s seasonal pass reward model.";
  IconData icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simulacra"),
          backgroundColor: Color.fromARGB(255, 237, 132, 13),
          foregroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 215, 195, 182),
                  Color.fromARGB(150, 237, 132, 13)
                ])),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                // Cover Images + Favorite
                Flexible(
                  flex: 3,
                  child: Stack(children: [
                    Image.asset(
                      "assets/images/nemesis.jpg",
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: const EdgeInsets.only(top: 8, right: 8),
                        child: IconButton(
                          icon: (_isFavorited
                              ? const Icon(Icons.favorite)
                              : const Icon(Icons.favorite_border)),
                          color: Colors.red,
                          onPressed: _toggleFavorite,
                        ),
                      ),
                    ),
                  ]),
                ),

                // List Images
                Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 8, left: 16, right: 16, bottom: 4),
                      // width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset(
                                "assets/images/nemesisIcon.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset("assets/images/friggIcon.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child:
                                  Image.asset("assets/images/claudiaIcon.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child:
                                  Image.asset("assets/images/cobaltbIcon.png"),
                            ),
                          ],
                        ),
                      ),
                    )),

                //Title
                Flexible(
                  flex: 1,
                  child: Text(
                    "Definisi :",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Text Deskripsi
                Flexible(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          margin: EdgeInsets.only(left: 16, right: 16, top: 4),
                          child: SingleChildScrollView(
                            child: Text(
                              simulacraDesc,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.only(right: 16, bottom: 16),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/createSimulacra');
                              },
                              child: Text("Create Simulacra"),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 237, 132, 13),
                                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  elevation: 4,
                              ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
