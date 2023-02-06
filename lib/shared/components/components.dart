

import 'package:flutter/material.dart';

Widget defaultButtom ({

  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  required Function()  function,
  required String text,


}) => 
Container(    
                  width: width,
                  color: background,
                  child: MaterialButton(
                    height: 50.0,
                    onPressed: function,
                    child: Text(
                      isUpperCase ? text.toUpperCase() : text,
                        style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
 

Widget defaultFormField ({
 
   required TextEditingController controller,
   required TextInputType type,
   Function(String)? onSubmit,
   bool isPassword = false,
   Function(String)? onChange,
   required  Function, validate,
   required String label,
   required IconData preifix,
   Function()? suffixPressed,
   IconData? suffix,

})
 => TextFormField(
            controller: controller,
            keyboardType: type,          
            obscureText: isPassword ,
            onFieldSubmitted: onSubmit,
            onChanged: onChange,
            validator: validate,
                    
                    decoration: InputDecoration(
                      labelText: label,
                      prefixIcon: Icon(
                        preifix,
                      ),
                      suffixIcon: suffix != null ? IconButton(
                        onPressed: suffixPressed,
                        icon: Icon(
                          suffix,
                        ),
                      ) : null,
                      border: OutlineInputBorder(),
                    ),
                  );
