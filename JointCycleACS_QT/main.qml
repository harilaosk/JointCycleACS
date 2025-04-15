import QtQuick

Window {
    id:root
    //width: mainScreen.width
    //height: mainScreen.height
    //width: Constants.width
    //height: Constants.height

    width: 1280
    height: 720

    visible: true
    title: "JointCycleACS_V02"
    property string currTime: "00:00:00"

    Screen01 {
        id: mainScreen

    }
    Text {
        id : textmain
        text: root.currTime
        font.pixelSize: 48
        color: "white"
    }

// //<
//     // Include Manual_pane.qml
//         Manual_pane {
//             id: manualPane
//         }
// //>


}
