import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:Home()
    
));//MaterialApp


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text('my app',),
            centerTitle: true ,
            backgroundColor:Colors.orange[800],

        ),//Appbar
        body:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: <Widget>[
                Expanded(
                    child:Container(
                        child:FlatButton(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed:(){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SecondRoute()),
                                 );
                            },
                            child:Image.asset(
                                'assets/oie_9fYRIdtDtaqc.jpg',
                                height:1500,
                                width:1500,
                                fit: BoxFit.fitWidth,
                                ),
                        ),
                    )
                ),
                Expanded(
                    child:Container(
                        child:FlatButton(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed:(){},
                            child:Image.asset(
                                'assets/oie_HdjZJAB5OjIp.jpg',
                                height:1500,
                                width:1500,
                                fit: BoxFit.fitWidth,),
                        ),
                    )
                )
            ]
        ),//Center
        floatingActionButton:FloatingActionButton(
            onPressed:() {},
            child:Text('click'),
            backgroundColor:Colors.red,
        ),
    );//Scaffold;
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
            title:Text('my app',),
            centerTitle: true ,
            backgroundColor:Colors.orange[800],

      ),
      body:Column(
          children : <Widget>[
              Container(
                  height : 150,
                  child:Row(
                      children:<Widget>[
                            Image.asset('assets/rps20171223_091011.jpg'),
                            Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:<Widget>[
                                    Row(
                                        mainAxisAlignment:MainAxisAlignment.start,
                                        children:<Widget>[
                                            Text('Name:',
                                            style: TextStyle(fontSize: 20),
                                            ),
                                            Text('Shivam Patil',
                                            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)
                                            )
                                        ]
                                    ),
                                    Row(
                                        mainAxisAlignment:MainAxisAlignment.start,
                                        children:<Widget>[
                                            Text('Education:',
                                            style: TextStyle(fontSize: 15),
                                            ),
                                            Text('Btech',
                                            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                                            )
                                        ]
                                    ),
                                    Row(
                                        mainAxisAlignment:MainAxisAlignment.start,
                                        children:<Widget>[
                                            Text('Age:',
                                            style: TextStyle(fontSize: 15),
                                            ),
                                            Text('25',
                                            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                                            )
                                        ]
                                    ),
                                ]
                        ),
                      ]
                  ),
                  
                  
                
              ),
          ]
      ) ,
    );
  }
}