import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Controller 1.0
/*
Screen A: Welcome Screen (main.qml) ===> id: welcomeScreen
Screen B: Menu Screen (MenuScreen.qml) ====> id: menuScreen
Screen C: Detail Screen (ProgramScreen.qml) ===> id: programScreen
*/
Window {
    width: height * 1.5
    onWidthChanged: width = height * 1.5
    height: 600
    onHeightChanged: width = height * 1.5
    visible: true
    title: qsTr("BOSCH Premium")
    Rectangle {
            id: backgroundImage
            anchors.fill: parent
            color: "lightgray"
    }
    // Related screen
    HeaderBar {
        id: header
        anchors.fill: parent
    }

    WelcomeScreen{
            id: welcomeScreen
            anchors.fill: parent
    }
}
