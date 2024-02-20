import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  final String Path;
  final String t;
  final String loc;
  const Screen3({super.key,required this.Path, required this.t,required this.loc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        excludeHeaderSemantics: false,
        backgroundColor: Colors.transparent,
        actions: const [],
        title: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Image.asset(
                "assets/images/8373748.png",
                width: 35,
              ),
              Expanded(child: Container()),
              const CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage("assets/images/user_img.jpg"),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            Path ,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(23, 111, 23, 0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(margin:EdgeInsets.only(right: 50),
                      child: Text(t,maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                    ),
                    Row(

                      children: [

                        Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                            color: Colors.redAccent),
                        Text(
                          loc,
                          style: TextStyle(
                              color: Colors.redAccent, fontWeight: FontWeight.w500),
                        ),

                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(alignment: Alignment.center,margin: const EdgeInsets.only(bottom: 60),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.pop(context);},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(const IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                        color: Colors.purpleAccent.shade200),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

