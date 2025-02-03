import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    width: 640
    height: 420
    // width: rectangle4.width
    // height: rectangle4.height
    color: "#00ffffff"
    clip: false

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: root.width/2
        height: root.height/6
        color: "#00007f"
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: root.height/6
        width: root.width/2
        height: root.height/6
        color: "#578bbd"

    }

    Rectangle {
        id: rectangle3
        x: root.width/2
        y: 0
        width: root.width/2
        height: root.height/6
        color: "#578bbd"
    }

    Rectangle {
        id: rectangle4
        x: root.width/2
        y: root.height/6
        width: root.width/2
        height: root.height/6
        color: "#00007f"
    }
    Text {
        id: text1
        // width: root.width/4
        // height: root.height/4
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "edit"
        font.pointSize: root.height/4

    }
}
