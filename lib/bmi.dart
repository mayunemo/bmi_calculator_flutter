import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
 TextEditingController h=TextEditingController();
TextEditingController w=TextEditingController();
String result="";
void TotalBMI(){
  double height= double.parse(h.text)/100;
  double weight=double.parse(w.text);
  double ans=weight/(height*height);
setState(() {
  result="Your BMI is ${ans.toStringAsFixed(2)}";
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyanAccent, Colors.cyan],
            begin: AlignmentGeometry.bottomStart,
            end: AlignmentGeometry.topEnd,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                "BMI CALCULATOR",
                style: GoogleFonts.rubikBubbles(
                  color: Colors.lightGreen,
                  fontSize: 30,
                ),
              ),

              SizedBox(height: 30),
              SizedBox(
                width: 500,
                height: 500,
                child: Card(
                  color: const Color.fromARGB(255, 229, 220, 220),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        TextField(controller: h,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                    
                            //   hintText: "fdgh"
                            labelText: "Height(cm)",
                            hintStyle: TextStyle(),
                            labelStyle: TextStyle(),
                            fillColor: Colors.lightGreen,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 3,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 40),
                        TextField(controller: w,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.monitor_weight),
                            labelText: "Weight(kg)",
                            hintStyle: TextStyle(),
                            labelStyle: TextStyle(),
                            fillColor: Colors.lightGreen,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blueGrey,width:3 ),
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 40),
                    
                        GestureDetector(onTap: TotalBMI,
                          child: Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.cyan, Colors.cyanAccent],
                                begin: AlignmentGeometry.bottomLeft,
                                end: AlignmentGeometry.topRight,
                              ),
                            ),
                            child: Center(child: Text("calculate")),
                          ),
                        ),
                           SizedBox(height: 30,),
                    
                    
                        Text(result,style: TextStyle(fontSize: 25,color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
