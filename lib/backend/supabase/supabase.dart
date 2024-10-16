import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://iamsxxtztcywfvothvpq.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlhbXN4eHR6dGN5d2Z2b3RodnBxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc0MTc1NDQsImV4cCI6MjA0Mjk5MzU0NH0.bpB6OZwQcKZleTrtd4iNhAdrMcR1U_PwQjE942h200M';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
