import QtQuick
import QtQuick.Controls

import WheatPrice

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
            source: "file:///home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/black-frame-with-copy-space-top-view.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }
        ComboBox {
            id: comboBox
            currentIndex: 4
            anchors {
                top: parent.top
                right: parent.right
                rightMargin: 30
                topMargin: 70
            }
            model: ["3 months", "8 months", "12 months", "32 months"]

            onCurrentIndexChanged: {
                if (currentIndex === 0) {
                    rowsTwoSixMonths.visible = true
                    wheat32days.visible = false
                    wheat8days.visible = false
                } else if (currentIndex === 1) {
                    rowsTwoSixMonths.visible = false
                    wheat32days.visible = false
                    wheat8days.visible = true
                } else if (currentIndex === 2) {
                    wheat8days.visible = true
                    rowsTwoSixMonths.visible = false
                    rowsTwoEightMonths.visible = false
                    wheat32days.visible = false
                } else if (currentIndex === 3) {
                    wheat32days.visible = true
                    rowsTwoSixMonths.visible = false
                    rowsTwoEightMonths.visible = false
                    wheat8days.visible = false
                }
            }
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
                    text: qsTr("Wheat prices")
                    font.bold: true
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: nameProd
                    text: qsTr(WheatPrice.NameProd)
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: interval
                    text: qsTr("Interval" + WheatPrice.interval)
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    id: dateProd
                    text: qsTr(WheatPrice.unit)
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
            }
        }
        Rectangle {
            id: rowsTwoSixMonths
            width: parent.width
            height: parent.height
            color: "transparent"
            visible: false
            Column {
                id: columnRight6month
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
            }
            Column {
                spacing: 10
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 185
                anchors.leftMargin: 85
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
            }
        }

        Rectangle {
            id: rowsTwoEightMonths
            width: parent.width
            height: parent.height
            color: "transparent"
            visible: false
            Column {
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
            }
            Column {
                id: columnLeftEightMonth
                spacing: 10
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 185
                anchors.leftMargin: 85
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
            }
        }
        Wheat12Day {
            id: wheat8days
            visible: false
        }
        Wheat32Day {
            id: wheat32days
            visible: false
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
