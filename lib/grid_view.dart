import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'GridView Example',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: GridViewPage(),
);
}
}
class GridViewPage extends StatelessWidget {
final List<String> items = [
"Item 1",
"Item 2",
"Item 3",
"Item 4",
"Item 5",
"Item 6",
"Item 7",
"Item 8",
];
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("GridView Example"),
),
body: GridView.builder(
padding: EdgeInsets.all(15),
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2, // Number of columns
crossAxisSpacing: 15, // Spacing between columns
mainAxisSpacing: 15, // Spacing between rows
childAspectRatio: 1, // Aspect ratio to make squares
),
itemCount: items.length,
itemBuilder: (context, index) {
return GestureDetector(
onTap: () {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text("Clicked ${items[index]}")),
);
},
child: Card(
elevation: 4,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),
),
child: Container(
padding: EdgeInsets.all(15),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
// Square frame with an icon inside
Container(
width: 60,
height: 60,
decoration: BoxDecoration(
color: Colors.grey[200],
borderRadius: BorderRadius.circular(8),
border: Border.all(
color: Colors.blue,
width: 2,
),
),
child: Icon(Icons.star, color: Colors.blue, size: 30),
),
SizedBox(height: 10),
Text(
items[index],
style: TextStyle(fontSize: 16, fontWeight: 
FontWeight.bold),
textAlign: TextAlign.center,
