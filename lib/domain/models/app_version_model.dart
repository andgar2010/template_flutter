library splash;

class AppVersion {
  AppVersion({
    this.version,
    this.storeAppUrl,
    this.isMandatoryUpdate,
  });

  String? version;
  String? storeAppUrl;
  bool? isMandatoryUpdate;
}
