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
        visible: false
        color: "#00007f"
        enabled: true
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: root.height/6
        width: root.width/2
        height: root.height/6
        visible: false
        color: "#578bbd"

    }

    Rectangle {
        id: rectangle3
        x: root.width/2
        y: 0
        width: root.width/2
        height: root.height/6
        visible: false
        color: "#578bbd"
    }

    Rectangle {
        id: rectangle4
        x: root.width/2
        y: root.height/6
        width: root.width/2
        height: root.height/6
        visible: false
        color: "#00007f"
    }
    Text {
        id: text1
        visible: false
        // width: root.width/4
        // height: root.height/4
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "edit"
        font.pointSize: root.height/4

    }

    TabBar {
        id: tabBar
        x: -92
        y: 108
        width: 240
        currentIndex: 2
        rotation: -90

        TabButton {
            id: tabButtonMeth

            text: qsTr("Method")
        }

        TabButton {
            id: tabButtonAct
            text: qsTr("Activity")

        }
    }

    Sandbox {
        id: sandbox
        x: 54
        y: 0


    }

    Missioncycletest {
        id: missioncycletest1
        x: 48
        y: 0
        width: 592
        height: 456
        visible: false

    }

states: [
    State {
        name: "Activity"
        when: tabButtonAct.checked
        PropertyChanges {
            target: sandbox
            visible: true
        }
        PropertyChanges {
            target: missioncycletest1
            visible: false
        }
    },
    State {
        name: "Method"
        when: tabButtonMeth.checked
        PropertyChanges {
            target: sandbox
            visible: false
        }
        PropertyChanges {
            target: missioncycletest1
            visible: true
        }
    }

]
}
