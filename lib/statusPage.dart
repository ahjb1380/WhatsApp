import 'package:flutter/material.dart';
import 'package:whatsapp/const.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("assets/images/image3.jpeg"),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: greenWhatsAppColor,
                                child: Center(child: Icon(Icons.add,size: 15,)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My status",
                                style: nameTextStyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Tap to add status update",
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text("Viewed updates")),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 23,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage("assets/images/image2.jpg"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ali Hajeb",
                                    style: nameTextStyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Today, 2:45 PM",
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right:35,bottom: 90),
            height: double.infinity,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 20,
                backgroundColor:Color(0XFFBDBDBD),
                child: Icon(Icons.edit,color: Colors.black45,size: 20,),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30,bottom: 30),
            height: double.infinity,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: greenWhatsAppColor,
                child: Icon(Icons.photo_camera,color: Colors.white,size: 25,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
