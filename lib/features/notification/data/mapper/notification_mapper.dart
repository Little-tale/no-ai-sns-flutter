import 'package:no_ai_sns/core/data/DTO/notification/dto_notification.gen.dart';
import 'package:no_ai_sns/core/utils/time_format.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_type/alert_type_entity.dart';

final class NotificationMapper {
  static List<AlertEntity> toAlertEntities(List<NotificationDTO> dtos) {
    return dtos.map(toAlertEntity).toList();
  }

  static AlertEntity toAlertEntity(NotificationDTO dto) {
    return AlertEntity(
      alertID: dto.id,
      userID: dto.userId,
      type: toType(dto.type),
      title: dto.title ?? "Empty",
      content: dto.body,
      createAt: dto.createdAt.toTimeAgoOrDate(),
      isRead: dto.isRead,
    );
  }

  static AlertType toType(String type) {
    return AlertTypeX.fromServer(type);
  }
}
