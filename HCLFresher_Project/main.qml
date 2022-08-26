import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Window {
    width: height * 1.5
    onWidthChanged: width = height * 1.5
    height: 800
    onHeightChanged: width = height * 1.5
    visible: true
    title: qsTr("BOSCH Premium")

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
