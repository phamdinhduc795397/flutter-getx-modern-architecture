import 'dart:io';
import 'package:fluttergetx/providers/network/api_endpoint.dart';
import 'package:fluttergetx/providers/network/api_request_representable.dart';
import 'package:fluttergetx/providers/network/api_provider.dart';

enum AuthType { login, logout }

class AuthAPI implements APIRequestRepresentable {
  final AuthType type;
  final String username;
  final String repo;

  const AuthAPI._({this.type, this.username, this.repo});

  const AuthAPI.login({String username, String repo})
      : this._(type: AuthType.login, username: username, repo: repo);

  @override
  String get endpoint => APIEndpoint.github;

  String get path {
    switch (type) {
      case AuthType.login:
        return "/$username/$repo";
      case AuthType.logout:
        return "/login";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.post;
  }

  Map<String, String> get headers =>
      {HttpHeaders.contentTypeHeader: 'application/json'};

  Map<String, String> get query {
    switch (type) {
      case AuthType.login:
        return {HttpHeaders.contentTypeHeader: 'application/json'};
      case AuthType.logout:
        return {HttpHeaders.contentTypeHeader: 'application/json'};
      default:
        return null;
    }
  }

  @override
  get body => null;

  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
