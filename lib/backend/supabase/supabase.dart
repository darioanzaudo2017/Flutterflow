import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://plsgjvaiuudddbdmqzyq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsc2dqdmFpdXVkZGRiZG1xenlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0OTg3NDEsImV4cCI6MjAzMjA3NDc0MX0.ApBLabCIZ51P4V3SYgJWvNPLm6uWaQCp-xZH-UDZ_XA';

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
