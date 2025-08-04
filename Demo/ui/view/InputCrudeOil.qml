import QtQuick
import QtQuick.Controls

Page {
    id: root
    width: parent.width
    height: parent.height
    property string dateProd: "04.08.2025"
    property string middlePrice: "246.5"
    Rectangle {
        id: dateInput
        width: parent.width
        height: parent.height
        color: "transparent"
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            leftMargin: 20
        }
        Image {
            width: parent.width / 2
            height: parent.height
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/background1.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }
        Text {
            id: title
            text: qsTr("Credo Oil global prices")
            font.bold: true
            font.pixelSize: 22
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: nameProd
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
        Text {
            id: interval
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
        Text {
            id: dateProd
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
        Text {
            id: minPrices
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
        Text {
            id: middlePrices
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
        Text {
            id: maxPrices
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
    }
}
