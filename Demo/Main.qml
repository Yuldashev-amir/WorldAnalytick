import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Demo

Window {
    property bool menuVisible: false
    height: 480
    title: qsTr("hello_world")
    visible: true
    width: 640
    color: "lightblue"
    InputCrudeOil {}

    Button {
        id: burgerMenu
        width: 50
        height: 50
        hoverEnabled: true
        background: Rectangle {
            color: "transparent"
        }
        Text {
            text: "☰"
            color: burgerMenu.hovered ? "gray" : "black"
            font.pixelSize: 40
            font.bold: true
            anchors.centerIn: parent
        }
        onClicked: {
            menuVisible = !menuVisible
        }
    }
    MenuSideBar {
        id: sideBar
        visible: menuVisible
    }
}
