import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQml.Models 2.15
import QtQuick.Layouts 1.15
Item{
    Rectangle {
        id: menuScreen
        anchors.centerIn: parent
        anchors.top: HeaderBar.bottom
        width: 800;
        height: 300;
        ListView {
            id: listView
            width: menuScreen.width
            height: menuScreen.height
            snapMode: ListView.SnapOneItem
            highlightRangeMode: ListView.StrictlyEnforceRange
            orientation: ListView.Horizontal

            model: ListModel {
                id: modelView
                            ListElement {
                                name: "Types of heating";
                                sub: "Manual preparation";
                                color: "black";
                                image: "./Image/menuImg_01.jpg"}
                            ListElement {
                                name: "Microwave";
                                sub: "Quick preparation";
                                color: "black";
                                image: "./Image/menuImg_01.jpg"}
                            ListElement {
                                name: "Steam";
                                sub: "Gentle preparation"
                                color: "black";
                                image: "./Image/menuImg_01.jpg"}
            }

            delegate: Rectangle {
                color: model.color
                width: ListView.view.width
                height: ListView.view.height
                GridLayout{
                    id: menuCard
                    rows: 1
                    columns: 4
                    anchors.fill: parent
                    width: parent.width
                    height: parent.height

                    // Image part
                    Image {
                        id: welcomeImage
                        source: model.image
                        Layout.preferredWidth: 300
                        Layout.preferredHeight: 300

                    }

                    // Text part
                    Rectangle {
                            id: menuText

                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.preferredWidth: 3
                            Layout.columnSpan: 3

                            color: "black"
                            width: 500; height: 300
                            Text {
                                        id: menuName
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: "white"
                                        font.pointSize: 20
                                        text: model.name
                            }
                            Text{
                                id: menuDesc
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.bottom: menuName.top
                                color: "white"
                                font.pointSize: 13
                                text: model.sub

                            }

                      }
                }
                visible: listView.currentIndex === index ? true : false
            }
        }
    }
}

/*
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                menuScreen.visible ? menuScreen.state = "hideMenu" : menuScreen.state = "showMenu"
                                programScreen.visible ? programScreen.state = "hideDetail" : programScreen.state = "showDetail"
                                screenController.titleChanged(model.name)
                            }
                        }
        states: [
            State {
                name: "showMenu"
                PropertyChanges {
                    target: menuScreen;
                    visible: true
                }
            },
            State {
                name: "hideMenu"
                PropertyChanges {
                    target: menuScreen;
                    visible: false
                }
            }

        ]
*/
