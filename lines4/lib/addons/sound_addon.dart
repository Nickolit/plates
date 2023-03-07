import 'package:audioplayers/audioplayers.dart';

class SoundAddon {
  static final AudioPlayer musicPlayer = AudioPlayer();
  static final AudioPlayer sfxPlayer = AudioPlayer();
  // ignore: avoid-global-state
  static bool musicOn = true;
  // ignore: avoid-global-state
  static bool sfxOn = true;

  static void playMusic(String assetPath) {
    if (musicOn) {
      musicPlayer
        ..stop()
        ..play(DeviceFileSource(assetPath))
        ..setReleaseMode(ReleaseMode.loop);
    }
  }

  static void stopMusic() {
    musicPlayer.stop();
  }

  static void playSound(String assetPath) {
    if (sfxOn) {
      sfxPlayer.play(DeviceFileSource(assetPath));
    }
  }

  static void setMusicEnabled(bool enabled) {
    musicOn = enabled;
    if (!musicOn) {
      musicPlayer.stop();
    }
  }

  static void setSfxEnabled(bool enabled) {
    sfxOn = enabled;
  }
}
