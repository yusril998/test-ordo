import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// Environment declare here
class Env {
  Env._({@required this.apiBaseUrl});

  /// Dev mode
  factory Env.dev() {
    return Env._(apiBaseUrl: 'http://114.5.33.244:81/absensi/api/');
  }

  /// Dev mode
  factory Env.prod() {
    return Env._(
        apiBaseUrl: 'http://e-bkpsdm.sampangkab.go.id:81/absensi/api/');
  }

  final String apiBaseUrl;
}

/// Config env
class Config {
  factory Config({Env environment}) {
    if (environment != null) {
      instance.env = environment;
    }
    return instance;
  }

  Config._private();

  static final Config instance = Config._private();

  Env env;
}
