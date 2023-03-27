import 'package:bmicalculatorhightwight/resultofbmi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Heightweight()),
  );

}

class Heightweight extends StatefulWidget {
  const Heightweight({Key? key}) : super(key: key);

  @override
  State<Heightweight> createState() => _HeightweightState();
  
}

class _HeightweightState extends State<Heightweight> {
  double slidervalue=0;
  double age=0;
  double weight=0;
  void num(){


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black54,
        title: Center(child: Text("BMI CALCULATOR",style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                  GestureDetector(onTap:(){
                    setState(() {

                    });
          },
                    child: Container(
                      height: 160,
                      width: 150,
                      color: Colors.black12,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Icon(Icons.male,size: 50,),

                            SizedBox(height: 12,),
                            Text("Male",style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),


                    ),
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    color: Colors.black12,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.female,size: 50,),
                      SizedBox(height: 5,),
                      Text("Female",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),),
                    ],),
                  ),
                ],),
              ),
                SizedBox(height: 28,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: double.maxFinite,
                    color:Colors.black12 ,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("HEIGHT",style: TextStyle(
                        fontSize: 15,
                      ),),
                        Row(mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                          Text("${slidervalue.round()}",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("cm",style: TextStyle(
                            fontSize:10,
                          ),),
                        ],),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Slider(min: 0,
                              max: 500,
                              inactiveColor: Colors.black45,
                              activeColor: Colors.blueGrey,
                              value: slidervalue, onChanged: (newValue){
                            setState(() {
                              slidervalue=newValue;
                            });
                          }),
                        ),
                    ],),
                  ),
                ),
                SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      height: 120,
                      width: 130,
                      color: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Weight",style: TextStyle(
                            fontSize: 21,
                          ),),
                          Text("$weight",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FloatingActionButton.small(onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },child: Icon(Icons.remove,size: 15,),backgroundColor: RenderErrorBox.backgroundColor,),
                            SizedBox(width: 15,),
                            FloatingActionButton.small(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },child: Icon(Icons.add,size: 15,),backgroundColor:RenderErrorBox.backgroundColor,),
                          ],),
                        ],),
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 130,
                      color: Colors.black12,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Age",style: TextStyle(
                          fontSize: 21,
                        ),),
                        Text("$age",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton.small(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },child: Icon(Icons.remove,size: 15,),backgroundColor: RenderErrorBox.backgroundColor,),
                            SizedBox(width: 5,),
                            FloatingActionButton.small(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },child: Icon(Icons.add,size: 15,),backgroundColor:RenderErrorBox.backgroundColor,),
                          ],),
                      ],),
                    ),
                  ],),
                ),
                SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 70,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(slidervalue,age,weight)));
                    },style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.black26),
                    ), child: Text("Calculate",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),)),
                  ),
                ),


            ],),
          ),
        ),
      ),
    );
  }
}
