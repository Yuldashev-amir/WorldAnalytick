import QtQuick
import QtQuick.Controls
import QtCharts
import TskoLlp

Page {
    id: rootTsko
    width: parent.width
    height: parent.height
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    property double open: parseFloat(TskoLlp.open[0])
    property double high: parseFloat(TskoLlp.high[0])
    property double low: parseFloat(TskoLlp.low[0])
    property double close: parseFloat(TskoLlp.close[0])
    property double volume: parseFloat(TskoLlp.volume[0])
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
                text: qsTr("Symbol: " + TskoLlp.symbol)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
                wrapMode: Text.Wrap
            }
            Text {
                id: dateRefr
                text: qsTr("Date refreshed: " + TskoLlp.dateRefreshed)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 90
                wrapMode: Text.Wrap
            }
            Text {
                id: outSize
                text: qsTr("Output size " + TskoLlp.outSize)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 115
                wrapMode: Text.Wrap
            }
            Text {
                id: zone
                text: qsTr("Tize zone " + TskoLlp.zone)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 145
                wrapMode: Text.Wrap
            }
            Text {
                id: dateChanged
                text: qsTr("Time series" + TskoLlp.date)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 175
                wrapMode: Text.Wrap
            }
            Text {
                id: open
                text: qsTr("Open: " + TskoLlp.open[0])
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 200
                wrapMode: Text.Wrap
            }
            Text {
                id: high
                text: qsTr("High: " + TskoLlp.high[0])
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 225
                wrapMode: Text.Wrap
            }
            Text {
                id: low
                text: qsTr("Low: " + TskoLlp.low[0])
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 250
                wrapMode: Text.Wrap
            }
            Text {
                id: close
                text: qsTr("Close: " + TskoLlp.close[0])
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 275
                wrapMode: Text.Wrap
            }
            Text {
                id: volume
                text: qsTr("Volume: " + TskoLlp.volume[0])
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 300
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
