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
        height: root.height/2
        color: "#2a180f"

    }


    Rectangle {
        id: rectangle2
        x: 0
        y: root.height/2
        width: root.width/2
        height: root.height/2
        color: "#98bd57"

    }

    Rectangle {
        id: rectangle3
        x: root.width/2
        y: 0
        width: root.width/2
        height: root.height/2
        color: "#98bd57"
    }

    Rectangle {
        id: rectangle4
        x: root.width/2
        y: root.height/2
        width: root.width/2
        height: root.height/2
        color: "#2a180f"
    }

    Rectangle {
        id: rectangle5
        width: root.width/2
        height: root.height/2
        color: "#ffffff"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: text1
            text:qsTr("view")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: root.height/5
        }

    }


}
