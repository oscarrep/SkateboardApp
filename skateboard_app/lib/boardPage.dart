import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:skateboard_app/app.dart';
import 'package:skateboard_app/board.dart';
//import 'package:skateboard_app/customs.dart';

class BoardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[
          Image.asset('assets/photojump.jpg',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fitHeight
          ),
          _Text(),
          //_Username(),
          _BotButtons(),
          _Like(),
          _ProfilePic(),
          _Home(),
          _Search(),
          _Photo(),
          _Messages(),
        ], // children
      ),
    );
  }
}

// --------------------------------------------------------------- HEADER -------------------------------

class _Text extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.bottomCenter,
      child: Container(
          height: MediaQuery.of(context).size.height*2/7,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
         child: Padding(
           padding: EdgeInsets.all(30),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text('Hey guys, this is one of the photos we took '
                    'on the last trip with the Rip Curl team',
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


class _BotButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.bottomCenter,
      child: Container(
          height: MediaQuery.of(context).size.height*0.07,
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

class _ProfilePic extends StatelessWidget {
  const _ProfilePic({
    Key key,
  }):super(key: key);
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(-1 ,0.6),
        child: Container(
          //alignment: Alignment.centerRight,
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

class _Like extends StatelessWidget {
  const _Like({
    Key key,
  }):super(key: key);
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(1 , 0.65),
        child: Container(
          //alignment: Alignment.centerRight,
          width: 30,
          height: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            child: Icon(Icons.favorite_border_rounded,
                color: Theme.of(context).primaryColor, size: 20),
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
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(-1 , 1.14),
        child: Container(
          //alignment: Alignment.centerRight,
          width: 30,
          height: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
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
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(-0.40 , 1.14),
        child: Container(
          //alignment: Alignment.centerRight,
          width: 30,
          height: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
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
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(0.40 , 1.14),
        child: Container(
          //alignment: Alignment.centerRight,
          width: 30,
          height: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
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
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        alignment: Alignment(1 , 1.14),
        child: Container(
          //alignment: Alignment.centerRight,
          width: 30,
          height: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            child: Icon(Icons.chat_bubble_rounded,
                color: Theme.of(context).primaryColor, size: 20),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

/*class BoardPage extends StatelessWidget {
  final Board board;
  BoardPage(this.board);

  @override
  Widget build(BuildContext context) {
    final divider = Divider(
      color: Color.fromARGB(255, 0, 0, 0),
      thickness: 0,
      height: 0,
    );

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 6, child: _Header(board: board)),
          divider,
          Expanded(flex: 2, child: _Middle(board: board)),
          divider,
          Expanded(flex: 2, child: _Bottom(board)),
        ],
      ),
    );
  }
}*/

// --------------------------------------------------------------- HEADER -------------------------------

/*class _Header extends StatelessWidget {
  const _Header({
    Key key,
    @required this.board,
  }) : super(key: key);

  final Board board;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2,
            child: Image.asset(
              board.boardPNG,
            ),
          ),
          Expanded(
          child: Center (
              child: Text(
                board.itemName,
                style: TextStyle(
                fontSize: 20,
            ),
          ),
          ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                board.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

// --------------------------------------------------------------- MIDDLE -------------------------------

/*class _Middle extends StatelessWidget {
  const _Middle({
    Key key,
    @required this.board,
  }) : super(key: key);

  final Board board;

  Widget _text(String text) {
    final TextStyle infoStyle = TextStyle(
      fontSize: 12,
      color: Colors.grey,
    );
    return Text(text, style: infoStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
          child: Padding (
            padding: EdgeInsets.fromLTRB(0,5,200,0),
              child: Text(
                board.sold,
                style: TextStyle(
                fontSize: 15,
                color: Colors.red,
            ),
          ),
          ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                board.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

// --------------------------------------------------------------- BOTTOM -------------------------------

/*class _Bottom extends StatelessWidget {
  final Board board;
  _Bottom(this.board);

  _BottomRow(String label, String content) => TableRow(
        children: [
          Text(label),
          SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(content),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Table(
              columnWidths: {
                0: IntrinsicColumnWidth(),
                1: IntrinsicColumnWidth(),
              },
              
            ),
          ),
        ],
      ),
    );
  }
}*/