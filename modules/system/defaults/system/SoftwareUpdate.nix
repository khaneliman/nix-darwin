{ config, lib, ... }:

with lib;

{
  options = {
    system.defaults.SoftwareUpdate.AutomaticallyInstallMacOSUpdates = mkOption {
      type = types.nullOr types.bool;
      default = null;
      description = ''
        Automatically install Mac OS software updates. Defaults to false.
      '';
    };
  };

  config.system.defaults.system.SoftwareUpdate.domain = "/Library/Preferences/com.apple.SoftwareUpdate";
}
