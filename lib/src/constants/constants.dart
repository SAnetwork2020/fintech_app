import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

// final rootNavigatorKey = useRef(GlobalKey<NavigatorState>(debugLabel: "routerKey"));
//     final shellNavigatorKey = useRef(GlobalKey<NavigatorState>(debugLabel: "shellRouterKey"));