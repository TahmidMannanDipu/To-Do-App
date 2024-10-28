import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/my_buttons.dart';

 class DialogBox extends StatelessWidget {
   final TextEditingController textEditingController;
   final VoidCallback onSave;
   final VoidCallback onCancel;
   const DialogBox({super.key,
     required this.textEditingController,
     required this.onSave,
     required this.onCancel});



   @override
   Widget build(BuildContext context) {
     return AlertDialog(
       backgroundColor: Colors.yellow[200],
       content: SizedBox(
         height: 200,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             //input from user
             TextField(
               controller: textEditingController,
               decoration: const InputDecoration(
                 border:OutlineInputBorder(),
                 hintText: "Add a new task"
               ),
             ),
              // buttons-> save and cancel
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 //Save button
                 MyButtons(text: "Save", onPressed: onSave,color: Theme.of(context).primaryColor,),
               const SizedBox(width: 16),
               //cancel button
               MyButtons(text: 'Cancel', onPressed: onCancel,color: Colors.redAccent,)],
             )
           ],
         ),
       ),
     );
   }
 }
