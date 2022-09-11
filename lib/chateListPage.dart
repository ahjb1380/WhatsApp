import 'package:flutter/material.dart';
import 'package:whatsapp/callPage.dart';
import 'package:whatsapp/chatPage.dart';
import 'package:whatsapp/const.dart';
import 'package:whatsapp/contactPage.dart';
import 'package:whatsapp/statusPage.dart';

class ChateListPage extends StatefulWidget {
  const ChateListPage({Key? key}) : super(key: key);

  @override
  State<ChateListPage> createState() => _ChateListPageState();
}

class _ChateListPageState extends State<ChateListPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(),),);
          },
          child: ListView.builder(
            itemCount: 40,
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
                          backgroundImage: AssetImage("assets/images/image3.jpeg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ali Hajeb",
                              style:nameTextStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "dhfjshfjsddkljidgjoidfjdfh",
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ],
                    ),
                    Text("8/27/22")
                  ],
                ),
              );
            },
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StatusPage()),);
          },
          child: Container(
            margin: EdgeInsets.only(right: 30,bottom: 30),
            height: double.infinity,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: greenWhatsAppColor,
                child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage()));},icon: Icon(Icons.chat,color: Colors.white,size: 25,)),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
