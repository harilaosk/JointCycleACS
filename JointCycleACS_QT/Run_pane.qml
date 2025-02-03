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
        width: root.width/2
        height: root.height/6
        color: "#2a180f"
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: root.height/6
        width: root.width/2
        height: root.height/6
        color: "#98bd57"

    }

    Rectangle {
        id: rectangle3
        x: root.width/2
        y: 0
        width: root.width/2
        height: root.height/6
        color: "#98bd57"
    }

    Rectangle {
        id: rectangle4
        x: root.width/2
        y: root.height/6
        width: root.width/2
        height: root.height/6
        color: "#2a180f"
    }
    Text {
        id: text1
        // width: root.width/4
        // height: root.height/4
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "run"
        font.pointSize: root.height/4

    }
}
