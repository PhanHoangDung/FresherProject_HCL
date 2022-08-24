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
            color: "black"
            radius: 10
            border.color: "white"
            GridLayout{
                id: welcomeGridLayout
                rows: 1
                columns: 4
                anchors.fill: welcomeScreen
                width: welcomeScreen.width
                height: welcomeScreen.height

                // Image part
                Image {
                    id: welcomeImage
                    source: "./Image/welcomeScreenImg.jpg"
                    Layout.preferredWidth: 300
                    Layout.preferredHeight: 300
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
                                id: mainMenu
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "white"
                                font.pointSize: 20
                                text: "MAIN MENU"
                    }
                    Text {
                               anchors{
                                    top: mainMenu.bottom
                                    horizontalCenter: parent.horizontalCenter
                                }

                                color: "white"
                                font.pointSize: 13
                                text: "Tempting dish should try"
                    }
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: pop.visible ?  pop.close() : pop.open()
            }
            visible: true
            Popup {
                id: pop
                anchors.centerIn: Overlay.overlay
                width: parent.width
                height: parent.height
                MenuScreen {
                    anchors {
                        bottom: parent.bottom
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }
                }
            }
    }
}
/*
        // Handling states and transistion
        states: [
            State {
                name: "showWelcome"
                PropertyChanges {
                    target: welcomeScreen;
                    visible: true
                }
            },
            State {
                name: "hideWelcome"
                PropertyChanges {
                    target: welcomeScreen;
                    visible: false
                }
            }
        ]

        // Handling mouse click and key press
        MouseArea {
            anchors.fill: parent
            onClicked: {
                menuScreen.visible ? menuScreen.state = "hideMenu" : menuScreen.state = "showMenu"
                welcomeScreen.visible ? welcomeScreen.state = "hideWelcome" : welcomeScreen.state = "showWelcome"
            }
        }

        Item{
            focus: true;
            Keys.onPressed: (event)=> {
                            if (event.key === Qt.Key_F1){
                                    if(welcomeScreen.visible)
                                        welcomeScreen.state = "hideWelcome";
                                    else
                                        welcomeScreen.state = "showWelcome";

                                    if(menuScreen.visible)
                                        menuScreen.state = "hideMenu";
                                    if(programScreen.visible)
                                        programScreen.state = "hideDetail";
                            }
            }
        }
*/





