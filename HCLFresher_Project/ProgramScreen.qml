import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
Item{
    Rectangle{
            id: programScreen
            anchors.centerIn: parent

            width: 1200;
            onWidthChanged: width = height * 4
            height: 300;
            onHeightChanged: width = height * 4
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

