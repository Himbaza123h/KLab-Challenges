import 'dart:math';

void main() {
  List<Map<String, dynamic>> items = [
    {
      'name': 'Bike',
      'price': 100,
    },
    {
      'name': 'TV',
      'price': 200,
    },
    {
      'name': 'Album',
      'price': 10,
    },
    {
      'name': 'Bike',
      'price': 5,
    },
    {
      'name': 'Phone',
      'price': 500,
    },
    {
      'name': 'Computer',
      'price': 1000,
    },
  ];
// Filter and show the product that will be bought when you don't have much money I mean Cheap one

  var cheap = items.first;
  // items.forEach(() {
  //   if
  // })

  // show the product that will be bought when you don't have much money
  items.forEach((e) {
    if (e['price'] < cheap['price']) {
      cheap = e;
    }
  });
  print("The product you will buy if haven't enough money is" +
          ' ' +
          cheap['name']
      //  +
      // "for" +
      // '' +
      // cheap['price']
      );
  print(
      "-----------------------------------------------------------------------");
  // Filter and show the product that will be expensive in the array

  //  show the product that will be expensive in the array
  var expensive = items.first;
  items.forEach((e) {
    if (e['price'] > expensive['price']) {
      expensive = e;
    }
  });
  print("The  product that will be expensive in the array is" +
      ' ' +
      expensive['name']);

// Calculate the full price of all product combined
  print("The full price of all product combined");
  print(
      "-----------------------------------------------------------------------");
  double totalPrice = 0;
  items.forEach((e) {
    // var result = e['price'].reduce((sum, e) => sum + e);
    totalPrice += e['price'];
  });
  print(totalPrice);

  // print(totalScores);
  print(
      "Full product combined and remove product that are under the 10 dollar");
  print(
      "-----------------------------------------------------------------------");
// Calculate the full price of all product combined and remove product that are under the 10 dollar

  items.removeWhere((item) => item['price'] < 10);
  print(items);
  double AftertotalPrice = 0;
  items.forEach((e) {
    AftertotalPrice += e['price'];
  });
  print("And Their Price is");
  print(AftertotalPrice);
}
