import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/custom_clipper.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController? _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bars,
              size: 17,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: (() {}),
                icon: Icon(
                  FontAwesomeIcons.bell,
                  size: 17,
                  color: Colors.white,
                ))
          ],
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: ClipPath(
            clipper: MyCustomClipperForAppBar(),
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images (1).jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 75,
                right: 50,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo2.png")),
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                    
                     
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 115,
                left: 160,
              
                right: 50,
                child: Text(
                  'Flutter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),

                ),

              )
              
            ]),
          ),
         bottom:PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Padding(
            
            padding: const EdgeInsets.only(top: 80,left: 40,right: 40),
          
            child: Container(
              
              
              decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.1),
                        offset: const Offset(0, 8),
                      )
                    ]),
                    child:TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(15),
                      hintText: "Search"),
                ), 
            )
          ),
         )
        ),
      ),
    );
  }
}
