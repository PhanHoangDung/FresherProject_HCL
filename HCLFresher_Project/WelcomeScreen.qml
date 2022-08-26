import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
Item{
    Rectangle {
            id: welcomeScreen
            anchors.centerIn: parent
            anchors.top: HeaderBar.bottom
            width: 800;
            height: 300;
            color: "white"
            radius: 10
            GridLayout {
                id: welcomeGridLayout
                rows: 1
                columns: 4
                anchors.fill: welcomeScreen
                width: welcomeScreen.width
                height: welcomeScreen.height
                Rectangle {
                    id: welcomeText

                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredWidth: 3
                    Layout.columnSpan: 3

                    color: "white"
                    width: 500; height: 300
                    // Time part
                    Text {
                                id: timeText
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "black"
                                font.pointSize: 70
                    }
                    // Analog clock

                }
            }
            Timer{
                interval: 500
                running: true
                repeat: true

                onTriggered: {
                    var date = new Date();
                    timeText.text = date.toLocaleTimeString(Qt.locale("en_US"), "hh:mm ap");
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    welcomeScreen.visible ? false : true
                    popMenu.visible ?  popMenu.close() : popMenu.open()
                }
            }
            visible: true
            Popup {
                id: popMenu
                anchors.centerIn: Overlay.overlay
                width: parent.width
                height: parent.height
                MenuScreen {
                    id: menu
                    anchors {
                        bottom: parent.bottom
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }
                }
                Button {
                    id: btn
                    anchors{
                        bottom: parent.bottom
                        left: parent.left
                    }
                    text: "<< Back"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: popMenu.visible ?  popMenu.close() : popMenu.open()
                    }
                }
            }
    }
}


