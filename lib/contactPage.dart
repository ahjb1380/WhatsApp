

import 'package:flutter/material.dart';
import 'package:whatsapp/const.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenWhatsAppColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_outlined)),
                spaceWidthInAppBar,
                Text("Select Contact"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.search),
                spaceWidthInAppBar,
                Icon(Icons.more_vert),
              ],
            )
            
          ],
        ),
      ),
      body:  SingleChildScrollView(
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
                        radius: 15,
                        backgroundColor: greenWhatsAppColor,
                        child: Icon(Icons.person,color: Colors.white,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "New Group",
                        style: nameTextStyle,
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: greenWhatsAppColor,
                        child: Icon(Icons.person_add,color: Colors.white,size: 20,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "New contact",
                        style: nameTextStyle,
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
                child: Text("Contacts on WhatsApp")),
            SizedBox(
              height: 5,
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
    );
  }
}
