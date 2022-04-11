import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/model/menus.dart';

// design for our homescreen
class InfoDesignWidget extends StatefulWidget {

  Menus? model;
  BuildContext? context;

  InfoDesignWidget({this.model, this.context});


  @override
  State<InfoDesignWidget> createState() => _InfoDesignWidgetState();
}

class _InfoDesignWidgetState extends State<InfoDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(widget.model!.thumbnnailUrl!);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  widget.model!.thumbnnailUrl!,
              ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.model!.menuInfo!,
                      style: const TextStyle(
                        color: Colors.cyan,
                        fontSize: 20,
                        fontFamily: "Train",
                      ),
                    ),



                  ],


              ),
          ),




              Text(

                widget.model!.menuTitle!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
