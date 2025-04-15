import QtQuick
import QtQuick.Controls

Item {
    id: root
    width: 640
    height: 480

    //title: qsTr("Flight Mission Cycle Control Panel")



    Column {
        spacing: 10
        anchors.fill: parent
        anchors.margins: 20

        Label {
            text: "Follow the steps below to complete the mission cycle setup."
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "Open"
                onClicked: {
                    // Implement open functionality
                }
            }

            Button {
                text: "Save As"
                onClicked: {
                    // Implement save functionality
                }
            }

            Button {
                text: "Generate C++"
                onClicked: {
                    // Implement generate C++ functionality
                }
            }

            Button {
                text: "Back"
                onClicked: {
                    // Implement back functionality
                }
            }

            Button {
                text: "Show"
                onClicked: {
                    // Implement show functionality
                }
            }
        }

        // GroupBox {
        //     title: "Define a New Flight Mission Cycle"
        //     width: parent.width - 40
        //     anchors.horizontalCenter: parent.horizontalCenter

        //     Column {
        //         spacing: 10
        //         padding: 10

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "Activity Name:"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: activityName
        //                 placeholderText: "Enter activity name"
        //                 width: 200
        //             }
        //         }

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "Duration (s):"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: duration
        //                 placeholderText: "Enter duration"
        //                 width: 200
        //             }
        //         }

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "Force Max (N):"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: forceMax
        //                 placeholderText: "Enter force max"
        //                 width: 200
        //             }
        //         }

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "Force Min (N):"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: forceMin
        //                 placeholderText: "Enter force min"
        //                 width: 200
        //             }
        //         }

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "Phase Difference (°):"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: forcePhase
        //                 placeholderText: "Enter phase difference"
        //                 width: 200
        //             }
        //         }

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "ROM Max (°):"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: romMax
        //                 placeholderText: "Enter ROM max"
        //                 width: 200
        //             }
        //         }

        //         Row {
        //             spacing: 10

        //             Label {
        //                 text: "ROM Min (°):"
        //                 width: 150
        //             }
        //             TextField {
        //                 id: romMin
        //                 placeholderText: "Enter ROM min"
        //                 width: 200
        //             }
        //         }
        //     }
        // }

        GroupBox {
            title: "Select Activities to Form a Flight Mission Cycle Batch"
            width: parent.width - 40
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                spacing: 10
                padding: 10

                Row {
                    spacing: 10

                    ComboBox {
                        id: activityComboBox
                        width: 200
                        model: ["Activity 1", "Activity 2", "Activity 3"] // Replace with dynamic data
                    }

                    Button {
                        text: "Add Activity"
                        onClicked: {
                            // Implement add activity functionality
                        }
                    }
                }

                Row {
                    spacing: 10

                    Label {
                        text: "Activity:"
                        width: 150
                    }
                    Label {
                        text: "Selected:"
                        width: 150
                    }
                    Label {
                        text: "Cycles:"
                        width: 150
                    }
                }

                // Add dynamically created rows for each activity here
            }
        }

        GroupBox {
            title: "Cycles of Activity Batch"
            width: parent.width - 40
            anchors.horizontalCenter: parent.horizontalCenter

            Row {
                spacing: 10
                padding: 10

                Label {
                    text: "Cycles of Activity Batch:"
                    width: 200
                }
                TextField {
                    id: batchCycles
                    placeholderText: "1"
                    width: 50
                }
            }
            }
        }

}
