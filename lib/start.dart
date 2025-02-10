
import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFBE6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo2.png', height: 150),
            SizedBox(height: 20),
            Text(
              "Explore the app",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF347928)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Monitor your harvest with precision and take control of your fruit's ripeness and count, all in one place",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 275,
              child: 
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    side: BorderSide(color: Color(0xFF347928)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text("Sign In", style: TextStyle(color: Color(0xFF347928))),
                ),
            ),
            SizedBox(
              width: 275,
              child: 
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    side: BorderSide(color: Color(0xFF347928)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  child: Text("Create account", style: TextStyle(color: Color(0xFF347928))),
                ),
            ),
            SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }
}
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBE6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFF347928)), onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset("assets/logo2.png", height: 60),
            ),
            SizedBox(height: 10),
            Text("Hi, Welcome to RipeN-Go", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF347928))),
            SizedBox(height: 20),
            Text("Email address or Phone number"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your email or phone number", )),
            SizedBox(height: 10),
            Text("Password"),
            TextField(obscureText: true, decoration: InputDecoration( 
              hintText: "Password", border: OutlineInputBorder(), suffixIcon: Icon(Icons.visibility_off))),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Color(0xFF347928),
                ),
                Text("Remember me"),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                  },
                  child: Text("Forgot password?", style: TextStyle(color: Color(0xFF347928))),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFCCD2A), padding: EdgeInsets.symmetric(vertical: 15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: Center(child: Text("Log in", style: TextStyle(color: Color(0xFF347928), fontSize: 18))),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Divider(color: Color(0xFF99B994), thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Or with"),
                ),
                Expanded(child: Divider(color: Color(0xFF99B994), thickness: 1)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF347928)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.facebook, color: Color(0xFF347928)),
                  label: Text("Facebook", style: TextStyle(color: Color(0xFF347928), fontSize: 12)),
                ),
                SizedBox(width: 10),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF347928)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.g_translate, color: Color(0xFF347928)),
                  label: Text("Google", style: TextStyle(color: Color(0xFF347928), fontSize: 12)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: Text("Don't have an account? Sign up", style: TextStyle(color: Color(0xFF347928))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBE6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFF347928)), onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Create Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF347928))),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration( labelText: "Full Name"),),
            TextField(decoration: InputDecoration( labelText: "Email")),
            TextField(decoration: InputDecoration( labelText: "Mobile Number")),
            TextField(obscureText: true, decoration: InputDecoration( labelText: "Password", suffixIcon: Icon(Icons.visibility_off))),
            TextField(obscureText: true, decoration: InputDecoration( labelText: "Confirm Password", suffixIcon: Icon(Icons.visibility_off))),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Color(0xFF347928),
                ),
                Text("I agree to the Terms & Conditions"),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFCCD2A), padding: EdgeInsets.symmetric(vertical: 15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: Center(child: Text("Sign Up", style: TextStyle(color: Color(0xFF347928), fontSize: 18, fontWeight: FontWeight.bold))),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Divider(color: Color(0xFF99B994), thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Or with"),
                ),
                Expanded(child: Divider(color: Color(0xFF99B994), thickness: 1)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF347928)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.facebook, color: Color(0xFF347928)),
                  label: Text("Facebook", style: TextStyle(color: Color(0xFF347928), fontSize: 12)),
                ),
                SizedBox(width: 10),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF347928)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.g_translate, color: Color(0xFF347928)),
                  label: Text("Google", style: TextStyle(color: Color(0xFF347928), fontSize: 12)),
                ),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Already have an account? Log in", style: TextStyle(color: Color(0xFF347928))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBE6),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot password?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF347928)),
            ),
            SizedBox(height: 10),
            Text("Don't worry! It happens. Please enter the email associated with your account."),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                 
                labelText: "Enter your email address or number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFCCD2A),
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: Center(
                child: Text("Send code", style: TextStyle(color: Color(0xFF347928), fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Remember password? Log in", style: TextStyle(color: Color(0xFF347928))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
