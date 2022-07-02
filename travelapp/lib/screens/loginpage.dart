import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'home_screen.dart';
void main() =>runApp(HappyTravel());

class HappyTravel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(         
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
        theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
    );
  }
}
class LoginPage extends StatefulWidget{   
  @override
  State  createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override 
 void initState(){
   super.initState();
   _iconAnimationController=new AnimationController(
     vsync: this,                                    
     duration: new Duration(milliseconds: 500)
   );
   _iconAnimation=new CurvedAnimation(
     parent: _iconAnimationController,
     curve:Curves.easeOut
   );
   _iconAnimation.addListener(()=> this.setState((){}));
   _iconAnimationController.forward();
 } 
  @override
  Widget build(BuildContext context) {

    return new Scaffold(  
      appBar: AppBar(
    
        title:
         Text('ⓘRegistraton purpose'),
         backgroundColor:Color(0XFF009688),

        ),     
      backgroundColor:Colors.greenAccent,
       
      body:new Stack(
        fit:StackFit.expand,
        children:<Widget>[
          new Image(         
            image:new AssetImage("assets/images/icon.png"),
            fit:BoxFit.cover,
             color:Colors.black87,
             colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[     
             /* new FlutterLogo(
                size:_iconAnimation.value * 100,
              ),*/
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(  
                      labelStyle: new TextStyle(
                        color: Colors.teal,fontSize: 20.0

                      )
                    )
                  ),
              child: new Container(      
                  padding: const EdgeInsets.all(40.0),
                  child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                      new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "NAME",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    new TextFormField(    
                      decoration: new InputDecoration(
                        labelText: "EMAIL ADDRESS",
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    new Padding(           
                      padding: const EdgeInsets.only(top: 40.0),
                    ),
                    new MaterialButton(
                      height: 40.0,       
                      minWidth: 100.0,
                      color: Colors.teal,
                      textColor: Colors.white,
                      child:new Text("LOGIN"),
                      onPressed: ()=> {
                        
                           Fluttertoast.showToast(msg: 'REGISTRATION SUCCESSFUL',
                           toastLength:Toast.LENGTH_LONG,
                           gravity: ToastGravity.TOP,
                           backgroundColor:Colors.blueAccent,
                           textColor:Colors.white,
                           fontSize:16.0)
                           
                           
                      },             
                      splashColor: Colors.redAccent,  
                       
                    ),
                    
                ],
                ),
              ),
                ),
               
              )
            ],
          )
        ],
      ),
        floatingActionButton: FloatingActionButton(onPressed: ()
      {
        debugPrint('clicked');
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return HomeScreen();
        }));
      },
      tooltip: 'add note',
      //child: Icon(Icons.add),
      backgroundColor: Color(0xFF8A8D8F),
        child:Text("Skip➡")
        ,
      ),
    );
  }
}