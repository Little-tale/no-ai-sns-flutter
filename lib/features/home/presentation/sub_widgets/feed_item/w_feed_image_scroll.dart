import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedImageScrollWidget extends StatefulWidget {
  const FeedImageScrollWidget({super.key, required this.imageURLString});

  final List<String> imageURLString;

  @override
  State<FeedImageScrollWidget> createState() => _FeedImageScrollWidgetState();
}

class _FeedImageScrollWidgetState extends State<FeedImageScrollWidget> {
  final controller = PageController(viewportFraction: 0.92);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSpacing.md,
      children: [
        SizedBox(
          height: 420,
          child: PageView.builder(
            controller: controller,
            itemCount: widget.imageURLString.length,
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: _imageSection(index),
                  ),
                  _imageTopCounterWidget(index),
                ],
              );
            },
          ),
        ),
        _bottomIndicatorWidget(context),
      ],
    );
  }

  Positioned _imageTopCounterWidget(int index) {
    return Positioned(
      top: 12,
      right: 20,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: "${index + 1}/${widget.imageURLString.length}".text
            .color(Colors.white)
            .make(),
      ),
    );
  }

  AspectRatio _imageSection(int index) {
    return AspectRatio(
      aspectRatio: 4 / 5,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: widget.imageURLString[index],
        ),
      ),
    );
  }

  SmoothPageIndicator _bottomIndicatorWidget(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: widget.imageURLString.length,
      axisDirection: Axis.horizontal,
      effect: WormEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: context.theme.hintColor,
      ),
    );
  }
}
