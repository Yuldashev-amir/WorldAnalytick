import QtQuick
import QtQuick.Controls

import CrudeOil

Page {
    id: root
    width: parent.width
    height: parent.height
    property string dateProduct: CrudeOil.date[0]
    property string actuallPrice: CrudeOil.price[0]
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    visible: visibleConnection === "CrudeOil"
    Rectangle {
        id: sideBar
        width: parent.width
        height: parent.height
        color: "transparent"
        anchors {
            centerIn: parent
        }
        Image {
            width: parent.width / 2
            height: parent.height
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/background1.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }
        Rectangle {
            id: dateInput
            width: parent.width / 3
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
                text: qsTr(CrudeOil.NameProd)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 35
            }
            Text {
                id: interval
                text: qsTr(CrudeOil.interval)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 55
            }
            Text {
                id: dateProd
                text: qsTr(CrudeOil.unit)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 85
            }
            Text {
                id: prices1
                text: qsTr("Date: " + CrudeOil.date[0])
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 120
            }
            Text {
                id: dateCrudeOil1
                text: qsTr("Price: " + CrudeOil.price[0])
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 140
            }
            Text {
                id: prices2
                text: qsTr("Date: " + CrudeOil.date)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 185
            }
            Text {
                id: dateCrudeOil2
                text: qsTr("Price: " + CrudeOil.price)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 210
            }
            Text {
                id: prices3
                text: qsTr("Date: " + CrudeOil.date)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 250
            }
            Text {
                id: dateCrudeOil3
                text: qsTr("Price: " + CrudeOil.price)
                font.pixelSize: 18
                color: "white"
                wrapMode: Text.Wrap
                topPadding: 275
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
