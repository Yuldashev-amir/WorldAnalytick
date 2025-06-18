import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Demo

Window {
  height: 480
  title: qsTr("hello_world")
  visible: true
  width: 640

  Component.onCompleted: Qt.uiLanguage = "kk"

  Shortcut {
    context: Qt.ApplicationShortcut
    sequence: StandardKey.Quit

    onActivated: Qt.quit()
  }
  Rectangle {
    anchors.fill: parent
    anchors.margins: parent.height / 4
    color: "grey"

    MouseArea {
      anchors.fill: parent

      onWheel: {
        if (wheel.angleDelta.y > 0) {
          Utils.count += 1;
        } else {
          Utils.count -= 1;
        }
      }
    }
    Image {
      id: name

      anchors.right: parent.right
      anchors.rightMargin: height / 4
      anchors.top: parent.top
      anchors.topMargin: height / 4
      height: parent.height / 4
      opacity: 0.85
      source: "qrc:/mchs-logo.png"
      sourceSize.height: height
    }
    Text {
      anchors.centerIn: parent
      anchors.fill: parent
      font: Fonts.dmX
      horizontalAlignment: Qt.AlignHCenter
      text: parseInt(Utils.count)
      verticalAlignment: Qt.AlignVCenter

      Component.onCompleted: {
        font.pointSize = height / 2;
      }
    }
    Rectangle {
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      color: "transparent"
      height: parent.height / 4
      width: parent.width / 4

      Util {
      }
    }
  }
  RowLayout {
    property var step: parent.height / 8

    anchors.left: parent.left
    anchors.leftMargin: step / 4
    anchors.right: parent.right
    anchors.rightMargin: step / 4
    anchors.top: parent.top
    anchors.topMargin: step / 4
    height: step
    spacing: step / 8

    Button {
      text: "-"

      onClicked: {
        Utils.count -= 1;
      }
      onPressAndHold: {
        btnDecrementTimer.start();
      }
      onReleased: {
        btnDecrementTimer.stop();
      }

      Timer {
        id: btnDecrementTimer

        interval: 50
        repeat: true

        onTriggered: {
          Utils.count -= 1;
        }
      }
    }
    Button {
      text: "+"

      onClicked: {
        Utils.count += 1;
      }
      onPressAndHold: {
        btnIncrementTimer.start();
      }
      onReleased: {
        btnIncrementTimer.stop();
      }

      Timer {
        id: btnIncrementTimer

        interval: 50
        repeat: true

        onTriggered: {
          Utils.count += 1;
        }
      }
    }
    Button {
      text: qsTr("utils")

      onClicked: {
        Watcher.getUtils();
      }
    }
    Button {
      id: resetBtn

      text: qsTr("reset")

      onClicked: {
        Watcher.setCounter(0);
      }
    }
    Rectangle {
      Layout.fillWidth: true
      Layout.preferredHeight: parent.height
      color: "transparent"
    }
    TabBar {
      id: tabBar

      implicitHeight: resetBtn.height
      implicitWidth: parent.width / 8

      background: Rectangle {
        color: "transparent"
      }

      // currentIndex: swipeView.currentIndex

      TabButton {
        text: "kk"

        background: Rectangle {
          color: tabBar.currentIndex == 0 ? "orange" : "yellow"
        }

        onClicked: {
          Qt.uiLanguage = "kk";
        }
      }
      TabButton {
        text: "ru"

        background: Rectangle {
          color: tabBar.currentIndex == 1 ? "orange" : "yellow"
        }

        onClicked: {
          Qt.uiLanguage = "ru";
        }
      }
      TabButton {
        text: "en"

        background: Rectangle {
          color: tabBar.currentIndex == 2 ? "orange" : "yellow"
        }

        onClicked: {
          Qt.uiLanguage = "en";
        }
      }
    }
    // Button {
    //   text: qsTr("Translate")

    //   onClicked: {
    //     Qt.uiLanguage = Qt.uiLanguage === "ru" ? "en" : "ru";
    //   }
    // }
  }
  Connections {
    function onCountChanged() {
      console.log("Count changed");
    }

    target: Utils
  }
}
