import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EgovScreen extends StatefulWidget {
  @override
  _EgovScreenState createState() => _EgovScreenState();
}

class _EgovScreenState extends State<EgovScreen> {
  int? _activeButton;

  final String androidUrl = 'https://play.google.com/store/apps/details?id=egov.app';
  final String iosUrl = 'https://apps.apple.com/ph/app/egovph/id6447682225';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EGOV PH'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/egov.png',
                  width: 450, 
                  height: 280, 
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _activeButton = 1; 
                    });
                    launchUrl(
                      Uri.parse(androidUrl),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50), 
                    backgroundColor: _activeButton == 1
                        ? Colors.green
                        : const Color.fromARGB(255, 79, 125, 180),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                  child: Text(
                    'Download EGOV PH for Android',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20), 

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _activeButton = 2;
                    });
                    launchUrl(
                      Uri.parse(iosUrl),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50),
                    backgroundColor: _activeButton == 2
                        ? Colors.green
                        : const Color.fromARGB(255, 79, 125, 180),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                  child: Text(
                    'Download EGOV PH for iOS',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
