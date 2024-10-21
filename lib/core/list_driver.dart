import 'package:final_project/core/manifest.dart';
import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  final String jadwal;
  final String mobil;
  final String tujuan;
  final String asal;
  final String Sukses;

  const BoardingPass({
    Key? key,
    required this.jadwal,
    required this.mobil,
    required this.tujuan,
    required this.Sukses,
    required this.asal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Manifest(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
              child: Center(
                child: Text(
                  jadwal,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Souvenir"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  _buildInfoRow("Mobil", mobil),
                  SizedBox(height: 8),
                  _buildInfoRow("Asal", asal),
                  SizedBox(height: 8),
                  _buildInfoRow("Tujuan", tujuan),
                  SizedBox(height: 8),
                  _buildInfoRow("Status", Sukses),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "Souvenir"),
          ),
        ),
        Text(
          ":",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "Souvenir"),
          ),
        ),
      ],
    );
  }
}
