import 'package:final_project/core/list_driver.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/colors.dart';
import 'package:final_project/core/header.dart';
import 'package:flutter/widgets.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultHeader(
        imagePath: 'assets/images/whitelogo.png',
        backgroundImagePath: 'assets/images/variasi.png',
      ),
      backgroundColor: COLORS.primaryBg,
      body: _getBodyWidget(),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, "Home", 0),
            _buildNavItem(Icons.track_changes, "Track", 1),
            _buildNavItem(Icons.report_gmailerrorred, "Report", 2),
            _buildNavItem(Icons.person, "Profile", 3),
          ],
        ),
      ),
    );
  }

  Widget _getBodyWidget() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return _buildTrackContent();
      case 2:
        return _buildReportContent();
      case 3:
        return _buildProfileContent();
      default:
        return _buildHomeContent();
    }
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                BoardingPass(
                    jadwal: "Rabu, 4 September 2024 | 22:00",
                    mobil: "AS 101 | D7816A4",
                    asal: "BALTOS",
                    tujuan: "BANDUNG",
                    Sukses: "Berhasil"),
                BoardingPass(
                    jadwal: "Rabu, 4 September 2024 | 22:00",
                    mobil: "AS 101 | D7816A4",
                    asal: "BALTOS",
                    tujuan: "BANDUNG",
                    Sukses: "Berhasil"),
                BoardingPass(
                    jadwal: "Rabu, 4 September 2024 | 22:00",
                    mobil: "AS 101 | D7816A4",
                    asal: "BALTOS",
                    tujuan: "BANDUNG",
                    Sukses: "Berhasil"),
                BoardingPass(
                    jadwal: "Rabu, 4 September 2024 | 22:00",
                    mobil: "AS 101 | D7816A4",
                    asal: "BALTOS",
                    tujuan: "BANDUNG",
                    Sukses: "Berhasil"),
                BoardingPass(
                    jadwal: "Rabu, 4 September 2024 | 22:00",
                    mobil: "AS 101 | D7816A4",
                    asal: "BALTOS",
                    tujuan: "BANDUNG",
                    Sukses: "Berhasil"),
                BoardingPass(
                    jadwal: "Rabu, 4 September 2024 | 22:00",
                    mobil: "AS 101 | D7816A4",
                    asal: "BALTOS",
                    tujuan: "BANDUNG",
                    Sukses: "Berhasil"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrackContent() {
    return Center(
      child: Text(
        "Track Screen",
        style: TextStyle(fontSize: 20, fontFamily: "FutureFont"),
      ),
    );
  }

  Widget _buildReportContent() {
    return Center(
      child: Text(
        "Report Screen",
        style: TextStyle(fontSize: 20, fontFamily: "FutureFont"),
      ),
    );
  }

  Widget _buildProfileContent() {
    return Center(
      child: Text(
        "Profile Screen",
        style: TextStyle(fontSize: 20, fontFamily: "FutureFont"),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? COLORS.primary : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? COLORS.primary : Colors.grey,
              fontSize: 12,
              fontFamily: "FutureFont",
            ),
          ),
        ],
      ),
    );
  }
}
