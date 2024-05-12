import 'package:flutter/material.dart';
import 'package:gp_project/pages/home_page.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  right: 100.0,
                  top: 120,
                  bottom: 0,
                ),
                child: Image.asset(
                  'lib/images/1715539440028.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "User Name", border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password", border: OutlineInputBorder()),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: MaterialButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      ),
                      minWidth: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      color: Colors.green,
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dose not have account ? "),
                      Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  )
                ],
              ))
            ]),
          ],
        ),
      ),
    );
  }
}
