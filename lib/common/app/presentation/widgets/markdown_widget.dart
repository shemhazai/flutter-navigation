import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

typedef OnTapArticle = void Function(String articleId);

/// Renders the markdown.
class ArticleMarkdown extends StatelessWidget {
  final String body;
  final OnTapArticle onTapArticle;

  const ArticleMarkdown({
    Key key,
    @required this.body,
    this.onTapArticle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: body,
      onTapLink: (String text, String href, String title) {
        final String articleId = _parseArticleId(href);
        if (articleId != null) {
          onTapArticle?.call(articleId);
        }
      },
      styleSheet: MarkdownStyleSheet(
        p: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  String _parseArticleId(String href) {
    final int index = href.indexOf(RegExp(':'));
    if (index < 0) return null;
    return href.substring(index + 1);
  }
}
