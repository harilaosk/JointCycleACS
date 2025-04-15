import QtQuick
import QtQuick.Controls

Item {
    id: root

    visible: true
    width: 640
    height: 480
    //title: qsTr("Activity Generator")

    Column {
        spacing: 10
        padding: 20

        Label {
            text: "Activity Name:"
        }
        TextField {
            id: activityName
            placeholderText: "Enter activity name"
        }

        Label {
            text: "Duration (s):"
        }
        TextField {
            id: duration
            placeholderText: "Enter duration"
        }

        Label {
            text: "Force Max (N):"
        }
        TextField {
            id: forceMax
            placeholderText: "Enter force max"
        }

        Label {
            text: "Force Min (N):"
        }
        TextField {
            id: forceMin
            placeholderText: "Enter force min"
        }

        Label {
            text: "Phase Difference (°):"
        }
        TextField {
            id: forcePhase
            placeholderText: "Enter phase difference"
        }

        Label {
            text: "ROM Max (°):"
        }
        TextField {
            id: romMax
            placeholderText: "Enter ROM max"
        }

        Label {
            text: "ROM Min (°):"
        }
        TextField {
            id: romMin
            placeholderText: "Enter ROM min"
        }

        Row {
            spacing: 10

            Button {
                text: "View"
                onClicked: {
                    // Implement view functionality
                }
            }

            Button {
                text: "Read Activity"
                onClicked: {
                    // Implement read activity functionality
                }
            }

            Button {
                text: "Confirm"
                onClicked: {
                    // Implement confirm functionality
                }
            }

            Button {
                text: "Back"
                onClicked: {
                    // Implement back functionality
                }
            }
        }
    }
}
