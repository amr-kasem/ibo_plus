import 'package:flutter/material.dart';

class HorizontalScope extends FocusScope {
  const HorizontalScope({
    required super.child,
    super.autofocus,
    super.canRequestFocus,
    super.debugLabel,
    super.key,
    super.node,
    super.onFocusChange,
    super.onKey,
    super.onKeyEvent,
    super.parentNode,
    super.skipTraversal = true,
  });
}

class VerticalScope extends FocusScope {
  const VerticalScope({
    required super.child,
    super.autofocus,
    super.canRequestFocus,
    super.debugLabel,
    super.key,
    super.node,
    super.onFocusChange,
    super.onKey,
    super.onKeyEvent,
    super.skipTraversal = true,
    super.parentNode,
  });
}
