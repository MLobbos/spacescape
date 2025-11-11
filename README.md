# Spacescape

Ein rasanter 2D‑Top‑Down Space‑Shooter mit Flutter und der Flame‑Engine. Bewege dein Raumschiff durch Gegnerwellen, sammle Power‑Ups und jage deinen Highscore. Das Schiff feuert automatisch – du konzentrierst dich ganz auf Bewegung und Taktik.

## Inhalt
- [Überblick](#überblick)
- [Features](#features)
- [Steuerung](#steuerung)
- [Installation und Start](#installation-und-start)
- [Technologien](#technologien)
- [Geplante Erweiterungen (Roadmap)](#geplante-erweiterungen-roadmap)
- [Mitmachen (Contributing)](#mitmachen-contributing)
- [Lizenz](#lizenz)
- [Credits](#credits)

## Überblick
Spacescape ist ein arcadiger Endless‑Shooter. Dein Schiff bewegt sich frei über das Spielfeld, während Gegnerwellen einfliegen. Power‑Ups wie Mehrfachschuss helfen dir, länger zu überleben und mehr Punkte zu sammeln. Parallax‑Sterne, SFX und Musik sorgen für Atmosphäre.

## Features
- Auto‑Fire: Dauerfeuer ohne Knopfdruck.
- Unsichtbarer, frei positionierbarer Joystick (Floating): Er erscheint dort, wo du den Finger aufsetzt, und bleibt transparent für maximale Sicht.
- Flüssige Bewegung: Sanfte Beschleunigung/Dämpfung und erhöhte Maximalgeschwindigkeit für ein geschmeidiges Handling.
- Gegnerwellen, Treffererkennung und Health‑System.
- Sammelbare Power‑Ups (z. B. Multi‑Fire, Heilung).
- Score‑Tracking und UI‑Overlays (Pause, Game Over, Health‑Bar, Score).
- Soundkulisse: Hintergrundmusik und SFX (Laser/Power‑Ups).

## Steuerung
- Touch (Mobil/Tablet):
  - Bewegung: Tippe irgendwo auf den Bildschirm. Der (unsichtbare) Joystick erscheint an dieser Stelle; durch Ziehen steuerst du die Richtung.
  - Schießen: Automatisch, kein Button nötig.
- Tastatur (Desktop):
  - Bewegung: W, A, S, D
  - Schießen: Automatisch

## Installation und Start
Voraussetzungen: Aktuelles Flutter SDK.

```zsh
# Projekt klonen
git clone <dein-repo-oder-pfad>
cd spacescape

# Abhängigkeiten installieren
flutter pub get

# App starten (verbundenes Gerät/Emulator/Simulator)
flutter run
```

Tipps:
- iOS: Bei Bedarf Pods installieren/mit Xcode öffnen und auf Simulator/Device starten.
- Web/Desktop: Optional mit `flutter run -d chrome` bzw. `-d macos/windows/linux` starten.

## Technologien
- Dart + Flutter
- Flame Engine (Komponenten, Parallax, Input, Audio, Kollisionen)

Wichtige Dateien:
- Game‑Loop: `lib/game/game.dart`
- Spieler & Steuerung: `lib/game/player.dart`, `lib/game/floating_joystick_area.dart`
- Gegner & Power‑Ups: `lib/game/enemy_manager.dart`, `lib/game/power_up_manager.dart`
- Modelle/Spielerdaten: `lib/models/*`

## Geplante Erweiterungen (Roadmap)
- Mehr Gegnertypen und Bosskämpfe (Muster, besondere Fähigkeiten)
- Level‑Fortschritt, Missionen/Ziele, Wellen‑Design
- Upgrades & Economy (Schiffs‑Upgrades, neue Waffen, Shop)
- Weitere Power‑Ups (Schild, Zeitlupe, Orbit‑Drohnen, Railgun)
- Einstellungen: Joystick‑Empfindlichkeit/Dead‑Zone, Haptik, Audio‑Lautstärke, Barrierefreiheit
- Leaderboard/Cloud‑Save (z. B. Firebase), Achievements
- Visuelle Effekte: Treffer‑Feedback, Partikel‑Feinschliff, Screen‑Shake/Kameraeffekte
- Performance‑Optimierung & Tests (Profiling, Asset‑Atlas, Objekt‑Pooling)
- Lokalisierung (weitere Sprachen)

## Mitmachen (Contributing)
Beiträge sind willkommen!
- Bugs/Ideen als Issue melden
- Pull Requests mit klarer Beschreibung (Was/Warum/Wie getestet?)
- Vorab bitte `flutter analyze` ausführen und bestehenden Stil übernehmen

## Lizenz
Dieses Projekt steht unter der MIT‑Lizenz. Siehe [LICENSE](LICENSE).

## Credits
- Flame‑Team für die großartige Game‑Engine
- Ursprungsideen/Assets inspiriert durch das Open‑Source‑Projekt „Spacescape“ (Ryuzaki/ufrshubham)

Viel Spaß beim Zocken und Entwickeln – Feedback und Wünsche gerne als Issue einreichen!
