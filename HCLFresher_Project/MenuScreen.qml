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

            model: _model

            delegate: Rectangle {
                id: delegateMenu
                // color: model.color
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
                        source: img
                        Layout.preferredWidth: 300
                        Layout.preferredHeight: 300
                        MouseArea {
                            anchors.fill: parent
                            onClicked: popProgram.visible ?  popProgram.close() : popProgram.open()
                        }

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
                                 text: name
                            }
                            Text{
                                 id: menuDesc
                                 anchors.verticalCenter: parent.verticalCenter
                                 anchors.horizontalCenter: parent.horizontalCenter
                                 anchors.bottom: menuName.top
                                 color: "white"
                                 font.pointSize: 13
                                 text: desc

                            }
                      }
                      Text{
                            id: indexNum
                            anchors{
                                horizontalCenter: parent.horizontalCenter
                                verticalCenter: parent.verticalCenter
                                top: parent.bottom
                                topMargin: 5

                            }
                            color: "black"
                            font.pointSize: 12
                            text: listView.currentIndex + 1
                     }
                }


                visible: listView.currentIndex === index ? true : false
                Popup {
                    id: popProgram
                    anchors.centerIn: Overlay.overlay
                    width: parent.width
                    height: parent.height
                    ProgramScreen {
                        id: program
                        anchors {
                            bottom: parent.bottom
                            top: parent.top
                            left: parent.left
                            right: parent.right
                        }
                    }
                    Button {
                        id: btn
                        text: "<< Back"
                        anchors{
                            bottom: program.bottom
                            left: program.left
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                popProgram.visible ?  popProgram.close() : popProgram.open()
                            }
                        }
                    }
                }
            }
        }
    }
}
