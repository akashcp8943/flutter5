import 'package:flutter/material.dart';

class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  var a="";
  var b="";
  var c="";
  var op ='';
  var eq = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SafeArea(child: Text("CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold,fontSize:35))),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              TextButton(onPressed: (){}, child: Text("NEXT")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38,right: 38,top: 38,bottom: 20),
            child: Container(
                child: Center(child: Row(
                  children: [
                    Text(a.toString()),
                    Text(op),
                    Text(b.toString()),
                    Text(eq),
                    Text(c.toString()),
                  ],
                )),
                height: 70,
                width: 700,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black12,)
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black12,),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(onPressed: (){
              setState(() {
                a="";
                b="";
                c="";
                op ='';
                eq = '';
              });


            }, child:Text("CLEAR")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 38,bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="1";

                  });
                },child: Text("1"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="2";
                  });
                },child: Text("2"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="3";
                  });
                },child: Text("3"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    b=a;
                    a="";
                    op='+';
                  });

                },child:Text("+"),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="4";
                  });
                },child: Text("4"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="5";
                  });
                },child: Text("5"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="6";
                  });
                },child: Text("6"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    b=a;
                    a="";
                    op="-";
                  });
                },child:Text("-"),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="7";
                  });
                },child: Text("7"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="8";
                  });
                },child: Text("8"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="9";
                  });
                },child: Text("9"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    b=a;
                    a="";
                    op='*';
                  });
                },child:Text("*"),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){},child:Text("C"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    a="";
                  });
                },child: Text("0"),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    var d = int.parse(a);
                    var e = int.parse(b);
                    var r=0;
                    if(op=='+'){
                      r = d+e;
                    }
                    if(op=='*'){
                      r = d*e;
                    }
                    if(op=='-'){
                      r = d-e;
                    }
                    if(op=='/'){

                    }

                    eq='=';
                    c= r.toString();
                    print(a+b);
                  });

                },child:Text("="),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    b=a;
                    a="";
                    op='/';
                  });

                },child:Text("/"),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
