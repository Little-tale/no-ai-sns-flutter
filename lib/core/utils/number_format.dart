String formatCompactNumber(
  num value, {
  int precision = 1,
}) {
  final absValue = value.abs();
  final sign = value.isNegative ? '-' : '';

  if (absValue < 1000) {
    return '$value';
  }

  if (absValue < 1000000) {
    final compact = absValue / 1000;
    return _formatWithSuffix(sign, compact, 'k', precision);
  }
  if (absValue < 1000000000) {
    final compact = absValue / 1000000;
    return _formatWithSuffix(sign, compact, 'M', precision);
  }

  final compact = absValue / 1000000000;
  return _formatWithSuffix(sign, compact, 'B', precision);
}

String _formatWithSuffix(
  String sign,
  num value,
  String suffix,
  int precision,
) {
  final fixed = value.toStringAsFixed(precision);
  final trimmed = fixed.replaceAll(RegExp(r'\.?0+$'), '');
  return '$sign$trimmed$suffix';
}

int? parseCompactNumberToInt(String text) {
  final trimmed = text.trim().toLowerCase();
  final match = RegExp(r'^(\d+(?:\.\d+)?)([kmb])?$').firstMatch(trimmed);
  if (match == null) {
    return null;
  }
  final value = double.tryParse(match.group(1) ?? '');
  if (value == null) {
    return null;
  }
  final suffix = match.group(2);
  final multiplier = switch (suffix) {
    'k' => 1000,
    'm' => 1000000,
    'b' => 1000000000,
    _ => 1,
  };
  return (value * multiplier).round();
}

extension CompactNumberFormat on num {
  String toCompact({int precision = 1}) {
    return formatCompactNumber(this, precision: precision);
  }
}
