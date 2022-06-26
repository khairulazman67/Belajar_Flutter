import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.access_alarm),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    return Scaffold(
        backgroundColor: blueColor,
        body: SafeArea(
            child: Center(
          // child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/user.png',
                height: 120,
                width: 120,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Khairul Azman',
                style: TextStyle(fontSize: 25, color: whiteColor),
              ),
              Text(
                'Hemat Pangkal Kaya',
                style: TextStyle(color: whiteColor, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SALDO : Rp. 200.000',
                      style: TextStyle(
                        fontSize: 25,
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    minimumSize: const Size.fromHeight(50),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/berandaPage');
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffF2F2F2), width: 1)),
                            child: Container(
                              width: 350,
                              height: 425,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columns: const <DataColumn>[
                                    DataColumn(label: Text("Tanggal")),
                                    DataColumn(label: Text("Debit")),
                                    DataColumn(label: Text("Kredit")),
                                    DataColumn(label: Text("Saldo")),
                                    DataColumn(label: Text("Hutang")),
                                  ],
                                  rows: <DataRow>[
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 10.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 50.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text("6/7/2021")),
                                      DataCell(Text("Rp. 30.000")),
                                      DataCell(Text("-")),
                                      DataCell(Text("Rp. 50.000")),
                                      DataCell(Text("Rp. 80.000")),
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [emailField],
                    // )
                  ],
                ),
              ),
            ],
          ),
          // ),
        )));
  }
}
