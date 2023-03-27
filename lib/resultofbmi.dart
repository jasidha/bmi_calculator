import 'package:bmicalculatorhightwight/main.dart';
import 'package:flutter/material.dart';
class Result extends StatefulWidget {
  double slider;
  double age2;
  double weight2;
 Result(this.slider,this.age2,this.weight2);

  @override
  State<Result> createState() => _ResultState();



  }


class _ResultState extends State<Result> {
  double finalcalculation=0;
  String f='';

  @override
  void initState() {
    super.initState();
    num();
  }

    void num(){

    double s=(widget.slider);
    double w=(widget.weight2);
    double last=(s*w)/s;

    setState(() {
      finalcalculation=last;
      if(last>25.0){
        print("it is overweight");
        f="Overweight";
      }
      else if(last>=18.5){
        print("Under weight");
        f="Under weight";
      }
      else if((last>=18.5)&&(last<=24.9)){
        print("Healthy");
        f="Healthy";
      }



    });

  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA5947E),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:   CrossAxisAlignment.center,
          children: [
          Text("",style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),),

          Container(
            height: 200,
            width: double.maxFinite,
            color:Color(0xffBE9C73),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("HEIGHT",style: TextStyle(
                          fontSize: 28,

                        ),),
                        Text("WEIGHT",style: TextStyle(
                          fontSize: 28,
                        ),),
                        Text("AGE",style: TextStyle(
                          fontSize: 28,
                        ),),

                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("${widget.slider.round()}",style: TextStyle(
                            fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("${widget.weight2}",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("${widget.age2}",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],),
                    ),
                  ],
                  ),

                  SizedBox(width: 12,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("FINAL CALCULATION",style: TextStyle(
                          fontSize: 28,
                        ),),
                        SizedBox(width: 12,),
                        Text("${finalcalculation.toStringAsFixed(3)}",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],),
                  ),


                ],
              ),
            ),
          ),
            Text("$f",style: TextStyle(
             fontSize: 26,
             fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height: 70,
                width: double.infinity,
                child: ElevatedButton(onPressed:(){
                  Navigator.pop(context);
                },style:
                   ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(Colors.brown),
                   ) ,
                     child: Text("Calculate Again?",style: TextStyle(
                       fontSize: 23,
                       fontWeight: FontWeight.bold,
                     ),)),
              ),
            ),
        ],),
      ),
    );



  }
}
