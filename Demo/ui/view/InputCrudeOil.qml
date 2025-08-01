import QtQuick
import QtQuick.Controls

Page {
    id: root
    width: parent.width
    height: parent.height
    Rectangle {
        id: dateInput
        width: parent.width / 2
        height: parent.height / 2
        color: "transparent"
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            leftMargin: 20
        }
        Image {
            width: parent.width
            height: parent.height
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/background1.jpg"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
        Text {
            id: title
            text: qsTr("Credo Oil global prices")
            font.bold: true
            font.pixelSize: 22
            color: "white"
        }
        Text {
            id: subTitle
            text: qsTr("")
            font.pixelSize: 18
            color: "white"
        }
    }
}
