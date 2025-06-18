import QtQuick

Item {
  anchors.fill: parent

  Rectangle {
    anchors.fill: parent
    color: "orange"

    Text {
      anchors.fill: parent
      font: Fonts.rs3
      horizontalAlignment: Qt.AlignHCenter
      text: qsTr("text")
      verticalAlignment: Qt.AlignVCenter
    }
  }
}
