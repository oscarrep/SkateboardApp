import 'package:flutter/material.dart';



class BoardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[
          Image.asset('assets/photojump.jpg',
          fit: BoxFit.fitHeight
          ),
          _Text(), 
          _Username(),
          _BotButtons(),
          _Like(),
          _ProfilePic(),
          _Home(),
          _Search(),
          _Photo(),
          _Messages(),
          _Back(),
          _Options(),
        ], // children
      ),
    );
  }
}

class _Username extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment(-0.85 , 1.05),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.29,
         child: Padding(
           padding: EdgeInsets.all(30),
           child: Column(

             children: [
               Text('@itMe',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  )
             ], // Children
           )
         ),
      ),
    );
  }
}

class _Text extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.bottomCenter,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
         child: Padding(
           padding: EdgeInsets.all(30),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Text('Hey guys, this is one of the photos we took '
                    'on the last trip with the Rip Curl team, '
                    'we had a blast. Looking forward to doing more things like this',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 13,
                    ),
                  )
             ], // Children
           )
         ),
      ),
    );
  }
}

class _ProfilePic extends StatelessWidget {

  const _ProfilePic({
    Key key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(-0.75 ,0.45),
        child: Container(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            child: Icon(Icons.account_circle,
                color: Theme.of(context).primaryColor, size: 70),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class _BotButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.bottomCenter,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            color:Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            ),
          ),
         child: Padding(
           padding: EdgeInsets.all(30),
           child: Row(
            
         ),
        ),
    )
    );
  
  }
}

class _Like extends StatelessWidget {

  const _Like({
    Key key,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.75 , 0.55),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Theme.of(context).primaryColor,
            child: Icon(Icons.favorite_rounded,
                color: Colors.white, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Home extends StatelessWidget {
  
  const _Home({
    Key key,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(-0.75 , 0.98),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(Icons.home,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Search extends StatelessWidget {
  
  const _Search({
    Key key,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(-0.25 , 0.98),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(Icons.search,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Photo extends StatelessWidget {
 
  const _Photo({
    Key key,
  }):super(key: key);
 
 @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.25 , 0.98),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(Icons.camera_alt,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Messages extends StatelessWidget {
  
  const _Messages({
    Key key,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.75 , 0.98),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(Icons.chat_bubble_rounded,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Back extends StatelessWidget {
  
  const _Back({
    Key key,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(-0.9 , -0.85),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Options extends StatelessWidget {
 
  const _Options({
    Key key,
  }):super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.9 , -0.85),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(Icons.menu,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}