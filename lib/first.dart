import 'package:flutter/material.dart';
import 'package:freelancer/transiction.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.page}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final int page;

  @override
  _MyHomePageState createState() => _MyHomePageState(page);
}

class _MyHomePageState extends State<MyHomePage> {
  List<Items> items;
  final int page;
  _MyHomePageState(this.page);

  @override
  void initState() {
    items = List();
    items.add(
        Items(title: "Successful Delivery Count", n: 1000, color: Colors.blue));
    items.add(Items(title: "Target Count", n: 1000, color: Colors.redAccent));
    items.add(Items(
        title: "Amount Eligible",
        n: 10000,
        color: Colors.lightBlueAccent,
        widget1: Text(
          "₹",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )));
    items.add(Items(
        title: "Eligibility",
        widget1: Text(
          "X",
          style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        widget2: Text(
          "|",
          style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        widget3: Container(
          height: 30,
          width: 30,
          child: Image.asset(
            "assets/icons8-checkmark-96.png",
            color: Colors.white,
          ),
        ),
        color: Colors.purpleAccent));
    super.initState();
  }

  int value = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          page == 1 ? "My Incentive Settlement" : "My Bonus Settlement",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: height - 80,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
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
              page == 2
                  ? Column(
                      children: [
                        Text(
                          "Choose week in the month of august",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: DropdownButton(
                            icon: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: Icon(Icons.arrow_drop_down)),
                            elevation: 0,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                    width: width / 1.5,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: Text("First Week (1-7)")),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Container(
                                    width: width / 1.5,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: Text("Two Week (1-7)")),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Container(
                                    width: width / 1.5,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: Text("Third Week (1-7)")),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Container(
                                    width: width / 1.5,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: Text("Forth Week (1-7)")),
                                value: 4,
                              ),
                            ],
                            onChanged: (val) {
                              value = val;
                              setState(() {});
                            },
                            value: value,
                          ),
                        ),
                      ],
                    )
                  : Container(height: 50),
              Text(
                page == 1
                    ? "Incentive Count & Eliblity"
                    : "Bonus Count & Elibility",
                style: TextStyle(fontSize: 20, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: items.map((e) {
                    int index = items.indexOf(e);
                    if (index % 2 == 0) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: width / 2.3,
                              height: height / 5,
                              decoration: BoxDecoration(
                                  color: e.color,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    e.title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      e.widget1,
                                      e.widget2,
                                      e.widget3,
                                      e.n != -1
                                          ? Text(e.n.toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                              textAlign: TextAlign.center)
                                          : Text("")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            index + 1 < items.length
                                ? Container(
                                    width: width / 2.3,
                                    height: height / 5,
                                    decoration: BoxDecoration(
                                        color: items[index + 1].color,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          items[index + 1].title,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            items[index + 1].widget1,
                                            items[index + 1].widget2,
                                            items[index + 1].widget3,
                                            items[index + 1].n != -1
                                                ? Text(
                                                    items[index + 1]
                                                        .n
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.center)
                                                : Text("")
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      );
                    } else {
                      return Container();
                    }
                  }).toList(),
                ),
              ),

              // Container(
              //   height: height / 2,
              //   width: width,
              //   child: GridView.builder(
              //     itemCount: items.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //         crossAxisSpacing: 15,
              //         mainAxisSpacing: 15),
              //     itemBuilder: (context, index) {
              //       return Container(
              //         decoration: BoxDecoration(
              //             color: items[index].color,
              //             borderRadius: BorderRadius.circular(20)),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Text(
              //               items[index].title,
              //               textAlign: TextAlign.center,
              //               style:
              //                   TextStyle(color: Colors.white, fontSize: 20),
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 items[index].widget1,
              //                 items[index].widget2,
              //                 items[index].widget3,
              //                 items[index].n != -1
              //                     ? Text(items[index].n.toString(),
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 20),
              //                         textAlign: TextAlign.center)
              //                     : Text("")
              //               ],
              //             )
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // ),
              Column(
                children: [
                  Text(
                    "Estimate date of Credit",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    "in 7 days of 14th August",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Transiction(
                            page: page,
                            title: "My Monthly Transiction History");
                      },
                    ));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "My All Transaction History",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Items {
  String title;
  Color color;
  int n = -1;
  Widget widget1 = Container();
  Widget widget2 = Container();
  Widget widget3 = Container();

  Items(
      {Key key,
      this.title,
      this.n,
      this.widget1,
      this.widget2,
      this.widget3,
      this.color}) {
    if (this.n == null) {
      n = -1;
    }
    if (this.widget1 == null) {
      widget1 = Container();
    }
    if (this.widget2 == null) {
      widget2 = Container();
      // n = -1;
    }
    if (this.widget3 == null) {
      widget3 = Container();
      // n = -1;
    }
  }
}
