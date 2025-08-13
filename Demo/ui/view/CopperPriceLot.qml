import QtQuick
import QtQuick.Controls

import CopperPrices

Page {
    id: root
    width: parent.width
    height: parent.height
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    visible: true
    Rectangle {
        id: sideBar
        width: parent.width
        height: parent.height
        color: "transparent"
        anchors {
            fill: parent
        }
        Image {
            width: parent.width
            height: parent.height
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/abstract-with-smooth-flowing-curves.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }
        Rectangle {
            id: dateInput
            width: parent.width
            height: parent.height
            color: "transparent"
            anchors {
                fill: parent
                top: parent.top
                bottom: parent.bottom
            }
            Column {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                Text {
                    id: title
                    text: qsTr("Naturel Gas prices lots")
                    font.bold: true
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: nameProd
                    text: qsTr(CopperPrices.NameProd)
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: interval
                    text: qsTr("Interval" + CopperPrices.interval)
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateProd
                    text: qsTr(CopperPrices.unit)
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
            }
            Column {
                spacing: 10
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.topMargin: 185
                anchors.rightMargin: 85
                Text {
                    id: prices1
                    text: qsTr("Period: " + CopperPrices.date[0])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil1
                    text: qsTr("Price: " + CopperPrices.price[0] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: prices2
                    text: qsTr("Period: " + CopperPrices.date[1])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil2
                    text: qsTr("Price: " + CopperPrices.price[1] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: prices3
                    text: qsTr("Period: " + CopperPrices.date[2])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil3
                    text: qsTr("Price: " + CopperPrices.price[2] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: prices4
                    text: qsTr("Period: " + CopperPrices.date[3])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil4
                    text: qsTr("Price: " + CopperPrices.price[3] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
            }
            Column {
                spacing: 10
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 185
                anchors.leftMargin: 85
                Text {
                    id: prices5
                    text: qsTr("Period: " + CopperPrices.date[4])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil5
                    text: qsTr("Price: " + CopperPrices.price[4] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: prices6
                    text: qsTr("Period: " + CopperPrices.date[5])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil6
                    text: qsTr("Price: " + CopperPrices.price[5] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: prices7
                    text: qsTr("Period: " + CopperPrices.date[6])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil7
                    text: qsTr("Price: " + CopperPrices.price[6] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: prices8
                    text: qsTr("Period: " + CopperPrices.date[7])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateCrudeOil8
                    text: qsTr("Price: " + CopperPrices.price[7] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
            }
            Button {
                id: buttonClear
                width: 100
                height: 50
                hoverEnabled: true
                background: Rectangle {
                    color: "purple"
                }
                Text {
                    text: qsTr("Clear")
                    anchors.centerIn: parent
                    color: buttonClear.hovered ? "black" : "white"
                }
                anchors {
                    bottom: parent.bottom
                    bottomMargin: 30
                    horizontalCenter: parent.horizontalCenter
                }

                onClicked: {
                    visibleConnection = "new"
                }
            }
        }
    }
}
