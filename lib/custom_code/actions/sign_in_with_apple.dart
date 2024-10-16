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

import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:sign_in_with_apple_platform_interface/authorization_request.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future signInWithApple() async {
  final supabase = SupaFlow.client;
  await supabase.auth.signInWithOAuth(
    Provider.apple,
    redirectTo: isWeb ? 'fanmatch://fanmatch.com' : 'fanmatch://fanmatch.com',
  );
}
