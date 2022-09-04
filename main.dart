import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List image=[
      'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
     'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
      'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
      ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
       title:Text('Gallary',
              style:TextStyle(
               fontFamily: 'Raleway',
               color: Colors.grey[600],
               fontSize: 30,
               fontWeight: FontWeight.bold,
              
     
              )
              ) ,
              
               backgroundColor: Colors.white,
               
      ),
      
      

      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
children: 
 List.generate(image.length, (index) 
 {
 return Container(
  
  height: 5,
  width:5 ,
  
  decoration: BoxDecoration(
    
       borderRadius: BorderRadius.circular(20),
    
       image:DecorationImage(
        fit: BoxFit.cover,
        
        image:AssetImage( image[index] ))


  ),
    
  );

 

 })
,

      )
      
    
           
        
            
            
            ));
          


     
        
        
        
      
      
    
  }
}
