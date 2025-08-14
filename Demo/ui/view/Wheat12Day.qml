import QtQuick 2.15
import WheatPrice

Rectangle {
    id: root
    width: parent.width
    height: parent.height
    color: "transparent"
    visible: false
    Column {
        id: columnTwelvemonth
        spacing: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 185
        anchors.rightMargin: 85
        Text {
            text: qsTr("Period: " + WheatPrice.date[0])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[0] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[1])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[1] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[2])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[2] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[3])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[3] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[4])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[4] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[5])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[5] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[6])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[6] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[7])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[7] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[8])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[8] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[9])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[9] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
    }
    Column {
        id: columnLeftTwelvemonth
        spacing: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 185
        anchors.leftMargin: 85
        Text {
            text: qsTr("Period: " + WheatPrice.date[10])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[10] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[11])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[11] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[12])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[12] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[13])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[13] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[14])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[14] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[15])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[15] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[16])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[16] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[17])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[17] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Period: " + WheatPrice.date[18])
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
        Text {
            text: qsTr("Price: " + WheatPrice.price[18] + "$")
            font.pixelSize: root.width / 37
            color: "white"
            wrapMode: Text.Wrap
        }
    }
}
