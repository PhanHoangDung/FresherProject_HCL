import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Controller 1.0
/*
Screen A: Welcome Screen (main.qml) ===> id: welcomeScreen
Screen B: Menu Screen (MenuScreen.qml) ====> id: menuScreen
Screen C: Detail Screen (DetailScreen.qml) ===> id: detailScreen
*/
Window {
    width: 1000
    height: 800
    visible: true
    title: qsTr("BOSCH  Premium")


    // import C++ class
    ScreenController{
        id: screenController
    }

    // Related screen
    HeaderBar {
        id: header
        visible : false
    }

    WelcomeScreen{
            id: welcomeScreen
    }
    MenuScreen {
            id: menuScreen
    }
    DetailScreen{
            id: detailScreen
    }

}
