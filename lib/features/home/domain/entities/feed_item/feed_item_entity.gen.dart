import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_item_entity.gen.freezed.dart';

@freezed
sealed class FeedItemEntity with _$FeedItemEntity {
  factory FeedItemEntity({
    required String creatorName,
    required String regDateText,
    required String contentText,
    required bool likeStatus,
    required String likeCountText,
    required String commentCountText,
    required List<String> imageUrls,
  }) = _FeedItemEntity;

  static FeedItemEntity dummy = FeedItemEntity(
    creatorName: 'Dummy Name',
    regDateText: '2h ago',
    contentText: 'AI는 내곁에 있으면 좋으나 남에게 있어선 독이다.\n너무 무섭당. 살려주세요',
    likeStatus: false,
    likeCountText: '2.4k',
    commentCountText: '24',
    imageUrls: [
      "https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=9046030&filePath=L2Rpc2sxL25ld2RhdGEvMjAxNC8yMS9DTFM0L2FzYWRhbF8yNTY4NjZfMjAxNDA0MTY=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004",
      "https://img.freepik.com/free-photo/autumn-scenery_1204-343.jpg?semt=ais_hybrid&w=740&q=80",
      "https://cdn.crowdpic.net/detail-thumb/thumb_d_CD1AC1C3A8D1C6EC1E951B6F6701C495.jpg",
    ],
  );
}
