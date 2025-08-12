import QtQuick
import QtQuick.Controls
import ShopTrt

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
            source: "file://home/amir/ProjectsQT/WorldAnalytick/demo/Demo/res/img/background7.jpg"
        }

        Text {
            id: textTitle
            text: "OHLCV graphic activeprices TSKO LLP"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 20
            font.bold: true
            color: "white"
        }

        Canvas {
            id: canvas
            width: parent.width
            height: parent.height + 30
            antialiasing: true

            property var candles: [{
                    "open": ShopTrt.open[0],
                    "high": ShopTrt.high[0],
                    "low": ShopTrt.low[0],
                    "close": ShopTrt.close[0],
                    "volume": ShopTrt.volume[0]
                }, {
                    "open": ShopTrt.open[0],
                    "high": ShopTrt.high[0],
                    "low": ShopTrt.low[0],
                    "close": ShopTrt.close[0],
                    "volume": ShopTrt.volume[0]
                }, {
                    "open": ShopTrt.open[0],
                    "high": ShopTrt.high[0],
                    "low": ShopTrt.low[0],
                    "close": ShopTrt.close[0],
                    "volume": ShopTrt.volume[0]
                }, {
                    "open": ShopTrt.open[0],
                    "high": ShopTrt.high[0],
                    "low": ShopTrt.low[0],
                    "close": ShopTrt.close[0],
                    "volume": ShopTrt.volume[0]
                }]

            onPaint: {
                var ctx = getContext("2d")
                ctx.clearRect(0, 0, width, height)

                var candleWidth = 20
                var spacing = 10
                var volumeHeight = 120
                var chartHeight = height - volumeHeight - 30

                var minPrice = Math.min.apply(Math, candles.map(c => c.low))
                var maxPrice = Math.max.apply(Math, candles.map(c => c.high))
                var scaleY = chartHeight / (maxPrice - minPrice)

                var maxVolume = Math.max.apply(Math, candles.map(c => c.volume))
                var scaleVol = volumeHeight / maxVolume

                ctx.strokeStyle = "#000"
                ctx.lineWidth = 1
                ctx.beginPath()

                for (var p = minPrice; p <= maxPrice; p += (maxPrice - minPrice) / 5) {
                    var y = chartHeight - (p - minPrice) * scaleY
                    ctx.moveTo(0, y)
                    ctx.lineTo(width, y)
                    // Подпись цены
                    ctx.fillStyle = "white"
                    ctx.font = "12px sans-serif"
                    ctx.fillText(p.toFixed(2), 2, y - 2)
                }
                ctx.stroke()

                var x = 40
                for (var i = 0; i < candles.length; i++) {
                    var c = candles[i]

                    var highY = chartHeight - (c.high - minPrice) * scaleY
                    var lowY = chartHeight - (c.low - minPrice) * scaleY
                    var openY = chartHeight - (c.open - minPrice) * scaleY
                    var closeY = chartHeight - (c.close - minPrice) * scaleY

                    ctx.strokeStyle = "black"
                    ctx.beginPath()
                    ctx.moveTo(x + candleWidth / 2, highY)
                    ctx.lineTo(x + candleWidth / 2, lowY)
                    ctx.stroke()

                    ctx.fillStyle = (c.close >= c.open) ? "green" : "red"

                    var bodyY = Math.min(openY, closeY)
                    var bodyH = Math.abs(openY - closeY)
                    ctx.fillRect(x, bodyY, candleWidth, bodyH)

                    ctx.fillStyle = "#888"
                    var volBarH = c.volume * scaleVol
                    ctx.fillRect(x, height - volBarH, candleWidth, volBarH)
                    x += candleWidth + spacing

                    var openTxt = " "
                    ctx.fillText(openTxt, x, bodyY + spacing)
                    var closeTxt = "C "
                    ctx.fillText(closeTxt, x, closeY + spacing)
                    var highTxt = "H "
                    ctx.fillText(highTxt, x, highY + spacing)
                    var lowTxt = "L "
                    ctx.fillText(lowTxt, x, lowY + spacing)
                }
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
                visibleConnection = "new"
                console.log("Button clear TSKO on clicked")
            }
        }

        Connections {
            id: connect
            target: ShopTrt
            function onLoadingNewData() {
                canvas.requestPaint()
                console.log(ShopTrt.open)
            }
        }
    }
}
