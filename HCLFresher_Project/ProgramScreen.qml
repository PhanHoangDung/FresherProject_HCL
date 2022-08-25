import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
Item{
    Rectangle{
            id: programScreen
            anchors.centerIn: parent

            width: 1000;
            height: 300;
            color: "black"
            radius: 10
            GridLayout{
                id: programGridLayout
                rows: 1
                columns: 4
                anchors.fill: programScreen
                width: programScreen.width
                height: programScreen.height
                    // Image part
                    Image {
                        id: programImage
                        source: img
                        Layout.preferredWidth: programScreen.height
                        Layout.preferredHeight: programScreen.height
                    }
                    // Text part
                    Rectangle {
                        id: welcomeText

                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 3
                        Layout.columnSpan: 3

                        color: "black"
                        width: 500; height: 300
                        Text {
                                id: detailName
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "white"
                                font.pointSize: 20
                                text: name
                        }
                        Text {
                               id: descName
                               anchors{
                                    top: detailName.bottom
                                    horizontalCenter: parent.horizontalCenter
                                }

                                color: "white"
                                font.pointSize: 13
                                text: desc
                        }
                        Text {
                               anchors{
                                    top: descName.bottom
                                    horizontalCenter: parent.horizontalCenter
                                }

                                color: "white"
                                font.pointSize: 13
                                text: detail
                        }
              }
            }
    }
}

/*
        // Handling states and transistion
        states: [
            State {
                name: "showDetail"
                PropertyChanges {
                    target: programScreen;
                    visible: true
                }
            },
            State {
                name: "hideDetail"
                PropertyChanges {
                    target: programScreen;
                    visible: false
                }
            }
        ]

        // Handling mouse click and key press
        Button{
            text: "<< Back"
            anchors.bottom: programScreen.top
            background: Rectangle {
                color: "white"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    programScreen.visible ? programScreen.state = "hideDetail" : programScreen.state = "showDetail"
                    menuScreen.visible ? menuScreen.state = "hideMenu" : menuScreen.state = "showMenu"
                }
            }
        }
*/
