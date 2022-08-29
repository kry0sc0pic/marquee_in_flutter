enum Speed { slow, normal, fast, mySpeed1, mySpeed2, mySpeed3 }

extension SpeedExtensionForScroll on Speed {
  Duration get moveDuration {
    switch (this) {
      case Speed.slow:
        return Duration(milliseconds: 100);
      case Speed.normal:
        return Duration(milliseconds: 50);
      case Speed.fast:
        return Duration(milliseconds: 25);
      case Speed.mySpeed1:
        return Duration(milliseconds: 100);
      case Speed.mySpeed2:
        return Duration(milliseconds: 50);
      case Speed.mySpeed3:
        return Duration(milliseconds: 25);
    }
  }
}

extension SpeedExtensionForAlternate on Speed {
  Duration get animationDuration {
    switch (this) {
      case Speed.slow:
        return Duration(milliseconds: 1500);
      case Speed.normal:
        return Duration(milliseconds: 1000);
      case Speed.fast:
        return Duration(milliseconds: 500);
      case Speed.mySpeed1:
        return Duration(seconds: 140);
      case Speed.mySpeed2:
        return Duration(seconds: 120);
      case Speed.mySpeed3:
        return Duration(seconds: 100);
    }
  }

  Duration get backDuration {
    return animationDuration;
  }

  Duration get pauseDuration {
    return animationDuration;
  }
}
