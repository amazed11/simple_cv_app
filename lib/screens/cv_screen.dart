import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CvScreen extends StatelessWidget {
  CvScreen({Key? key}) : super(key: key);
  String myName = "Aashbin Sunar";

  //do phone call
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

//laucnh link in browser
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  var phone = "9814156374";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _makePhoneCall("tel:$phone");
        },
        child: Icon(
          Icons.call,
        ),
      ),
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.indigo,
        title: Text("My CV App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Container(
          margin: EdgeInsets.only(
            top: 15.0,
          ),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage(
                    'assets/images/mypic.jpeg',
                  ),
                ),
                Text(
                  myName,
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Senior Flutter Developer,Full Stack Engineer",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 150.0,
                  width: 370.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Education",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1. School Name Here",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "2070 BS",
                              style: TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "2. School Name Here",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "2070 BS",
                              style: TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "3. School Name Here",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "2070 BS",
                              style: TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 180.0,
                  width: 370.0,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            "Experiences",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://www.msfttechdays.com/wp-content/uploads/2021/02/MzYzNjYzMw.jpeg",
                                ),
                              ),
                              title: Text(
                                "Software Developement",
                              ),
                              subtitle:
                                  Text("I have developed lots of softwares.."),
                              trailing: Icon(
                                Icons.remove_red_eye,
                              ),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://learn.g2.com/hs-fs/hubfs/software-development.jpg?width=2121&name=software-development.jpg",
                                ),
                              ),
                              title: Text(
                                "Mobile App Developement",
                              ),
                              subtitle:
                                  Text("I have developed lots of softwares.."),
                              trailing: Icon(
                                Icons.remove_red_eye,
                              ),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwav2H15yU3NnNx1VRNE0HTmWukPJfHzpCLQ&usqp=CAU",
                                ),
                              ),
                              title: Text(
                                "Web Developement",
                              ),
                              subtitle:
                                  Text("I have developed lots of softwares.."),
                              trailing: Icon(
                                Icons.remove_red_eye,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Social Links",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextButton.icon(
                          onPressed: () async {
                            await _launchInBrowser("https://www.google.com");
                          },
                          icon: Icon(Icons.facebook),
                          label: Text("Facebook"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
