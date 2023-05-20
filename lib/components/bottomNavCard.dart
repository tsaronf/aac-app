import 'package:flutter/material.dart';
class BottomNavCard extends StatelessWidget {
  const BottomNavCard({
    super.key,
    required this.page,
  });

  final String page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 250, 250, 251),
            Color.fromRGBO(245, 247, 245, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
           page
          );
        },
        child: Column(
          children: <Widget>[
            Row(
              
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  child:  Icon(Icons.favorite, color: Colors.red,),
                  height: 10.0,
                  width: 10.0,
                 
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              "image/dog.png",

              height: 100.0,
              width: 100.0, // set the height of the image
            ),
            SizedBox(height: 8.0),
            Text(
              'እንስሳ',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.normal,
                fontSize: 25.0,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
