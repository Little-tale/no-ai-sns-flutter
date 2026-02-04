enum AlertType {
  dm,
  profileImage,
  postLike,
  postComment,
  postUpload,
  postUploadFail,
  unknown,
}

extension AlertTypeX on AlertType {
  static AlertType fromServer(String value) {
    switch (value) {
      case 'dm':
        return AlertType.dm;
      case 'profile_image':
        return AlertType.profileImage;
      case 'post_like':
        return AlertType.postLike;
      case 'post_comment':
        return AlertType.postComment;
      case 'post_upload_success':
        return AlertType.postUpload;
      case 'post_upload_fail':
        return AlertType.postUploadFail;
    }
    return AlertType.unknown;
  }
}
