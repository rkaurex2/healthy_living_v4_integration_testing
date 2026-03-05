import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/rxdart.dart';

RemoteMessage? killedStateRemoteMessage;
final BehaviorSubject<RemoteMessage> messageStreamController =
BehaviorSubject<RemoteMessage>();