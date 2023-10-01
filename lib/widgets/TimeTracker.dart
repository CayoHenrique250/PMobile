class TimeTracker {
  static int _activeTimeInSeconds = 0;

  static void reset() {
    _activeTimeInSeconds = 0;
  }

  static void incrementTime() {
    _activeTimeInSeconds++;
  }

  static int get activeTimeInSeconds => _activeTimeInSeconds;
}

class TimeTracker2 {
  static int _activeTimeInSeconds2 = 0;

  static void reset2() {
    _activeTimeInSeconds2 = 0;
  }

  static void incrementTime2() {
    _activeTimeInSeconds2++;
  }

  static int get activeTimeInSeconds2 => _activeTimeInSeconds2;
}
