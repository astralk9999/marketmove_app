import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_model.dart';
import '../services/supabase_service.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  loading,
  error,
}

class AuthProvider extends ChangeNotifier {
  AuthStatus _status = AuthStatus.initial;
  UserModel? _user;
  String? _errorMessage;

  AuthStatus get status => _status;
  UserModel? get user => _user;
  String? get errorMessage => _errorMessage;
  bool get isAuthenticated => _status == AuthStatus.authenticated;
  bool get isLoading => _status == AuthStatus.loading;

  AuthProvider() {
    _init();
  }

  Future<void> _init() async {
    SupabaseService.authStateChanges.listen((data) async {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        await _loadUserProfile();
      } else if (event == AuthChangeEvent.signedOut) {
        _user = null;
        _status = AuthStatus.unauthenticated;
        notifyListeners();
      }
    });

    if (SupabaseService.currentUser != null) {
      await _loadUserProfile();
    } else {
      _status = AuthStatus.unauthenticated;
      notifyListeners();
    }
  }

  Future<void> _loadUserProfile() async {
    try {
      _status = AuthStatus.loading;
      notifyListeners();

      _user = await SupabaseService.getCurrentProfile();
      _status = AuthStatus.authenticated;
    } catch (e) {
      _errorMessage = e.toString();
      _status = AuthStatus.error;
    }
    notifyListeners();
  }

  Future<bool> signUp({
    required String email,
    required String password,
    required String fullName,
  }) async {
    try {
      _status = AuthStatus.loading;
      _errorMessage = null;
      notifyListeners();

      final response = await SupabaseService.signUp(
        email: email,
        password: password,
        fullName: fullName,
      );

      // DEBUG: Imprimir respuesta completa
      developer.log('=== SUPABASE SIGNUP RESPONSE ===');
      developer.log('User: ${response.user}');
      developer.log('User ID: ${response.user?.id}');
      developer.log('User Email: ${response.user?.email}');
      developer.log('Identities: ${response.user?.identities}');
      developer.log('Session: ${response.session}');
      developer.log('================================');

      // Verificar si el registro fue exitoso
      if (response.user == null) {
        _errorMessage = 'No se pudo crear la cuenta. Verifica tus datos.';
        _status = AuthStatus.error;
        notifyListeners();
        return false;
      }

      // Verificar si es un usuario nuevo o ya existía
      // Supabase devuelve identities vacío si el email ya existe
      final identities = response.user!.identities;
      if (identities == null || identities.isEmpty) {
        _errorMessage = 'Este correo ya está registrado. Intenta iniciar sesión.';
        _status = AuthStatus.error;
        notifyListeners();
        return false;
      }

      _status = AuthStatus.unauthenticated;
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = _parseAuthError(e.toString());
      _status = AuthStatus.error;
      notifyListeners();
      return false;
    }
  }

  String _parseAuthError(String error) {
    if (error.contains('User already registered')) {
      return 'Este correo ya está registrado';
    } else if (error.contains('Invalid email')) {
      return 'Correo electrónico inválido';
    } else if (error.contains('Password should be at least')) {
      return 'La contraseña debe tener al menos 6 caracteres';
    } else if (error.contains('Email rate limit exceeded')) {
      return 'Demasiados intentos. Espera unos minutos';
    }
    return error;
  }

  Future<bool> signIn({
    required String email,
    required String password,
  }) async {
    try {
      _status = AuthStatus.loading;
      _errorMessage = null;
      notifyListeners();

      await SupabaseService.signIn(email: email, password: password);
      await _loadUserProfile();
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      _status = AuthStatus.error;
      notifyListeners();
      return false;
    }
  }

  Future<void> signOut() async {
    await SupabaseService.signOut();
    _user = null;
    _status = AuthStatus.unauthenticated;
    notifyListeners();
  }

  Future<void> refreshProfile() async {
    await _loadUserProfile();
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }
}
