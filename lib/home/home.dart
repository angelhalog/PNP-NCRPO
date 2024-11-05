import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'info.dart'; 

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
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
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: _buildLogosRow(),
                ),
                _buildButton('EDPPAS', 'https://app.edppas.com/'),
                const SizedBox(height: 20),
                _buildButton('EGOV PH',
                    'https://play.google.com/store/apps/details?id=egov.app/'),
                const SizedBox(height: 20),
                _buildButton('PRMS', 'https://pais.pnp.gov.ph/'),
                const SizedBox(height: 20),
                _buildButton('PES', 'https://mail.pnp.gov.ph/mail/'),
                const SizedBox(height: 20),
                _buildButton('ONLINE PAY SLIP', 'https://payslip.pnppms.org/'),
                const SizedBox(height: 20),
                _buildButton('POP',
                    'https://akg.pnp.gov.ph/wp-content/uploads/2024/01/POP-Manual-2021.pdf/'),
                const SizedBox(height: 20),
                _buildButton('APP INFORMATION', ''), // No URL needed for navigation
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, String urlString) {
    final isSelected = _selectedButton == text;

    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedButton = text;
          });
          if (text == 'APP INFORMATION') {
            // Navigate to info screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoScreen()),
            );
          } else {
            openUrl(urlString);
          }
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isSelected
              ? const Color.fromARGB(255, 32, 78, 147)
              : const Color.fromARGB(255, 79, 125, 180),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildLogosRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/header.png',
          height: 150,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

// Function to launch URL
void openUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
