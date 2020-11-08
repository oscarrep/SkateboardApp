class Board
{
  String boardPNG, itemName, description, sold, related, relatedPNG, totalPrice, money;
  double price;  

Board
(
this.boardPNG,
this.itemName,
this.description,
this.sold,
this.related,
this.relatedPNG,
this.totalPrice,
this.money,
this.price
);

}

final board = Board(
  'assets/crop.jpg',
  'Rip Curl Skateboard',
  'Wooden longboard in Best quality for '
    'skateboard lovers we have wide range '
    'skateboards.',
  '15 sold in last 24 hours',
  'Related products',
  'assets/skate.png',
  'Total Price',
  '€',
  75.00,
);