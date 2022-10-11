part of 'pages.dart';

class CreateSimulacra extends StatefulWidget {
  const CreateSimulacra({Key? key}) : super(key: key);
  static const String routeName = '/createSimulacra';

  @override
  _CreateSimulacraState createState() => _CreateSimulacraState();
}

class _CreateSimulacraState extends State<CreateSimulacra> {
  @override
  void initState() {
    super.initState();
  }

  final _submitKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _roleController = TextEditingController();
  final _elementController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _roleController.dispose();
    _elementController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Simulacra"),
        backgroundColor: Color.fromARGB(255, 237, 132, 13),
        foregroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 215, 195, 182),
                Color.fromARGB(150, 237, 132, 13)
              ])),
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
                key: _submitKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Validate Account: ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return EmailValidator.validate(value!)
                            ? null
                            : "Email Invalid!";
                      },
                    ),
          
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Simulacra Information: ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //Simulacra Name
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter the name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value!.isEmpty ? "Name cannot be empty!" : null;
                      },
                    ),
          
                    SizedBox(
                      height: 16,
                    ),
          
                    //Simulacra Role
                    TextFormField(
                      controller: _roleController,
                      decoration: InputDecoration(
                          labelText: "Role",
                          prefixIcon: Icon(Icons.recent_actors),
                          hintText: "What is the Role?",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value!.isEmpty ? "Role cannot be empty" : null;
                      },
                    ),
          
                    SizedBox(
                      height: 16,
                    ),
          
                    //Simulacra Element
                    TextFormField(
                      controller: _elementController,
                      decoration: InputDecoration(
                          labelText: "Element",
                          prefixIcon: Icon(Icons.air),
                          hintText: "What is the Element?",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value!.isEmpty ? "Element cannot be empty" : null;
                      },
                    ),
          
                    SizedBox(
                      height: 16,
                    ),
                    //Submit Form
                    Align(
                      child: ElevatedButton(
                          style: ButtonStyle(),
                          onPressed: () {
                            if (_submitKey.currentState!.validate()) {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                          title: Text('Simulacra Created!'),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "Name: " +
                                                    _nameController.text
                                                        .toString() +
                                                    "\nElement: " +
                                                    _elementController.text
                                                        .toString() +
                                                    "\nRole: " +
                                                    _roleController.text
                                                        .toString() +
                                                    "\nCreated by: " +
                                                    _emailController.text
                                                        .toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil
                                                  <dynamic>(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          homePage(),
                                                    ),
                                                    (route) => false,
                                                  );
                                                },
                                                child: Text("Ok"))
                                          ]));
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                          title: Text('Failed to create!'),
                                          content: Text(
                                              'Fill up the form first!'),
                                          actions: <Widget>[
                                            TextButton(
                                                onPressed: (() {
                                                  Navigator.of(context)
                                                      .pop(context);
                                                }),
                                                child: Text("Ok"))
                                          ]));
                            }
                          },
                          child: Text("Submit")),
                    )
                  ],
                )),
          ),
        ),
    );
  }
}
