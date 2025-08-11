import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Demo

Window {
    id: root
    height: 480
    title: qsTr("Analyticks")
    visible: true
    width: 640
    color: "transparent"
    Component.onCompleted: Qt.uiLanguage = "kk"

    Shortcut {
        context: Qt.ApplicationShortcut
        sequence: StandardKey.Quit

        onActivated: Qt.quit()
    }

    RowLayout {
        property var step: parent.height / 8
        anchors.rightMargin: step / 2
        anchors.left: parent.right
        anchors.top: parent.top
        anchors.topMargin: step / 2
        height: step
        spacing: step / 8
        TabBar {
            id: tabBar

            implicitHeight: burgerMenu.height
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
                    Qt.uiLanguage = "kk"
                }
            }
            TabButton {
                text: "ru"

                background: Rectangle {
                    color: tabBar.currentIndex == 1 ? "orange" : "yellow"
                }

                onClicked: {
                    Qt.uiLanguage = "ru"
                }
            }
            TabButton {
                text: "en"

                background: Rectangle {
                    color: tabBar.currentIndex == 2 ? "orange" : "yellow"
                }

                onClicked: {
                    Qt.uiLanguage = "en"
                }
            }
        }
    }
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
                color: "black"
            }
            GradientStop {
                position: 1.0
                color: Qt.darker("white")
            }
        }
    }
    property bool menuVisible: false
    property string visibleConnection: ""
    property string visibleActionPrice: ""
    property string visibleShopTrt: ""
    property string visibleBrentCrudeOil: ""
    property string visibleNaturalGase: ""
    InputCrudeOil {
        visible: root.visibleConnection === "CrudeOil"
    }
    TskoLLP {
        visible: root.visibleActionPrice === "TskoLlp"
    }
    ShopTRT {
        visible: root.visibleShopTrt === "ShopTRT"
    }
    BrentCrude {
        visible: root.visibleBrentCrudeOil === "BrentCrudeOil"
    }
    NaturelGasLot {
        visible: root.visibleNaturalGase === "NaturalGase"
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
        onSectionBrentCrudeOil: sectionName => {
                                    visibleBrentCrudeOil = sectionName
                                    console.log(sectionName)
                                }
        onSectionNatureGas: sectionName => {
                                visibleNaturalGase = sectionName
                                console.log(sectionName)
                            }
    }
}
