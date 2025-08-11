import QtQuick
import QtQuick.Controls

import NaturelGas

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
            centerIn: parent
            rightMargin: 60
            leftMargin: 60
        }
        Image {
            width: parent.width
            height: parent.height
            source: "file:///home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/black-frame-with-copy-space-top-view.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }
        Rectangle {
            id: dateInput
            width: parent.width
            height: parent.height
            color: "transparent"
            anchors {
                centerIn: parent
                top: parent.top
                bottom: parent.bottom
            }
            Text {
                id: title
                text: qsTr("Naturel Gas prices")
                font.bold: true
                font.pixelSize: 22
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
            }
            Text {
                id: nameProd
                text: qsTr(NaturelGas.NameProd)
                font.pixelSize: parent.width / 25
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
                topPadding: 35
            }
            Text {
                id: interval
                text: qsTr(NaturelGas.interval)
                font.pixelSize: parent.width / 28
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
                topPadding: 55
            }
            Text {
                id: dateProd
                text: qsTr(NaturelGas.unit)
                font.pixelSize: parent.width / 28
                anchors.horizontalCenter: parent.horizontalCenter
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 85
            }
            Text {
                id: prices1
                text: qsTr("Period: " + NaturelGas.date[0])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 120
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil1
                text: qsTr("Price: " + NaturelGas.price[0] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 140
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices2
                text: qsTr("Period: " + NaturelGas.date[1])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 185
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil2
                text: qsTr("Price: " + NaturelGas.price[1] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 210
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices3
                text: qsTr("Period: " + NaturelGas.date[2])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 250
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil3
                text: qsTr("Price: " + NaturelGas.price[2] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 275
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices4
                text: qsTr("Period: " + NaturelGas.date[3])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 310
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil4
                text: qsTr("Price: " + NaturelGas.price[3] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 330
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices5
                text: qsTr("Period: " + NaturelGas.date[4])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 30
                topPadding: 120
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil5
                text: qsTr("Price: " + NaturelGas.price[4] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 30
                topPadding: 140
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices6
                text: qsTr("Period: " + NaturelGas.date[5])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 50
                topPadding: 185
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil6
                text: qsTr("Price: " + NaturelGas.price[5] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 50
                topPadding: 210
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices7
                text: qsTr("Period: " + NaturelGas.date[6])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 50
                topPadding: 250
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil7
                text: qsTr("Price: " + NaturelGas.price[6] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 50
                topPadding: 275
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices8
                text: qsTr("Period: " + NaturelGas.date[7])
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 50
                topPadding: 310
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil8
                text: qsTr("Price: " + NaturelGas.price[7] + "$")
                font.pixelSize: parent.width / 28
                color: "white"
                wrapMode: Text.Wrap
                anchors.right: parent.right
                anchors.bottomMargin: 50
                topPadding: 330
                rightPadding: 80
                leftPadding: 80
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
                    visibleNaturalGase = "new"
                }
            }
        }
    }
}
