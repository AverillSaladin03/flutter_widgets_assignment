part of 'pages.dart';

var simulacraDesc =
    "Tower of Fantasy juga memiliki 'Simulacra', yang terdengar sangat mirip dengan 'Simulacrum', tetapi merupakan sesuatu yang berbeda. Dalam gim, Simulacra adalah karakter senjata yang dapat Anda buka di Simulacrum. Karakter ini adalah pahlawan kuno yang kesadarannya masing-masing telah ditransfer ke Kecerdasan Buatan yang dapat dilengkapi oleh pemain. Setelah pemain membuka kunci Simulacra, mereka dapat memanggil Simulacra itu, yang pada dasarnya melengkapi karakter. Kemudian, karakter pemain akan mengambil bentuk, kemampuan, dan kepribadian dari Simulacra tersebut. Kedengarannya rumit, tetapi pikirkan seperti ini: Simulacrum adalah pasar, dan Simulacra adalah karakter berbeda yang dapat Anda buka di pasar itu. Satu-satunya perbedaan di Tower of Fantasy adalah bahwa Anda tidak 'membeli' karakter seperti Anda mungkin barang di pasar tradisional. Sebagai gantinya, Anda harus membeli paket dalam permainan, dan mengandalkan sedikit keberuntungan untuk mendapatkan Simulacra baru.";

class homePage extends StatelessWidget {
  const homePage({super.key});

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
            color: Color.fromARGB(103, 237, 132, 13),
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                // Cover Images + Favorite
                Flexible(
                    flex: 4,
                    child: Stack(children: [
                      Image.asset("assets/images/nemesis.jpg")
                    ])),

                // List Images
                Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 8, left: 16, right: 16, bottom: 4),
                      width: double.infinity,
                      height: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset("assets/images/nemesisIcon.png"),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset("assets/images/friggIcon.png"),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset("assets/images/claudiaIcon.png"),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset("assets/images/cobaltbIcon.png"),
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
