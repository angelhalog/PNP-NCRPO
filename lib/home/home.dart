import 'package:flutter/material.dart';
import 'package:ncrpo_mobile_app_information/home/egov.dart';
import 'package:url_launcher/url_launcher.dart';
import 'edppas.dart';
import 'info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedButton; // Track which button is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: _buildLogosRow(),
                ),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'EDPPAS';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EdppasScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'EDPPAS'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'EDPPAS',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'EGOV PH';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EgovScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'EGOV PH'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'EGOV PH',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'NCRPO WEBSITE';
                      });
                      launchUrl(
                        Uri.parse('https://ncrpo.pnp.gov.ph/'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'NCRPO WEBSITE'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'NCRPO WEBSITE',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'PRMS';
                      });
                      launchUrl(
                        Uri.parse('https://pais.pnp.gov.ph/'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'PRMS'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'PRMS',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'PES';
                      });
                      launchUrl(
                        Uri.parse('https://mail.pnp.gov.ph/mail/'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'PES'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'PES',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'ONLINE PAYSLIP';
                      });
                      launchUrl(
                        Uri.parse('https://payslip.pnppms.org/'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'ONLINE PAYSLIP'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'ONLINE PAYSLIP',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'POP';
                      });
                      launchUrl(
                        Uri.parse(
                            'https://sendanywhe.re/LEEY3BBH'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: _selectedButton == 'POP'
                          ? const Color.fromARGB(255, 32, 78, 147)
                          : const Color.fromARGB(255, 79, 125, 180),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'POP',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
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

  Widget _buildLogosRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/header.png',
          height: 170,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
