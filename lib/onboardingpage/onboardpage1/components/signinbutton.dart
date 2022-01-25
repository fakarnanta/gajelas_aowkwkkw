import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SignInButton extends StatelessWidget {
  const SignInButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: size.width * 0.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
         child: TextButton.icon(
           onPressed: null, 
         icon: SvgPicture.asset('assets/icons/phone.svg'), label: Text("Lanjutkan dengan Telepon",
          style: TextStyle(
           fontFamily: 'plus-jakarta-sans',
           fontStyle: FontStyle.normal,
           fontWeight: FontWeight.normal
         ),),
         
         )
        ),
         Container(
          width: size.width * 0.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
         child: TextButton.icon(
         icon: SvgPicture.asset('assets/icons/google.svg'), label: Text("Lanjutkan dengan Google",
          style: TextStyle(
           fontFamily: 'plus-jakarta-sans',
           fontStyle: FontStyle.normal,
           fontWeight: FontWeight.normal
         ),),
          onPressed: () 
           signup (context); 
         )
        ),
         Container(
          width: size.width * 0.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
         child: TextButton.icon(
           onPressed: null, 
         icon: SvgPicture.asset('assets/icons/facebook.svg'), 
         label: Text("Lanjutkan dengan Facebook",
         style: TextStyle(
           fontFamily: 'plus-jakarta-sans',
           fontStyle: FontStyle.normal,
           fontWeight: FontWeight.normal
         ),
         )
         )
        )
      ]
    );
  }
}
// function to implement the google signin

// creating firebase instance
final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
	final GoogleSignIn googleSignIn = GoogleSignIn();
	final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
	if (googleSignInAccount != null) {
	final GoogleSignInAuthentication googleSignInAuthentication =
		await googleSignInAccount.authentication;
	final AuthCredential authCredential = GoogleAuthProvider.credential(
		idToken: googleSignInAuthentication.idToken,
		accessToken: googleSignInAuthentication.accessToken);
		
	// Getting users credential
	UserCredential result = await auth.signInWithCredential(authCredential);
	User? user = result.user;
	
	if (result != null) {
		Navigator.pushReplacement(
			context, MaterialPageRoute(builder: (context) => HomePage()));
	} // if result not null we simply call the MaterialpageRoute,
		// for go to the HomePage screen
	}
}


// check for auth state and return corresponding value
Future<bool> isAuthenticate() async {
  // you can implement shared prefereces
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('authKey') ?? false;
}

// whenever you logged in the user just call
prefs.setString('authKey', true);

class Wrapper extends StatefulWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Provider.of<SystemUser>(context).isAuthenticate(),
      builder: (context, snapshot) {
        // while loading data
        if (snapshot.data == null) {
          return CircularProgressIndicator();
        }
        // if has error
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        // retrieve data - check for authentication

        // authenticated, go to homescreen
        if (snapshot.data == true) {
          print('In HomeScreen');
          return NavigationWrapper();
        }
        // not authenticated, go to auth screen
        print('In Authenicate or Login');
        return Authenticate();
      },
    );
      
    );
  }
}