enum AlertType { dm, profileImage, postLike, postComment }

extension AlertTypeX on AlertType {
  static AlertType? fromServer(String value) {
    switch (value) {
      case 'dm':
        return AlertType.dm;
      case 'profile_image':
        return AlertType.profileImage;
      case 'post_like':
        return AlertType.postLike;
      case 'post_comment':
        return AlertType.postComment;
    }
    return null;
  }
}
