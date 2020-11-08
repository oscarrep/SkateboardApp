import 'package:flutter/material.dart';
//import 'package:flutter_speed_dial/flutter_speed_dial.dart';



class BoardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      /*floatingActionButton: SpeedDial(
        marginRight: MediaQuery.of(context).size.width*0.05,
        marginBottom: MediaQuery.of(context).size.height*0.8,
        animatedIcon: AnimatedIcons.menu_arrow,
        animatedIconTheme: IconThemeData(size: 22),
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.1,
        onOpen: ()=> print('opening'),
        onClose: ()=> print('closing'),
        backgroundColor: Colors.white,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 10,
        children: [
          SpeedDialChild(
            child: Icon(Icons.close),
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).primaryColor,
            onTap:(){},
          )
        ],
      ),*/
      body: Stack(
        children:[
          Image.asset(
            'assets/photojump.jpg',
            fit: BoxFit.fitHeight
          ),
          _Text(), 
          _Tag1(),
          _Tag2(),
          _Tag3(),
          _Username(),
          _BoxButtons(),
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
    alignment: Alignment(-0.8 , 1.05),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.29,
         child: Padding(
           padding: EdgeInsets.all(30),
           child: Column(
             children: [
               Text(
                    '@itMe',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
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
               Text(
                    'Hey guys, this is one of the photos we took '
                    'on the last trip with the Rip Curl team, '
                    'we had a blast. Looking forward for more '
                    'opportunities like this one.',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  )
             ], // Children
           )
         ),
      ),
    );
  }
}

class _Tag1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.76,0.83),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.04,
          child: FloatingActionButton.extended(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            label: Text(
                    'Photo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Tag2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.50,0.83),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.04,
          child: FloatingActionButton.extended(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            label: Text(
                    'Skate',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

class _Tag3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment(0.20,0.83),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.04,
          child: FloatingActionButton.extended(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            label: Text(
                    'Longboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
            onPressed: (){},
          ),
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
      child: Container(
        alignment: Alignment(-0.75 ,0.45),
        child: Container(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.account_circle,
                color: Theme.of(context).primaryColor,
                size: 70
                ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class _BoxButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.bottomCenter,
      child: Container(
          decoration: BoxDecoration(
            color:Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
             topRight: Radius.circular(10),
             topLeft: Radius.circular(10),
            ),
         ),
         height: MediaQuery.of(context).size.height * 0.07,
        ),
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
        alignment: Alignment(0.75 , 0.56),
        child: Container(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            elevation: 2,
            backgroundColor: Theme.of(context).primaryColor,
            child: Icon(
              Icons.favorite_rounded,
                color: Colors.white,
                size: 20
                ),
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(
              Icons.home,
                color: Colors.white,
                size: 20
                ),
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(
              Icons.search,
                color: Colors.white,
                size: 20
                ),
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(
              Icons.camera_alt,
                color: Colors.white,
                size: 20
                ),
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(
              Icons.comment,
                color: Colors.white,
                size: 20
                ),
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
            backgroundColor: Colors.transparent,
            elevation:0,
            child: Icon(
              Icons.arrow_back,
                color: Colors.white,
                size: 20
                ),
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(
              Icons.menu,
                color: Colors.white,
                size: 20
                ),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}