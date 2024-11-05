import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'info.dart'; // Import the info screen

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
                  padding: const EdgeInsets.only(bottom: 30),
                  child: _buildLogosRow(),
                ),
                _buildButton('EDPPAS', 'https://app.edppas.com/'),
                const SizedBox(height: 10),
                _buildButton('EGOV PH',
                    'https://play.google.com/store/apps/details?id=egov.app/'),
                const SizedBox(height: 10),
                _buildButton('NCRPO WEBSITE', 'https://ncrpo.pnp.gov.ph/'),
                const SizedBox(height: 10),
                _buildButton('PRMS', 'https://pais.pnp.gov.ph/'),
                const SizedBox(height: 10),
                _buildButton('PES', 'https://mail.pnp.gov.ph/mail/'),
                const SizedBox(height: 10),
                _buildButton('ONLINE PAYSLIP', 'https://payslip.pnppms.org/'),
                const SizedBox(height: 10),
                _buildButton('POP',
                    'https://akg.pnp.gov.ph/wp-content/uploads/2024/01/POP-Manual-2021.pdf/'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InfoScreen()),
          );
        },
        backgroundColor: Color.fromARGB(255, 32, 78, 147),
        child: const Icon(
          Icons.help_outline,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildButton(String text, String urlString) {
    final isSelected = _selectedButton == text;

    return SizedBox(
      width: 220, // Increased width for larger buttons
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedButton = text;
          });
          openUrl(urlString);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isSelected
              ? const Color.fromARGB(255, 32, 78, 147)
              : const Color.fromARGB(255, 79, 125, 180),
          padding: const EdgeInsets.symmetric(vertical: 12), // Increased padding
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16), // Optional: adjust text size
        ),
      ),
    );
  }

  Widget _buildLogosRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/header.png',
          height: 170, // Increased height for larger header
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
