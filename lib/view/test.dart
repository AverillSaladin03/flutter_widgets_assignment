part of 'pages.dart';

class testPage extends StatefulWidget {
  const testPage({super.key});

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
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
                colors: [Color.fromARGB(255, 215, 195, 182), Color.fromARGB(180, 237, 132, 13)])
            ),
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                // Cover Images + Favorite
                Flexible(
                  flex: 4,
                  child: Stack(children: [
                    Image.asset("assets/images/nemesis.jpg"),
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
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 4),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child:
                                  Image.asset("assets/images/nemesisIcon.png"),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset("assets/images/friggIcon.png"),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child:
                                  Image.asset("assets/images/claudiaIcon.png"),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child:
                                  Image.asset("assets/images/cobaltbIcon.png"),
                            ),
                          ],
                        ),
                      ),
                    )),
                // Text Deskripsi
                Flexible(
                    flex: 5,
                    child: Stack(children: [
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
                      )
                    ])),
              ],
            ),
          ),
        ));
  }
}
