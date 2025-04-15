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

        TextField {
            id: activityName
            placeholderText: qsTr("Enter activity name")
        }

        TextField {
            id: duration
            placeholderText: qsTr("Enter duration (s)")
            inputMethodHints: Qt.ImhDigitsOnly
        }

        TextField {
            id: forceMax
            placeholderText: qsTr("Enter force max (N)")
            inputMethodHints: Qt.ImhDigitsOnly
        }

        TextField {
            id: forceMin
            placeholderText: qsTr("Enter force min (N)")
            inputMethodHints: Qt.ImhDigitsOnly
        }

        TextField {
            id: forcePhase
            placeholderText: qsTr("Enter phase difference (°)")
            inputMethodHints: Qt.ImhDigitsOnly
        }

        TextField {
            id: romMax
            placeholderText: qsTr("Enter ROM max (°)")
            inputMethodHints: Qt.ImhDigitsOnly
        }

        TextField {
            id: romMin
            placeholderText: qsTr("Enter ROM min (°)")
            inputMethodHints: Qt.ImhDigitsOnly
        }

        Row {
            spacing: 10

            Button {
                text: qsTr("View")
                onClicked: {
                    // Implement view functionality
                }
            }

            Button {
                text: qsTr("Read Activity")
                onClicked: {
                    // Implement read activity functionality
                }
            }

            Button {
                text: qsTr("Confirm")
                onClicked: {
                    // Implement confirm functionality
                }
            }

            Button {
                text: qsTr("Back")
                onClicked: {
                    // Implement back functionality
                }
            }
        }
    }
}
