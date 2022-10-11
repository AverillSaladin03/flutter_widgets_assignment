part of 'pages.dart';

class CreateSimulacra extends StatefulWidget {
  const CreateSimulacra({ Key? key }) : super(key: key);
  static const String routeName = '/createSimulacra';

  @override
  _CreateSimulacraState createState() => _CreateSimulacraState();
}

class _CreateSimulacraState extends State<CreateSimulacra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Simulacra"),
        backgroundColor: Color.fromARGB(255, 237, 132, 13),
        foregroundColor: Colors.black,
      ),
    );
  }
}