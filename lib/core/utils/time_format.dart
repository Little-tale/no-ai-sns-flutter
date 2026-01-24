import 'package:intl/intl.dart';

String formatTimeAgoOrDate(DateTime dateTime, {DateTime? now}) {
  final current = now ?? DateTime.now();
  final diff = current.difference(dateTime);

  if (diff.inDays >= 7) {
    return DateFormat('yy.MM.dd').format(dateTime);
  }
  if (diff.inDays >= 1) {
    return '${diff.inDays}d ago';
  }
  if (diff.inHours >= 1) {
    return '${diff.inHours}h ago';
  }
  if (diff.inMinutes >= 1) {
    return '${diff.inMinutes}m ago';
  }
  return 'now';
}

String formatIsoTimeAgoOrDate(String isoString, {DateTime? now}) {
  final parsed = DateTime.parse(isoString);
  return formatTimeAgoOrDate(parsed, now: now);
}

extension IsoTimeFormat on String {
  String toTimeAgoOrDate({DateTime? now}) {
    return formatIsoTimeAgoOrDate(this, now: now);
  }
}
