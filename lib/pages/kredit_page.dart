import 'package:flutter/material.dart';

import 'package:flutter_project/theme.dart';

class kreditPage extends StatefulWidget {
  const kreditPage({Key? key}) : super(key: key);

  @override
  State<kreditPage> createState() => _kreditPageState();
}

class _kreditPageState extends State<kreditPage> {
  @override
  Widget build(BuildContext context) {
    final jumlahField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.access_alarm),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Jumlah",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final keteranganField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.access_alarm),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Keterangan",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final simpanBtn = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: blueColor,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          //Navigator.push(
          //  context, MaterialPageRoute(builder: (context) => HomeScreen()));

          // signIn(emailController.text, passwordController.text);
        },
        //color: Colors.redAccent,
        child: Text(
          "Simpan",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'SALDO : Rp. 200.000',
            style: TextStyle(
              fontSize: 25,
              color: whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3, // 20%
                        child: Column(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: redColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size.fromHeight(50),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/berandaPage');
                                },
                                child: Text(
                                  'Beranda',
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 6,
                      ),
                      Expanded(
                        flex: 3, // 60%
                        child: Column(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: redColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size.fromHeight(50),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/debitPage');
                                },
                                child: Text(
                                  'Debit',
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        flex: 3, // 20%
                        child: Column(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: redColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size.fromHeight(50),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/kreditPage');
                                },
                                child: Text(
                                  'Kredit',
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        flex: 3, // 20%
                        child: Column(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: redColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size.fromHeight(50),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/loginPage');
                                },
                                child: Text(
                                  'Keluar',
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Halaman Kredit',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  jumlahField,
                  SizedBox(
                    height: 20,
                  ),
                  keteranganField,
                  SizedBox(
                    height: 20,
                  ),
                  simpanBtn
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
