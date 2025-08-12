import QtQuick
import QtQuick.Controls

import CrudeOil
import TskoLlp
import BrentCrudeOil
import NaturelGas
import ShopTrt

Page {
    id: rootSd
    property bool onClicked: false
    signal sectionSelected(string sectionName)
    signal sectionTskoLlp(string sectionName)
    signal sectionShopTrt(string sectionName)
    signal sectionBrentCrudeOil(string sectionName)
    signal sectionNatureGas(string sectionName)
    z: 1
    Rectangle {
        id: rectSideBar
        height: parent.height
        width: parent.width
        anchors.fill: parent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: "purple"
        Image {
            width: parent.width / 3
            height: parent.height
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/backgroundGradient.jpg"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
        Column {
            id: sideBar
            anchors.left: parent.left
            Button {
                id: burgerMenu
                width: parent.width
                height: 50
                hoverEnabled: true
                background: Rectangle {
                    color: "purple"
                }
                Text {
                    text: "✕"
                    color: burgerMenu.hovered ? "gray" : "black"
                    font.pixelSize: 40
                    font.bold: true
                    anchors.centerIn: parent
                }
                onClicked: {
                    menuVisible = !menuVisible
                }
            }
            Button {
                id: btnFirst
                Text {
                    id: textFirstBtn
                    text: qsTr("WTI CrudeOil")
                    anchors.centerIn: parent
                }
                width: 120
                height: 50
                hoverEnabled: true
                background: Rectangle {
                    color: btnFirst.hovered ? "lightblue" : "purple"
                }
                onClicked: {
                    if (rootSd.onClicked === true) {
                        rootSd.onClicked = false
                        rootSd.sectionSelected("new")
                    }
                    console.log("Button first clicked")
                    CrudeOil.loadingPriceCrudeOil()
                    rootSd.sectionSelected("CrudeOil")
                    rootSd.onClicked = true
                }
            }

            Button {
                id: btnSecond
                Text {
                    id: textSecondBtn
                    text: qsTr("Акции TSKO LLP")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                hoverEnabled: true
                anchors.topMargin: 50
                background: Rectangle {
                    color: btnSecond.hovered ? "lightblue" : "purple"
                }
                onClicked: {
                    if (rootSd.onClicked === true) {
                        rootSd.onClicked = false
                        rootSd.sectionSelected("new")
                        console.log("Button Second clicked")
                    }
                    rootSd.sectionSelected("TskoLlp")
                    console.log("Button clicked")
                    TskoLlp.loadingTskoLlp()
                    rootSd.onClicked = true
                }
            }

            Button {
                id: btnThird
                Text {
                    id: textThirdBtn
                    text: qsTr("Акции SHOP TRT")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                anchors.topMargin: 50
                hoverEnabled: true
                background: Rectangle {
                    color: btnThird.hovered ? "lightblue" : "purple"
                }
                onClicked: {
                    if (rootSd.onClicked === true) {
                        rootSd.onClicked = false
                        rootSd.sectionSelected("new")
                        console.log("Button third clicked")
                    }
                    console.log("Button clicked")
                    rootSd.sectionSelected("ShopTRT")
                    rootSd.onClicked = true
                    ShopTrt.loadingShopTrt()
                }
            }

            Button {
                id: btnFour
                Text {
                    id: textFourBtn
                    text: qsTr("Brent CrudeOil Lots")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                hoverEnabled: true
                background: Rectangle {
                    color: btnFour.hovered ? "lightblue" : "purple"
                }
                onClicked: {
                    console.log("Button four clicked")
                    rootSd.sectionSelected("BrentCrudeOil")
                    BrentCrudeOil.loadingBrentData()
                }
            }

            Button {
                id: btnFive
                Text {
                    id: textFiveBtn
                    text: qsTr("Naturel Gas Lots")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                hoverEnabled: true
                background: Rectangle {
                    color: btnFive.hovered ? "lightblue" : "purple"
                }
                onClicked: {
                    console.log("Button five clicked")
                    rootSd.sectionSelected("NaturalGase")
                    NaturelGas.loadingPriceNatGas()
                }
            }
        }
    }
}
