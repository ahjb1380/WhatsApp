

import 'package:flutter/material.dart';
import 'package:whatsapp/const.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ListView.builder(
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
                        backgroundImage: AssetImage("assets/images/image2.jpg"),
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
                          Row(
                            children: [
                              Icon(Icons.phone,color: greenWhatsAppColor,size: 15,),
                              SizedBox(width: 5,),
                              Text("Today, 2:45 PM")
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.phone,color:greenWhatsAppColor,))
                ],
              ),
            );
          },
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
              child: Icon(Icons.phone,color: Colors.white,size: 25,),
            ),
          ),
        ),

      ],
    );
  }
}
