import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import CopperPrices
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
    InputCrudeOil {
        visible: root.visibleConnection === "CrudeOil"
    }
    TskoLLP {
        visible: root.visibleConnection === "TskoLlp"
    }
    ShopTRT {
        visible: root.visibleConnection === "ShopTRT"
    }
    BrentCrude {
        visible: root.visibleConnection === "BrentCrudeOil"
    }
    NaturelGasLot {
        visible: root.visibleConnection === "NaturalGase"
    }
    CopperPriceLot {
        visible: root.visibleConnection === "CopperPrices"
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
                              visibleConnection = sectionName
                              console.log(sectionName)
                          }
        onSectionShopTrt: sectionName => {
                              visibleConnection = sectionName
                              console.log(sectionName)
                          }
        onSectionBrentCrudeOil: sectionName => {
                                    visibleConnection = sectionName
                                    console.log(sectionName)
                                }
        onSectionNatureGas: sectionName => {
                                visibleConnection = sectionName
                                console.log(sectionName)
                            }
        onSectionCopperPrices: sectionName => {
                                   visibleConnection = sectionName
                                   console.log(sectionName)
                               }
    }
    TabBar {
        id: tabBar

        width: 100
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 20
        anchors.topMargin: 15
        background: Rectangle {
            color: "transparent"
        }

        // currentIndex: swipeView.currentIndex
        TabButton {
            text: "kk"
            width: implicitWidth
            background: Rectangle {
                color: tabBar.currentIndex == 0 ? "white" : "black"
            }

            onClicked: {
                Qt.uiLanguage = "kk"
            }
        }
        TabButton {
            text: "ru"
            width: implicitWidth
            background: Rectangle {
                color: tabBar.currentIndex == 1 ? "white" : "black"
            }

            onClicked: {
                Qt.uiLanguage = "ru"
            }
        }
        TabButton {
            text: "en"
            width: implicitWidth
            background: Rectangle {
                color: tabBar.currentIndex == 2 ? "white" : "black"
            }

            onClicked: {
                Qt.uiLanguage = "en"
            }
        }
    }
}
