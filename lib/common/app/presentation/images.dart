/// Lists paths to images to avoid handwriting them when building an image widget.
class Images {
  const Images._();

  static const common = _Common();
  static const home = _HomePage();
}

class _Common {
  const _Common();

  String get chevronLeft24 => 'assets/images/ic_chevron_left_24.png';
  String get chevronRight24 => 'assets/images/ic_chevron_right_24.png';
  String get search24 => 'assets/images/ic_search_24.png';
}

class _HomePage {
  const _HomePage();

  String get userAvatar48 => 'assets/images/ic_user_avatar_48.png';
}
