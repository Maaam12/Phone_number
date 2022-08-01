import 'package:flutter/material.dart';

import 'SecondRoute.dart';

// ignore: camel_case_types
class formregistration extends StatefulWidget {
  const formregistration({Key? key}) : super(key: key);

  @override
  State<formregistration> createState() => _formregistration();
}

// ignore: camel_case_types
class _formregistration extends State<formregistration> {
  TextEditingController ctrusername = TextEditingController();
  TextEditingController ctrpassword = TextEditingController();
  int id = 1;
  String myPhone= "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Registrasi"),),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrusername,
              decoration: const InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),

            const SizedBox(height: 10,),
            TextField(
              controller: ctrpassword,
              decoration: const InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 10,),

            const Text("Jenis Kelamin",style: TextStyle(fontSize: 15),),
            const SizedBox(height: 10,),

            Row(
              children: [
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState((){
                    id = 1;
                  });


                },
              ),
                const Text("Male")
              ],
            ),


            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState((){
                      id = 2;
                    });

                  },
                ),
                const Text("Female")
              ],
            ),
            Text("phone :" +myPhone),
            ElevatedButton(onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              ); 

              print("hasil input phone number : "+result.toString());
              setState(() {
                myPhone = result.toString();
              });

            },  child: Text('phone number')),
            Center(
                child: Container(
            width: 200,
            child: ElevatedButton(onPressed: () {

              }, child:Text("Submit")),
            ))
          ],
        ),
      ),
    );
  }
}