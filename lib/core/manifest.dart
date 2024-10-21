import 'package:barcode_widget/barcode_widget.dart';
import 'package:final_project/core/colors.dart';
import 'package:final_project/core/header.dart';
import 'package:flutter/material.dart';

class Manifest extends StatefulWidget {
  const Manifest({super.key});

  @override
  State<Manifest> createState() => _ManifestState();
}

class _ManifestState extends State<Manifest> {
  int _selectedIndex = 0;

  get index => null;

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
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  _buildTrainCard(),
                  SizedBox(height: 16),
                  _buildTravel(),
                  SizedBox(height: 16),
                  _buildPaket(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainCard() {
    final List<Map<String, String>> manifestData = [
      {'Trip Code': 'BTSCRB'},
      {'Original TC': 'BTSCRB_1600.30'},
      {'Date': '2024-10-17'},
      {'Fuel': '100.000'},
      {'Tol': '75.000'},
      {'Driver Funds': '50.000'},
      {'Additional': '0'},
    ];

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildSectionHeader("Manifest Details"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Theme(
              data: Theme.of(context).copyWith(
                dataTableTheme: DataTableThemeData(
                  headingTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  dataTextStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DataTable(
                  horizontalMargin: 24,
                  columnSpacing: 48,
                  headingRowHeight: 48,
                  dataRowHeight: 56,
                  columns: [
                    DataColumn(
                      label: Text('Category'),
                      tooltip: 'Manifest category',
                    ),
                    DataColumn(
                      label: Text('Value'),
                      tooltip: 'Category value',
                    ),
                  ],
                  rows: manifestData
                      .map((item) => DataRow(
                            cells: [
                              DataCell(Text(
                                item.keys.first,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                              DataCell(Text(
                                item.values.first,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "Souvenir",
                                ),
                              )),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          _buildBarcodeButton(),
        ],
      ),
    );
  }

  Widget _buildTravel() {
    final List<Map<String, String>> travelData = [
      {
        'no': '1',
        'name': 'DEVELOPER',
        'seat': '8',
        'bookingCode': 'TARN241008KB1H',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '2',
        'name': 'DEVELOPER',
        'seat': '10',
        'bookingCode': 'TARN241008AHMZ',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '3',
        'name': 'LUTHFI FADLE RYNALDY',
        'seat': '1',
        'bookingCode': 'TARN241008LVX8',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '4',
        'name': 'JUHANA',
        'seat': '4',
        'bookingCode': 'TARN2410082NDK',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '5',
        'name': 'JUHANA',
        'seat': '6',
        'bookingCode': 'TARN24100890RL',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '6',
        'name': 'DEDE HERMAWAN',
        'seat': '4',
        'bookingCode': 'TARN241002YNTN',
        "Asal": "BALTOS",
        "Tujuan": "PALIMANAN"
      },
      {
        'no': '7',
        'name': 'JUHANA',
        'seat': '2',
        'bookingCode': 'TARN241008YE5X',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '8',
        'name': 'DEVELOPER',
        'seat': '7',
        'bookingCode': 'TARN241008MEVY',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '9',
        'name': 'HENDRIS',
        'seat': '11',
        'bookingCode': 'TARN241008DTI4',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '10',
        'name': 'DEVELOPER',
        'seat': '9',
        'bookingCode': 'TARN241008WBRU',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '11',
        'name': 'JUHANA',
        'seat': '5',
        'bookingCode': 'TARN241008VKPC',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '12',
        'name': 'SUPER ADMIN',
        'seat': '3',
        'bookingCode': 'TARN2410088WZ0',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '13',
        'name': 'DEVELOPER',
        'seat': '13',
        'bookingCode': 'TARN241008HPBP',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '14',
        'name': 'DEVELOPER',
        'seat': '12',
        'bookingCode': 'TARN241008AMLS',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      },
      {
        'no': '15',
        'name': 'DEVELOPER',
        'seat': '14',
        'bookingCode': 'TARN241008SQQW',
        'Asal': 'BALTOS',
        'Tujuan': 'CIREBON'
      }
    ];

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildSectionHeader("Travel Information"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Theme(
              data: Theme.of(context).copyWith(
                dataTableTheme: DataTableThemeData(
                  headingTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  dataTextStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DataTable(
                  horizontalMargin: 24,
                  columnSpacing: 32,
                  headingRowHeight: 48,
                  dataRowHeight: 52,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  columns: [
                    DataColumn(label: Text('No')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Seat')),
                    DataColumn(label: Text('Booking Code')),
                    DataColumn(label: Text('Asal')),
                    DataColumn(label: Text('Tujuan')),
                  ],
                  rows: travelData
                      .map((item) => DataRow(
                            cells: [
                              DataCell(Text(item['no']!)),
                              DataCell(Text(item['name']!)),
                              DataCell(Text(item['seat']!)),
                              DataCell(Text(item['bookingCode']!)),
                              DataCell(Text(item['Asal']!)),
                              DataCell(Text(item['Tujuan']!)),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Total Travel: ${travelData.length}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Souvenir",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaket() {
    final List<Map<String, String>> paketData = [
      {
        'resi': 'PARN240904BI9A',
        'from': 'BALTOS',
        'to': 'CIREBON',
        'sender': 'HENDRIS',
        'receiver': 'FAUZIAH',
      }
    ];

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildSectionHeader("Package Information"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Theme(
              data: Theme.of(context).copyWith(
                dataTableTheme: DataTableThemeData(
                  headingTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  dataTextStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DataTable(
                  horizontalMargin: 24,
                  columnSpacing: 32,
                  headingRowHeight: 48,
                  dataRowHeight: 52,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  columns: [
                    DataColumn(label: Text('Receipt No.')),
                    DataColumn(label: Text('From')),
                    DataColumn(label: Text('To')),
                    DataColumn(label: Text('Sender')),
                    DataColumn(label: Text('Receiver')),
                  ],
                  rows: paketData
                      .map((item) => DataRow(
                            cells: [
                              DataCell(Text(item['resi']!)),
                              DataCell(Text(item['from']!)),
                              DataCell(Text(item['to']!)),
                              DataCell(Text(item['sender']!)),
                              DataCell(Text(item['receiver']!)),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Total Package: ${paketData.length}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Souvenir",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "Souvenir",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildBarcodeButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: _showBarcode,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange.withOpacity(0.8),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
        child: Text(
          "Show Barcode",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: "Souvenir",
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _showBarcode() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            'Scan Barcode',
            style: TextStyle(
              fontFamily: "Souvenir",
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Container(
            width: 250,
            height: 250,
            padding: EdgeInsets.all(16),
            child: BarcodeWidget(
              barcode: Barcode.qrCode(),
              data: 'Your barcode data here',
              width: 200,
              height: 200,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Close',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
