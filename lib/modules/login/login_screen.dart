import 'package:bmicalculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var emailControler = TextEditingController();
  var passwordControler = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {
            print('menu pressed');
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('search pressed');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailControler,
                    label: 'email',
                    type: TextInputType.emailAddress,
                    preifix: Icons.email,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'email not be empty';
                      }
                      return null;
                    },
                    Function: emailControler,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: passwordControler,
                    type: TextInputType.visiblePassword,
                    Function: Function,
                    label: 'password',
                    preifix: Icons.lock_outline,
                    isPassword: isPassword,
                    suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'password must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButtom(
                      text: 'login',
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailControler.text);
                          print(passwordControler.text);
                        }
                      }),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have email?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Register now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
