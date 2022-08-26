import QtQuick 2.0

// Clock UI
Item {
    id: root_clock
    Timer{
        id: analogTimer
        repeat: true
        interval: 1000
        running: true
    }

    Rectangle{
        id: clock_UI
        anchors.centerIn: parent
        width: 400
        height: width
        radius: width / 2
        color: "black"
        border.color: "gold"
        border.width: 4

    }
}
