import QtQuick 2.0

Rectangle {
    color: model.color
    width: ListView.view.width
    height: ListView.view.height
    border.color: "white"
    radius: 10
    Text {
        anchors.centerIn: parent
        text: model.name
        color: "white"
    }
}
