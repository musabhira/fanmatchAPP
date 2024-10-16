// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<bool> googleSigninFlow() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      // User canceled the sign-in process
      return false;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final supabase = SupaFlow.client;
    final response = await supabase.auth.signInWithIdToken(
      provider: Provider.google,
      idToken: googleAuth.idToken!,
      accessToken: googleAuth.accessToken,
    );

    if (response.session == null || response.user == null) {
      throw Exception('Supabase login error.');
    }

    return true; // Successful sign-in
  } catch (error) {
    print('Google sign-in error: $error');
    return false; // Failed sign-in
  }
}
