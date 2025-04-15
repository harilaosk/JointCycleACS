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

        Row {
            spacing: 10
            Label {
                text: "Activity Name:"
                width: 150
            }
            TextField {
                id: activityName
                placeholderText: "Enter activity name"
                width: 200
            }
        }

        Row {
            spacing: 10
            Label {
                text: "Duration (s):"
                width: 150
            }
            TextField {
                id: duration
                placeholderText: "Enter duration"
                width: 200
            }
        }

        Row {
            spacing: 10
            Label {
                text: "Force Max (N):"
                width: 150
            }
            TextField {
                id: forceMax
                placeholderText: "Enter force max"
                width: 200
            }
        }

        Row {
            spacing: 10
            Label {
                text: "Force Min (N):"
                width: 150
            }
            TextField {
                id: forceMin
                placeholderText: "Enter force min"
                width: 200
            }
        }

        Row {
            spacing: 10
            Label {
                text: "Phase Difference (°):"
                width: 150
            }
            TextField {
                id: forcePhase
                placeholderText: "Enter phase difference"
                width: 200
            }
        }

        Row {
            spacing: 10
            Label {
                text: "ROM Max (°):"
                width: 150
            }
            TextField {
                id: romMax
                placeholderText: "Enter ROM max"
                width: 200
            }
        }

        Row {
            spacing: 10
            Label {
                text: "ROM Min (°):"
                width: 150
            }
            TextField {
                id: romMin
                placeholderText: "Enter ROM min"
                width: 200
            }
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
