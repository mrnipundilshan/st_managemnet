import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stu_management/widgets/widgets.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Container(
            width: size.width,
            height: size.height,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
                opacity: 0.52,
              ),
              color: Color.fromARGB(255, 0, 183, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.2),
                Text(
                  "Welcome",
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 24, 14, 85),
                    fontSize: size.width * 0.12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  height: size.height * 0.5,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Logi",
                          style: GoogleFonts.oswald(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 24, 14, 85),
                            fontSize: size.width * 0.08,
                          ),
                        ),
                        SizedBox(height: size.height * 0.05),
                        text_field(
                            controller: usernamecontroller,
                            size: size,
                            hint: "Username"),
                        SizedBox(height: size.height * 0.01),
                        text_field(
                            controller: passwordcontroller,
                            size: size,
                            hint: "Password"),
                        SizedBox(height: size.height * 0.01),
                        Container(
                          width: size.width * 0.95,
                          height: size.height * 0.06,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 183, 255),
                            ),
                            child: Text(
                              "LOGIN",
                              style: GoogleFonts.oswald(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 24, 14, 85),
                                fontSize: size.width * 0.06,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        GestureDetector(
                            child: Text.rich(
                          TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.04,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 24, 14, 85),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
