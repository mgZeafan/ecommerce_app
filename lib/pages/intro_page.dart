import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
           Image.asset('assets/images/logo.png',height: 220,),
            SizedBox(height: 100,),
            Text('Just Do It',style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey[900],
            fontFamily: 'Poppins'
            ),),
            SizedBox(height: 20),
            Text('ghigosfd kjfgdo oifdshgifd oihjgofg nfdhoin ohfid kjfgdo oifdshgifd oihjgofg nfdhoin ohfi ',style: TextStyle(fontSize: 15,color: Colors.grey,),textAlign: TextAlign.center),
            SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.grey[900]
                ),
                child: Center(
                  child: Text('Show Now',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold) ),),
                ),
            )
              

          ],
        ),
      ),
    );
  }
}
