import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EdppasScreen extends StatefulWidget {
  @override
  _EdppasScreenState createState() => _EdppasScreenState();
}

class _EdppasScreenState extends State<EdppasScreen> {
  final String edppasUrl = 'https://app.edppas.com/';
  Color buttonColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EDPPAS'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/blue.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.5),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/edppas.png',
                  width: 350, 
                  height: 250,
                  fit: BoxFit.contain, 
                ),
                const SizedBox(height: 20), 
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonColor = buttonColor == Colors.blue ? Colors.green : Colors.blue;
                    });
                    launchUrl(
                      Uri.parse(edppasUrl),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                  child: Text(
                    'Go to EDPPAS',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
