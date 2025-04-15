import QtQuick
import QtQuick.Controls

Item {
    id: root
    width: 1920
    height: 1080
    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: root.width
        height: root.height/10
        color: "#000000"
    }
    Text {
        id: text1
        width : root.width *9/10
        // width: root.width/4
        // height: root.height/4
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Please use the buttons on the left to navigate this software package."
        font.pointSize: root.height/20

    }
    Rectangle {
        id: rectangleb

        width: root.width
        height: root.height/10
        color: "#000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }
}
