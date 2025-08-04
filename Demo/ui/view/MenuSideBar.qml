import QtQuick
import QtQuick.Controls

Page {
    id: rootSd
    Rectangle {
        id: rectSideBar
        height: parent.height
        width: parent.width
        anchors.fill: parent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: "purple"
        Image {
            width: parent.width / 3
            height: parent.height
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/backgroundGradient.jpg"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
        Column {
            id: sideBar
            anchors.left: parent.left
            Button {
                id: burgerMenu
                width: parent.width
                height: 50
                hoverEnabled: true
                background: Rectangle {
                    color: "purple"
                }
                Text {
                    text: ">|"
                    color: burgerMenu.hovered ? "gray" : "black"
                    font.pixelSize: 40
                    font.bold: true
                    anchors.centerIn: parent
                }
                onClicked: {
                    menuVisible = !menuVisible
                }
            }
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
                    color: btnFirst.hovered ? "lightblue" : "purple"
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
                    color: btnSecond.hovered ? "lightblue" : "purple"
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
                    color: btnThird.hovered ? "lightblue" : "purple"
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
                    color: btnFour.hovered ? "lightblue" : "purple"
                }
                onClicked: {
                    console.log("Button four clicked")
                }
            }
        }
    }
}
