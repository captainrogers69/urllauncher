import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class screen2 extends StatefulWidget {
  const screen2({ Key? key }) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

  
_launchURLBrowser() async {
  const url = 'https://wallpapercave.com/loki-and-sylvie-wallpapers';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  
_launchURLApp() async {
  const url = 'https://wallpapercave.com/loki-and-sylvie-wallpapers';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: camel_case_types
class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('Terminal'),
            
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 240.0,),
            Text('Thank you for Submitting!!',style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 20.0,),
            ElevatedButton(
              onPressed: _launchURLApp,
              child: const Text("Here")
                 ),
            SizedBox(height: 20.0,),
            ElevatedButton(
              onPressed: _launchURLBrowser,
              child: const Text("Here")
                 ),
          ],
        ),
      ),
    );
  }
}
