pragma Singleton
import QtQuick

QtObject {
  readonly property FontLoader _boldMono: FontLoader {
    source: "qrc:/NotoSansMono-Bold.ttf"
  }
  readonly property FontLoader _boldSans: FontLoader {
    source: "qrc:/NotoSans-Bold.ttf"
  }
  readonly property FontLoader _digitalMono: FontLoader {
    source: "qrc:/Digital-7-Mono.ttf"
  }
  readonly property FontLoader _lightMono: FontLoader {
    source: "qrc:/NotoSansMono-Light.ttf"
  }
  readonly property FontLoader _lightSans: FontLoader {
    source: "qrc:/NotoSans-Light.ttf"
  }
  readonly property FontLoader _mediumSans: FontLoader {
    source: "qrc:/NotoSans-Medium.ttf"
  }
  readonly property FontLoader _regularMono: FontLoader {
    source: "qrc:/NotoSansMono-Regular.ttf"
  }
  readonly property FontLoader _regularSans: FontLoader {
    source: "qrc:/NotoSans-Regular.ttf"
  }
  readonly property FontLoader _thinMono: FontLoader {
    source: "qrc:/NotoSansMono-Thin.ttf"
  }
  readonly property FontLoader _thinSans: FontLoader {
    source: "qrc:/NotoSans-Thin.ttf"
  }
  property font bm1: Qt.font({
    family: _boldMono.name,
    styleName: "Bold",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font bs1: Qt.font({
    family: _boldSans.name,
    styleName: "Bold",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font bs2: Qt.font({
    family: _boldSans.name,
    styleName: "Bold",
    pointSize: Math.round(Config.baseFontSize * 1.2)
  })
  property font dm1: Qt.font({
    family: _digitalMono.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font dmX: Qt.font({
    family: _digitalMono.name,
    styleName: "Regular"
  })
  property font lm1: Qt.font({
    family: _lightMono.name,
    styleName: "Light",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font lm2: Qt.font({
    family: _lightMono.name,
    styleName: "Light",
    pointSize: Math.round(Config.baseFontSize * 1.2)
  })
  property font lm3: Qt.font({
    family: _lightMono.name,
    styleName: "Light",
    pointSize: Math.round(Config.baseFontSize * 1.5)
  })
  property font ls1: Qt.font({
    family: _lightSans.name,
    styleName: "Light",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font ms1: Qt.font({
    family: _mediumSans.name,
    styleName: "Medium",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font rm1: Qt.font({
    family: _regularMono.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font rm2: Qt.font({
    family: _regularMono.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize * 1.2)
  })
  property font rm3: Qt.font({
    family: _regularMono.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize * 1.5)
  })
  property font rs1: Qt.font({
    family: _regularSans.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize)
    // weight: Math.min(Math.round(400 * DefaultStyle.dp), 1000)
  })
  property font rs2: Qt.font({
    family: _regularSans.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize * 1.2)
  })
  property font rs3: Qt.font({
    family: _regularSans.name,
    styleName: "Regular",
    pointSize: Math.round(Config.baseFontSize * 1.5)
  })
  property font tm1: Qt.font({
    family: _thinMono.name,
    styleName: "Thin",
    pointSize: Math.round(Config.baseFontSize)
  })
  property font ts1: Qt.font({
    family: _thinSans.name,
    styleName: "Thin",
    pointSize: Math.round(Config.baseFontSize)
  })
}
