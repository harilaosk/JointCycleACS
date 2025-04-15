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
        text: "JointCycleACS was made by GDP Group 25 in the academic year 2024-25 at the University of Southampton.
To get in contact with the Project Coordinator, please email doctor@soton.ac.uk ."
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
