import QtQuick
import QtQuick.Controls

Page {
    id: root
    width: parent.width
    height: parent.height
    Rectangle {
        id: inputDate
        width: parent.width
        height: parent.height
        anchors.fill: parent
        color: "transparent"
        Image {
            id: backgroundShopTRT
            width: parent.width
            height: parent.height
            anchors.fill: parent
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/background7.jpg"
        }
        Rectangle {
            id: textData
            width: parent.width
            height: parent.height
            anchors.fill: parent
            color: "transparent"
            Text {
                id: title
                text: qsTr("Price active company SHOP TRT")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                font.bold: true
                font.pixelSize: 20
            }
            Text {
                id: subTitle
                text: qsTr("")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 20
                font.pixelSize: 16
                wrapMode: Text.Wrap
            }
            Text {
                id: info
                text: qsTr("About: ")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
                wrapMode: Text.Wrap
            }
            Text {
                id: symbol
                text: qsTr("")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 65
                wrapMode: Text.Wrap
            }
            Text {
                id: dateRefreshed
                text: qsTr("")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 95
                wrapMode: Text.Wrap
            }
            Text {
                id: outSize
                text: qsTr("")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 115
                wrapMode: Text.Wrap
            }
            Text {
                id: zone
                text: qsTr("")
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 145
                wrapMode: Text.Wrap
            }

            Button {
                id: buttonClear
                width: 100
                height: 50
                hoverEnabled: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                Text {
                    id: textButton
                    text: qsTr("Crear")
                    color: buttonClear.hovered ? "black" : "white"
                    anchors.centerIn: parent
                }
                background: Rectangle {
                    id: backgroundBtn
                    color: buttonClear.hovered ? "gray" : "purple"
                }
                onClicked: {
                    console.log("Button clear in SHOP TRT clicked")
                    visibleShopTrt = "new"
                }
            }
        }
    }
}
