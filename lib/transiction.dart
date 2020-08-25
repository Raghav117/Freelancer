import 'package:flutter/material.dart';

class Transiction extends StatefulWidget {
  final String title;
  final int page;

  const Transiction({Key key, this.title, this.page}) : super(key: key);
  @override
  _TransictionState createState() => _TransictionState(title, page);
}

class _TransictionState extends State<Transiction> {
  final String title;
  final int page;
  List<String> weeks, dates;
  @override
  void initState() {
    weeks = List();
    dates = List();
    dates.add("1st");
    dates.add("2nd");
    dates.add("3rd");
    dates.add("4th");
    dates.add("5th");
    dates.add("6th");
    dates.add("7th");
    weeks.add("First Week(1-7)");
    weeks.add("Second Week(7-14)");
    weeks.add("Third Week(14-21)");
    weeks.add("Forth Week(22-30)");
    value = weeks[0];
    order = dates[0];
    super.initState();
  }

  var value, order;

  _TransictionState(this.title, this.page);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Previous",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "August",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(height: 30),
          page == 2
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Select Weeks",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: DropdownButton(
                                icon: Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                    )),
                                elevation: 0,
                                items: weeks
                                    .map(
                                      (e) => DropdownMenuItem(
                                        child: Container(
                                          width: width / 2.5,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1, color: Colors.grey),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  topLeft:
                                                      Radius.circular(10))),
                                          child: Text(
                                            e,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                        value: e,
                                      ),
                                    )
                                    .toList(),
                                onChanged: (val) {
                                  value = val;
                                  setState(() {});
                                },
                                value: value,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Orders Dates",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: DropdownButton(
                                icon: Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                    child: Icon(Icons.arrow_drop_down)),
                                elevation: 0,
                                items: dates
                                    .map(
                                      (e) => DropdownMenuItem(
                                        child: Container(
                                            width: width / 3,
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10))),
                                            child: Text(e,
                                                style:
                                                    TextStyle(fontSize: 13))),
                                        value: e,
                                      ),
                                    )
                                    .toList(),
                                // [
                                // DropdownMenuItem(
                                //   child: Container(
                                //       width: width / 3,
                                //       padding: EdgeInsets.all(10),
                                //       decoration: BoxDecoration(
                                //           border: Border.all(
                                //               width: 1, color: Colors.grey),
                                //           borderRadius: BorderRadius.only(
                                //               bottomLeft: Radius.circular(10),
                                //               topLeft: Radius.circular(10))),
                                //       child: Text("1st",
                                //           style: TextStyle(fontSize: 13))),
                                //   value: 1,
                                // ),
                                //   DropdownMenuItem(
                                //     child: Container(
                                //         width: width / 3,
                                //         padding: EdgeInsets.all(10),
                                //         decoration: BoxDecoration(
                                //             border: Border.all(
                                //                 width: 1, color: Colors.grey),
                                //             borderRadius: BorderRadius.only(
                                //                 bottomLeft: Radius.circular(10),
                                //                 topLeft: Radius.circular(10))),
                                //         child: Text("2nd",
                                //             style: TextStyle(fontSize: 13))),
                                //     value: 2,
                                //   ),
                                //   DropdownMenuItem(
                                //     child: Container(
                                //         width: width / 3,
                                //         padding: EdgeInsets.all(10),
                                //         decoration: BoxDecoration(
                                //             border: Border.all(
                                //                 width: 1, color: Colors.grey),
                                //             borderRadius: BorderRadius.only(
                                //                 bottomLeft: Radius.circular(10),
                                //                 topLeft: Radius.circular(10))),
                                //         child: Text("3rd",
                                //             style: TextStyle(fontSize: 13))),
                                //     value: 3,
                                //   ),
                                //   DropdownMenuItem(
                                //     child: Container(
                                //         width: width / 3,
                                //         padding: EdgeInsets.all(10),
                                //         decoration: BoxDecoration(
                                //             border: Border.all(
                                //                 width: 1, color: Colors.grey),
                                //             borderRadius: BorderRadius.only(
                                //                 bottomLeft: Radius.circular(10),
                                //                 topLeft: Radius.circular(10))),
                                //         child: Text("4th",
                                //             style: TextStyle(fontSize: 13))),
                                //     value: 4,
                                //   ),
                                // ],
                                onChanged: (val) {
                                  order = val;
                                  setState(() {});
                                },
                                value: order,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : Container(),
          page == 1
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Transaction of ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "August",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Transaction on ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      order.toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " of ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      value.toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: width / 2,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                              // topEnd: Radius.circular(10),
                              topStart: Radius.circular(10)),
                          color: Colors.blue),
                      child: Center(
                        child: Text(
                          "Order ID",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Text(
                        "RMOD-5F43AE9F0EF16",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Text(
                        "RMOD-5F43AE9F0EF16",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Text(
                        "RMOD-5F43AE9F0EF16",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Text(
                        "RMOD-5F43AE9F0EF16",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10)),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Text(
                        "RMOD-5F43AE9F0EF16",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border(
                                left:
                                    BorderSide(color: Colors.white, width: 1))),
                        width: width / 5,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Target",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        height: 150,
                        width: width / 5,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.blue)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1000",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\nOrders Count",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10)),
                            border: Border(
                                left:
                                    BorderSide(color: Colors.white, width: 1))),
                        width: width / 5,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Amount",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        height: 150,
                        width: width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10)),
                            border: Border.all(width: 1, color: Colors.blue)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹10000",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Settled",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
