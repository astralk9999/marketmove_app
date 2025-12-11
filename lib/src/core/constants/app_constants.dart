class AppConstants {
  static const String appName = 'MarketMove';
  static const String appVersion = '1.0.0';
  
  // Supabase
  static const String supabaseUrl = 'https://ffzkjufeortzowkjlxhl.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmemtqdWZlb3J0em93a2pseGhsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjU0NDc2NDgsImV4cCI6MjA4MTAyMzY0OH0.VSfEqyLb2bY2_6HCaX8BAwP0S8jAQB0d4hRK9BmilW4';
}

class UserRoles {
  static const String staff = 'staff';
  
  static List<String> get allRoles => [staff];
}
