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
    width: 1000
    height: 800
    visible: true
    title: qsTr("BOSCH  Premium")
    Rectangle {
            id: backgroundImage
            anchors.fill: parent
            color: "lightgray"
    }

    // import C++ class
    ScreenController{
        id: screenController
    }

    // Related screen
    HeaderBar {
        id: header
    }

    WelcomeScreen{
            id: welcomeScreen
    }
    MenuScreen {
            id: menuScreen
    }
    ProgramScreen{
            id: programScreen
    }

}
