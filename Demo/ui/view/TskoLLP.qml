import QtQuick
import QtQuick.Controls

import TskoLlp

Page {
    id: rootTsko
    width: parent.width
    height: parent.height
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    Rectangle {
        width: parent.width
        height: parent.height
        anchors.fill: parent
        color: "transparent"
        Image {
            id: backgroundTSKO
            width: parent.width
            height: parent.height
            anchors.fill: parent
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/dried-leaves-gray-blank-background.jpg"
        }
        Rectangle {
            id: dataInput
            color: "transparent"
            width: parent.width
            height: parent.height
            Text {
                id: title
                text: qsTr("Price active company TSKO LLP")
                font.bold: true
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                wrapMode: Text.Wrap
            }
            Text {
                id: infoAbout
                text: qsTr("About: " + TskoLlp.info)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
                wrapMode: Text.Wrap
            }
            Text {
                id: symbolInput
                text: qsTr(TskoLlp.symbol)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 55
                wrapMode: Text.Wrap
            }
            Text {
                id: dateRefr
                text: qsTr(TskoLlp.dateRefreshed)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 95
                wrapMode: Text.Wrap
            }
            Text {
                id: outSize
                text: qsTr(TskoLlp.outSize)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 115
                wrapMode: Text.Wrap
            }
            Text {
                id: zone
                text: qsTr(TskoLlp.zone)
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 145
                wrapMode: Text.Wrap
            }
            Text {
                id: dateChanged
                text: qsTr(TskoLlp.date)
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 165
                wrapMode: Text.Wrap
            }
            Text {
                id: open
                text: qsTr(TskoLlp.open[0])
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 195
                wrapMode: Text.Wrap
            }
            Text {
                id: high
                text: qsTr(TskoLlp.high[0])
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 225
                wrapMode: Text.Wrap
            }
            Text {
                id: low
                text: qsTr(TskoLlp.low[0])
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 255
                wrapMode: Text.Wrap
            }
            Text {
                id: close
                text: qsTr(TskoLlp.close[0])
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 285
                wrapMode: Text.Wrap
            }
            Text {
                id: volume
                text: qsTr(TskoLlp.volume[0])
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 310
                wrapMode: Text.Wrap
            }
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
                id: textCls
                text: qsTr("Clear")
                anchors.centerIn: parent
                color: buttonClear.hovered ? "black" : "white"
            }
            background: Rectangle {
                id: background
                color: buttonClear.hovered ? "gray" : "purple"
            }
            onClicked: {
                visibleActionPrice = "new"
                console.log("Button clear TSKO on clicked")
            }
        }
    }
}
