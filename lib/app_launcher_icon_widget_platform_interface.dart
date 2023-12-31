import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_launcher_icon_widget_method_channel.dart';

abstract class AppLauncherIconWidgetPlatform extends PlatformInterface {
  AppLauncherIconWidgetPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppLauncherIconWidgetPlatform _instance =
      MethodChannelAppLauncherIconWidget();

  static AppLauncherIconWidgetPlatform get instance => _instance;

  static set instance(AppLauncherIconWidgetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Uint8List?> getAppLauncherIcon() {
    throw UnimplementedError("getAppLauncherIcon() has not been implemented.");
  }
}
