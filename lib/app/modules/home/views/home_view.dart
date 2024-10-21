import 'package:final_project/app/modules/home_screen/views/home_screen_view.dart';
import 'package:final_project/core/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 330,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/variasi2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 250,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/whitelogo.png"),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Selamat Datang",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Futurefont"),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 20,
            right: 20,
            child: Center(
              child: Text(
                "Arnes Shuttle, layanan transportasi travel yang siap mengantarkan kita menjelajahi keindahan Jawa Barat dengan harga paling murah. Temukan kenyamanan perjalanan tanpa kompromi",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: Colors.white, fontFamily: "Souvenir"),
              ),
            ),
          ),
          Positioned(
            top: 660,
            child: Container(
              width: 320,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white.withOpacity(0.8),
              ),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true, // Mengizinkan gulung
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize:
                                  MainAxisSize.min, // Membungkus konten
                              children: [
                                Text(
                                  "Harap masukkan nomor & password",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Souvenir",
                                      color: Colors.deepOrange),
                                ),
                                Text(
                                  "*Pastikan nomor & password benar",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Souvenir",
                                      color: Colors.deepOrange),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    decoration: InputDecoration(
                                      hintText: "Nomor Telepon",
                                      hintStyle:
                                          TextStyle(fontFamily: "Souvenir"),
                                      prefixIcon: Icon(Icons.phone_iphone),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                PasswordInputField(),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreenView()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.deepOrange.withOpacity(0.8),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 15),
                                        textStyle: TextStyle(fontSize: 16),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Masuk",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Souvenir",
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Souvenir",
                      color: Colors.deepOrange),
                ),
              ),
            ),
          ),
          Positioned(
            top: 725,
            child: Text(
              "Tentang Kami",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
