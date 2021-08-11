import 'package:flutter/material.dart';
import 'package:urllauncher/screen2.dart';


void main() {
  runApp(const MyApp(

  ));
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green[700]
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(width: 100.0,),
            const Text("Task 4", style: TextStyle(fontSize: 27.0),),
            const SizedBox(width: 108.0,),
          ],
        ),
      ),
    body:
        SingleChildScrollView(
          child: Column(
                children: [
                  Image.asset('assets/sylvie.jpeg'),
                  const Text("Sylvie is the Latest character introduced to MCU",style: TextStyle(fontSize: 17.0),),
                  Image.asset('assets/Sophia.jpeg'),
                  const Text("it was portrayed by Sophia Di Martino. She was",style: TextStyle(fontSize: 17.0),),
                  const Text("at the top of IMDB's Most Populars",style: TextStyle(fontSize: 17.0),),
                  const Text("Click below Button to see more Sylvie's Wallpaper",style: TextStyle(fontSize: 17.0),),
                  // ignore: deprecated_member_use
                  RaisedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen1()));
                  }, child: const Text("Show this Thread",style: TextStyle(fontWeight: FontWeight.w700),),)
                ],
              ),
        ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const DrawerHeader(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sophia2.jpeg'),
              ),
            ),
            Column(
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(child:
                  const Text('"Love is Mischief"', style: TextStyle(fontSize: 30.0),),
                  color: Colors.green,
                  ),
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.home),title: Text('Asgard'),
            ),
            const ListTile(
              leading: Icon(Icons.local_post_office), title: Text('TVA'),
            ),
            const ListTile(
              leading: Icon(Icons.place_outlined), title: Text('2050'),
            ),
            const ListTile(
              leading: Icon(Icons.arrow_forward), title: Text('Lementis 1'),
            ),
            const ListTile(
              leading: Icon(Icons.voice_chat), title: Text('He who Remains'),
            ),
            const ListTile(
              leading: Icon(Icons.new_label), title: Text('New TVA'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haha fool yaa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/loki.jpeg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: const Text("Come on, What did you Expect!", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0, fontStyle: FontStyle.italic),)),
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.verified_user_rounded), labelText: "Submit your Response"),
                maxLength: 30,
            ),
            ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const screen2()));
            },
            child: const Text("Submit!"),
          ),
          ],
        ),
      ),
    );
  }
}