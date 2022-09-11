import 'package:flutter/material.dart';
import 'package:whatsapp/const.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final formKeyControler = GlobalKey<FormState>();

  @override
  void initState() {
    tabController = TabController(length: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenWhatsAppColor,
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                 GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.keyboard_backspace_outlined),),
                  spaceWidthInAppBar,
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/image3.jpeg"),
                  ),
                  spaceWidthInAppBar,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ali hajeb",
                        style: nameTextStyle,
                      ),
                      Text(
                        "lats seen",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.call),
                  spaceWidthInAppBar,
                  Icon(Icons.videocam_rounded),
                  spaceWidthInAppBar,
                  Icon(Icons.more_vert)
                ],
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/image1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 12,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(

                        children: [
                          spaceWidthInAppBar,
                          Icon(
                            Icons.mood,
                            color: Colors.black54,
                          ),
                          spaceWidthInAppBar,
                          Expanded(
                            child: TextFormField(
                              cursorColor: greenWhatsAppColor,
                              minLines: 1,
                              maxLines: 4,
                              cursorHeight:1,


                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                iconColor: Colors.black,
                                hintText: "Message",hintStyle: TextStyle(color: Colors.black54),),
                            ),
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: greenWhatsAppColor,
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
