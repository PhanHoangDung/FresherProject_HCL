import QtQuick 2.0
Item{
    Rectangle {
        id: header
        color: "black"
        height: 50
            anchors {
                left: parent.left
                top: parent.top
                right: parent.right
        }

        Rectangle {
            id: notificationBadge
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 10
            }

            Text{
                id: title
                text: "";
                color: "white"
                font.pixelSize: 27
            }
        }

        Text {
            id: timeText
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 36
            text: "12:22 PM"
        }

        Image {
            id: wifiSymbol
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 10
            }
            fillMode: Image.PreserveAspectFit
            width: 40
            height: 40
            source: "./Image/wifi.png"
        }
    }
}


