import QtQuick
import QtQuick.Controls

Item {
    id: rootSd
    Rectangle {
        height: parent.height
        width: parent.width / 3
        anchors.fill: parent
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: "transparent"
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "blue"
            }
            GradientStop {
                position: 0.33
                color: "lightblue"
            }
            GradientStop {
                position: 1.0
                color: "blue"
            }
        }
        Column {
            id: sideBar
            anchors.left: parent.left
            height: parent.height
            width: parent.width / 3
            Button {
                id: btnFirst
                Text {
                    id: textFirstBtn
                    text: qsTr("Цены на нефть")
                    anchors.centerIn: parent
                }
                width: 120
                height: 50
                hoverEnabled: true
                background: Rectangle {
                    color: btnFirst.hovered ? "lightblue" : "blue"
                    radius: 8
                }
                onClicked: {
                    console.log("Button first clicked")
                }
            }

            Button {
                id: btnSecond
                Text {
                    id: textSecondBtn
                    text: qsTr("Цены на нефть")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                hoverEnabled: true
                anchors.topMargin: 50
                background: Rectangle {
                    color: btnSecond.hovered ? "lightblue" : "blue"
                    radius: 8
                }
                onClicked: {
                    console.log("Button Second clicked")
                }
            }

            Button {
                id: btnThird
                Text {
                    id: textThirdBtn
                    text: qsTr("Цены на нефть")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                anchors.topMargin: 50
                hoverEnabled: true
                background: Rectangle {
                    color: btnThird.hovered ? "lightblue" : "blue"
                    radius: 8
                }
                onClicked: {
                    console.log("Button third clicked")
                }
            }

            Button {
                id: btnFour
                Text {
                    id: textFourBtn
                    text: qsTr("Аналитика биржи")
                    anchors.centerIn: parent
                }
                width: 120
                height: 40
                hoverEnabled: true
                background: Rectangle {
                    color: btnFour.hovered ? "lightblue" : "blue"
                    radius: 8
                }
                onClicked: {
                    console.log("Button four clicked")
                }
            }
        }
    }
}
