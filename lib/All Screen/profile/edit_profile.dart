import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:story_book/widget/customtextfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: Column(
          children: [
            Gap(50),
             Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
             ),
             Gap(10),
              CustomTextField(
                hintText: "Name",
              ),
              CustomTextField(
                hintText: "Address",
              ),
              CustomTextField(
                hintText: "Phone No",
              ),

               Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  MaterialButton(onPressed: (){
                            
                        

                  },
                  child: Text("Update"),
                  color: Colors.green,
                  
                  ),
                  SizedBox(width: 10,),

                  MaterialButton(onPressed: (){
                   Get.back();
                  },
                  child: Text("Cancel"),
                  color: Colors.red,
                  
                  )

                ],
              )


          
            
          ],
         ),
       ),
      
    );
  }
}

