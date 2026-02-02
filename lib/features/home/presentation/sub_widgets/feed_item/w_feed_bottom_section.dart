import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final class FeedBottomSectionWidget extends StatefulWidget {
  const FeedBottomSectionWidget({
    super.key,
    required this.creatorName,
    required this.currentLike,
    required this.likesCountText,
    required this.commentCountText,
    required this.comment,
    required this.commentEvent,
    required this.likeEvent,
  });

  final String creatorName;
  final bool currentLike;
  final String likesCountText;
  final String commentCountText;
  final String comment;

  final VoidCallback commentEvent;
  final VoidCallback likeEvent;

  @override
  State<FeedBottomSectionWidget> createState() =>
      _FeedBottomSectionWidgetState();
}

class _FeedBottomSectionWidgetState extends State<FeedBottomSectionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return VStack(spacing: 4, [
      HStack(spacing: 8, [
        _likeButtonWidget().onTap(() => {}),
        _commentButtonWidget(context).onTap(widget.commentEvent),
        Spacer(),
      ]),
      _bottomCommentWidget(context),
    ]);
  }

  Widget _likeButtonWidget() {
    return HStack(spacing: 4, crossAlignment: CrossAxisAlignment.center, [
      Icon(
        size: 24,
        widget.currentLike ? Icons.favorite : Icons.favorite_border,
        color: Colors.pinkAccent,
      ),
      widget.likesCountText.text.light.make(),
    ]).onTap(widget.likeEvent);
  }

  Widget _commentButtonWidget(BuildContext context) {
    return HStack(spacing: 4, [
      Icon(size: 24, Icons.comment, color: context.colors.inverseSurface),
      widget.commentCountText.text.light.make(),
    ]);
  }

  Widget _bottomCommentWidget(BuildContext context) {
    final baseStyle = Theme.of(context).textTheme.bodyMedium;
    final nameStyle = baseStyle?.copyWith(fontWeight: FontWeight.w600);
    final commentStyle = baseStyle?.copyWith(fontWeight: FontWeight.w300);
    final singleLineComment = widget.comment.replaceAll('\n', ' ');

    return SizedBox(
      width: double.infinity,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        alignment: Alignment.topLeft,
        child: _isExpanded
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${widget.creatorName} ',
                          style: nameStyle,
                        ),
                        TextSpan(text: widget.comment, style: commentStyle),
                      ],
                    ),
                  ),
                  "접기".text
                      .color(context.theme.hintColor)
                      .semiBold
                      .make()
                      .onTap(() => setState(() => _isExpanded = false)),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 6,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${widget.creatorName} ',
                            style: nameStyle,
                          ),
                          TextSpan(
                            text: singleLineComment,
                            style: commentStyle,
                          ),
                        ],
                      ),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  "더보기".text
                      .color(context.theme.hintColor)
                      .semiBold
                      .make()
                      .onTap(() => setState(() => _isExpanded = true)),
                ],
              ),
      ),
    );
  }
}
