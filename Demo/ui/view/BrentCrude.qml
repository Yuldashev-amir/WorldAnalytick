import QtQuick
import QtQuick.Controls

import BrentCrudeOil

Page {
    id: root
    width: parent.width
    height: parent.height
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Rectangle {
        id: sideBar
        width: parent.width
        height: parent.height
        color: "transparent"
        anchors {
            centerIn: parent
        }
        Image {
            width: parent.width
            height: parent.height
            source: "file:///home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/background7.jpg"
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
                text: qsTr("Credo Oil global prices")
                font.bold: true
                font.pixelSize: 22
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
            }
            Text {
                id: nameProd
                text: qsTr(BrentCrudeOil.NameProd)
                font.pixelSize: 18
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
                topPadding: 35
            }
            Text {
                id: interval
                text: qsTr(BrentCrudeOil.interval)
                font.pixelSize: 18
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
                topPadding: 55
            }
            Text {
                id: dateProd
                text: qsTr(BrentCrudeOil.unit)
                font.pixelSize: 18
                anchors.horizontalCenter: parent.horizontalCenter
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 85
            }
            Text {
                id: prices1
                text: qsTr("Period: " + BrentCrudeOil.date[0])
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 120
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil1
                text: qsTr("Price: " + BrentCrudeOil.price[0] + "$")
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 140
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices2
                text: qsTr("Period: " + BrentCrudeOil.date[1])
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 185
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil2
                text: qsTr("Price: " + BrentCrudeOil.price[1] + "$")
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 210
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices3
                text: qsTr("Period: " + BrentCrudeOil.date[2])
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 250
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil3
                text: qsTr("Price: " + BrentCrudeOil.price[2] + "$")
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 275
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices4
                text: qsTr("Period: " + BrentCrudeOil.date[3])
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 310
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: dateCrudeOil4
                text: qsTr("Price: " + BrentCrudeOil.price[3] + "$")
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 330
                rightPadding: 80
                leftPadding: 80
            }
            Text {
                id: prices5
                text: qsTr("Period: " + BrentCrudeOil.date[4])
                font.pixelSize: 18
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
                text: qsTr("Price: " + BrentCrudeOil.price[4] + "$")
                font.pixelSize: 18
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
                text: qsTr("Period: " + BrentCrudeOil.date[5])
                font.pixelSize: 18
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
                text: qsTr("Price: " + BrentCrudeOil.price[5] + "$")
                font.pixelSize: 18
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
                text: qsTr("Period: " + BrentCrudeOil.date[6])
                font.pixelSize: 18
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
                text: qsTr("Price: " + BrentCrudeOil.price[6] + "$")
                font.pixelSize: 18
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
                text: qsTr("Period: " + BrentCrudeOil.date[7])
                font.pixelSize: 18
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
                text: qsTr("Price: " + BrentCrudeOil.price[7] + "$")
                font.pixelSize: 18
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
                    visibleBrentCrudeOil = "new"
                }
            }
        }
    }
}
