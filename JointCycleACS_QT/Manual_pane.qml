import QtQuick
import QtQuick.Controls

Item {
    id: root

    
    property int scrollValue: manualPane.scrollValue
    property int forceValue: manualPane.forceValue
    property int displacementValue: manualPane.displacementValue
    property int rangeOfMotionValue: manualPane.rangeOfMotionValue

    Column {
        id : mainColumn
        width: parent.width
        height: parent.height
        spacing: parent.height/100

        // Force/Displacement Area
        Rectangle {
            id : rect1
            height: parent.height/3 - parent.spacing
            color: "#00ffffff"
            //color: "#98bd57"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            Column {
                spacing: mainColumn.height/200
                width: parent.width //*7/10
                anchors.horizontalCenter: parent.horizontalCenter


                Row {
                    width: parent.width
                    Text {
                        text: (!toggleForceDisplacement.checked? "Force" : "Displacement") + " Control"
                        font.bold: true
                        width: 300
                        color: "#221c41"
                    }
                    Switch {
                        id: toggleForceDisplacement
                        text: "Force/Displacement?"


                        // onCheckedChanged: {
                        //     slider2.enabled = !checked
                        //     slider3.enabled = !checked
                    }
                    Switch {
                        id: toggleConstCircForce
                        text: "Const/Circular"
                        checked: false
                        onToggled: {
                            slider2.value = slider1.value
                            //slider2Text.color = "#ffffff22"
                        }
                        // Connections {
                        //     target: toggleConstCircForce
                        //     onToggled: {
                        //         slider2.value = slider1.value
                        //         //slider2Text.color = "#ffffff22"
                        //    }

                        // }
                        //onChecked: { manualPane.setDisplacementValue(slider1.value)}
                        // onCheckedChanged: {
                        //     slider2.enabled = !checked
                        //     slider3.enabled = !checked
                        // }
                    }
                }
                Row {
                    width: parent.width
                    Text {
                        text: (!toggleForceDisplacement.checked? "Force" : "Displacement") + " " + (!toggleConstCircForce.checked? "(min)":"")
                        width: 190
                    }
                    Slider {
                        id: slider1
                        from: 0
                        to: 100
                        stepSize: 1
                        value: root.forceValue
                        width: (parent.width-190) * 8/10
                        onValueChanged: {
                            manualPane.setForceValue(value)
                            if (toggleConstCircForce.checked === true){
                                slider2.value = slider1.value
                            }
                        }
                    }
                    TextInput {
                        text: slider1.value.toString()
                        width: (parent.width-190) * 1/10
                        horizontalAlignment: Text.AlignRight
                        onTextChanged: {
                            slider1.value = parseInt(text)
                        }
                    }
                }
                Row {
                    width: parent.width
                    Text {
                        id: slider2Text
                        text: (!toggleForceDisplacement.checked? "Force" : "Displacement")+ " " + (!toggleConstCircForce.checked? "(max)":"")
                        font.italic:  !toggleConstCircForce.checked? false:true
                        width: 190
                        color: !toggleConstCircForce.checked? "#000000":"#a2a2a2"
                    }
                    Slider {
                        id: slider2
                        from: 0
                        to: 100
                        stepSize: 1
                        value: root.displacementValue
                        width: (parent.width-190) * 8/10
                        enabled: !toggleConstCircForce.checked
                        onValueChanged: manualPane.setDisplacementValue(value)

                    }
                    TextInput {
                        text: slider2.value.toString()
                        width: (parent.width-190) * 1/10
                        horizontalAlignment: Text.AlignRight
                        onTextChanged: slider2.value = parseInt(text)
                        enabled: toggleConstCircForce.checked? false:true
                        color: !toggleConstCircForce.checked? "#000000":"#a2a2a2"

                    }
                }
                Row {
                    width: parent.width
                    Text {
                        text: "Frequency"
                        width: 190
                        font.italic:  !toggleConstCircForce.checked? false:true
                        color: !toggleConstCircForce.checked? "#000000":"#a2a2a2"
                    }
                    Slider {
                        id: slider3
                        from: 0
                        to: 100
                        stepSize: 1
                        value: root.scrollValue
                        width: (parent.width-190) * 8/10
                        enabled: !toggleConstCircForce.checked
                        onValueChanged: manualPane.setScrollValue(value)
                    }
                    TextInput {
                        text: slider3.value.toString()
                        width: (parent.width-190) * 1/10
                        horizontalAlignment: Text.AlignRight
                        onTextChanged: slider3.value = parseInt(text)
                        enabled: toggleConstCircForce.checked? false:true
                        color: !toggleConstCircForce.checked? "#000000":"#a2a2a2"

                    }
                }
            }
        }

        // Range of Motion Area
        Rectangle {
            id : rect2
            height: parent.height/3 - parent.spacing
            color: "#00ffffff"
            //color: "#98bd57"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            Column {
                spacing: mainColumn.height/200
                width: parent.width //*7/10
                anchors.horizontalCenter: parent.horizontalCenter
                Row {
                    width: parent.width
                    Text {
                        text: "Angular Control"
                        font.bold: true
                        width: 300
                    }
                    Switch {
                        id: toggleRangeOfMotion
                        text: "Const/Circular"
                        onToggled: {
                            slider5.value = slider4.value
                            //slider2Text.color = "#ffffff22"
                        }
                        // onCheckedChanged: {
                        //     slider5.enabled = !checked
                        //     slider6.enabled = !checked
                        // }
                    }
                }
                Row {
                    width: parent.width

                    Text {
                        text: "Angle"+ (toggleRangeOfMotion.checked? " (min)":"")
                        width: 190
                    }

                    Slider {
                        id: slider4
                        from: 0
                        to: 100
                        stepSize: 1
                        value: root.rangeOfMotionValue
                        width: (parent.width-190) * 8/10
                        onValueChanged: {
                            manualPane.setRangeOfMotionValue(value)
                            if (toggleRangeOfMotion.checked === true){
                                slider5.value = slider4.value
                            }
                        }
                    }
                    TextInput {
                        text: slider4.value.toString()
                        width: (parent.width-190) * 1/10
                        horizontalAlignment: Text.AlignRight
                        onTextChanged: slider4.value = parseInt(text)

                    }
                }
                Row {
                    width: parent.width
                    Text {
                        id: slider5Text
                        text: "Angle"+ " " + (!toggleRangeOfMotion.checked? "(max)":"")
                        font.italic:  !toggleRangeOfMotion.checked? false:true
                        width: 190
                        color: !toggleRangeOfMotion.checked? "#000000":"#a2a2a2"
                    }
                    Slider {
                        id: slider5
                        from: 0
                        to: 100
                        stepSize: 1
                        value: root.scrollValue
                        width: (parent.width-190) * 8/10
                        enabled: !toggleRangeOfMotion.checked
                        onValueChanged: manualPane.setScrollValue(value)

                    }
                    TextInput {
                        text: slider5.value.toString()
                        width: (parent.width-190) * 1/10
                        horizontalAlignment: Text.AlignRight
                        enabled: toggleRangeOfMotion.checked? false:true
                        color: !toggleRangeOfMotion.checked? "#000000":"#a2a2a2"
                        onTextChanged: slider5.value = parseInt(text)
                    }
                }
                Row {
                    width: parent.width
                    Text {
                        text: "Frequency"
                        width: 190
                        font.italic:  !toggleRangeOfMotion.checked? false:true
                        color: !toggleRangeOfMotion.checked? "#000000":"#a2a2a2"
                    }
                    Slider {
                        id: slider6
                        from: 0
                        to: 100
                        stepSize: 1
                        value: root.scrollValue
                        width: (parent.width-190) * 8/10
                        enabled: !toggleRangeOfMotion.checked
                        onValueChanged: manualPane.setScrollValue(value)
                    }
                    TextInput {
                        text: slider6.value.toString()
                        onTextChanged: slider6.value = parseInt(text)
                        width: (parent.width-190) * 1/10
                        horizontalAlignment: Text.AlignRight
                        enabled: toggleRangeOfMotion.checked? false:true
                        color: !toggleRangeOfMotion.checked? "#000000":"#a2a2a2"
                    }
                }
            }
        }

        // Action Buttons Area
        Rectangle {
            id : rect3
            height: parent.height/3 - parent.spacing
            color: "#00ffffff"
            //color: "#98bd57"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            Column {
                spacing: mainColumn.height/200
                width: parent.width //*7/10
                anchors.horizontalCenter: parent.horizontalCenter
                Row {
                    Button {
                        text: "Run"
                        onClicked: {
                            console.log("Run button clicked")
                        }
                    }
                    Button {
                        text: "Pause"
                        onClicked: {
                            console.log("Pause button clicked")
                        }
                    }
                }
                Row {
                    ComboBox {
                        id: comboBox1
                        model: ["Option 1", "Option 2", "Option 3"]
                    }
                    ComboBox {
                        id: comboBox2
                        model: ["Option A", "Option B", "Option C"]
                    }
                }
            }
        }
    }
}


