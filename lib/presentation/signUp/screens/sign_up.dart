import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/constants/auth_button.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/home/screens/home.dart';
import 'package:realestate/presentation/signIn/screens/login.dart';
import 'package:realestate/presentation/signIn/widgets/textform_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Image.network(
              "https://img.freepik.com/free-photo/hands-with-luxurious-house_1232-1077.jpg?w=740&t=st=1704351147~exp=1704351747~hmac=859c7baddab8d02168e9404c813c356df5456bfbcce656fac5cabc313c72f618",
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.cinzel(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const TextFormWidget(
                    hintText: "Enter Username",
                    prefixIcon: Icons.person,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const TextFormWidget(
                    hintText: "Enter your email",
                    prefixIcon: Icons.email,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const TextFormWidget(
                    hintText: "Enter your password",
                    prefixIcon: Icons.lock,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const TextFormWidget(
                    hintText: "Confirm password",
                    prefixIcon: Icons.lock,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ElevatedButtonWidget(
                    onPress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    text: "Sign Up",
                    bgColor: purpleColor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already an User?",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.cinzel(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blackColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "or login with",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: whiteColor,
                              ),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://sanantoniotreesurgeons.com/wp-content/uploads/2021/05/Illustration-of-Google-icon-on-transparent-background-PNG.png',
                                  ),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
