import QtQuick
import QtQuick.Controls
import WheatPrice

Rectangle {
    id: root
    width: parent.width
    height: parent.height
    color: "transparent"
    visible: false
    ScrollView {
        width: parent.width
        height: parent.height
        clip: true
        Row {
            spacing: 10
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 385
            anchors.rightMargin: 85
            anchors.leftMargin: 85
            Column {
                id: columnRightThirtyTwoMonth
                spacing: 10
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
                Text {
                    text: qsTr("Period: " + WheatPrice.date[19])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[19] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[20])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[20] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[21])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[21] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[22])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[22] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[23])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[23] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[24])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[24] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[25])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[25] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[26])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[26] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[27])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[27] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[28])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[28] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[29])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[29] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[30])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[30] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[31])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[31] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[32])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[32] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[33])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[33] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[34])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[34] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[35])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[35] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[36])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[36] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[37])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[37] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[38])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[38] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[39])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[39] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
            }
            Column {
                id: columnLeftThirtyTwoMonth
                spacing: 10
                Text {
                    text: qsTr("Period: " + WheatPrice.date[40])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[40] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[41])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[41] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[42])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[42] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[43])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[43] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[44])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[44] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[45])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[45] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[46])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[46] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[47] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[47])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[48] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[48])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[49] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[49])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[50])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[50] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[51])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[51] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[52])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[52] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[53])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[53] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[54])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[54] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[55])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[55] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[56])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[56] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[57] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[57])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[58] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[58])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[59] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[59])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }

                Text {
                    text: qsTr("Period: " + WheatPrice.date[60])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[60] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[61])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[61] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[62])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[63] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[63])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[68])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[68] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[69])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[69] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[70])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[70])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[71] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[71])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[72] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[72])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[73] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[73])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[74] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[74])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[75] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[75])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[76] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[76])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[77] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[77] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[78])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[78] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Period: " + WheatPrice.date[79])
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
                Text {
                    text: qsTr("Price: " + WheatPrice.price[79] + "$")
                    font.pixelSize: root.width / 37
                    color: "white"
                    wrapMode: Text.Wrap
                }
            }
        }
    }
}
