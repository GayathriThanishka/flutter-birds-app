
import 'package:birdsapp/home.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  //creating key
  final demokey=GlobalKey<FormState>();
  //create controller for us name and password
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(title: Text("BIRDS WORLD"), backgroundColor:  Color.fromARGB(255, 137, 208, 102),centerTitle: true,),
        body: Container(
         color: Color.fromARGB(255, 180, 247, 171),
           //background image
     /* decoration: const BoxDecoration(
        
       image: DecorationImage(
          
            image: AssetImage("assets/birds2.jpg"), fit: BoxFit.cover),),*/
            
      

          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                     Form(
                key: demokey,
                child: Column(
                  
                  children: [
                    // us name Field
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your username";
                        }
                        return null;
                      },         
                    decoration:const InputDecoration(
                      labelText:  "UserName",
                                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                    
                    ),
                  ),
                 const SizedBox(height: 20,),
                   TextFormField(
                      //passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your password";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
               ], ),
                  
                                
                              
     ) ,  
     const SizedBox(
              height: 20,
            ),
            // SUBMIT Button
            ElevatedButton(
                onPressed: ()  {
                  if (demokey.currentState!.validate())
                  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
             },),);}
                  
                 

                        },
                    
                    
                  
                child: const Text("SUBMIT")) ],),
                         ),);
          
  
  }
}
