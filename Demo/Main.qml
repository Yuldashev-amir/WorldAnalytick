import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Demo

Window {
    id: root
    height: 480
    title: qsTr("hello_world")
    visible: true
    width: 640
    color: "transparent"
    Rectangle {
        width: parent.width
        height: parent.height
        anchors.fill: parent
        gradient: Gradient {
            orientation: Qt.Horizontal
            GradientStop {
                position: 0.0
                color: "white"
            }
            GradientStop {
                position: 0.23
                color: "blue"
            }
            GradientStop {
                position: 1.0
                color: "lightblue"
            }
        }
    }

    property bool menuVisible: false
    property string visibleConnection: ""
    property string visibleActionPrice: ""
    property string visibleShopTrt: ""
    InputCrudeOil {
        visible: root.visibleConnection === "CrudeOil"
    }

    TskoLLP {
        visible: root.visibleActionPrice === "TskoLlp"
    }

    ShopTRT {
        visible: root.visibleShopTrt === "ShopTRT"
    }

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
        z: 2
        visible: menuVisible
        onSectionSelected: sectionName => {
                               visibleConnection = sectionName
                               console.log(sectionName)
                           }
        onSectionTskoLlp: sectionName => {
                              visibleActionPrice = sectionName
                              console.log(sectionName)
                          }
        onSectionShopTrt: sectionName => {
                              visibleShopTrt = sectionName
                              console.log(sectionName)
                          }
    }
}
