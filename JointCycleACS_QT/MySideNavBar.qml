import QtQuick
import QtQuick.Controls

Column {
    id: root
    property alias tabButtonChecked: tabButton.checked
    property alias tabButton1Checked: tabButton1.checked
    property alias tabButton2Checked: tabButton2.checked
    property alias tabButtonViewChecked: tabButton3.checked
    property alias tabButton4Checked: tabButton4.checked
    property alias tabButton5Checked: tabButton5.checked


                //anchors.bottomMargin: aPRICOTlogo.paintedHeight + Constants.padding * 2
                spacing: (root.height - (tabButton.height * 6) - (2 * root.height*0.04)) / 5

                //spacing: (root.height - (tabButton.height * 6) - (2 * Constants.padding)) / 5
                TabButton {
                    id: tabButton4
                    // width: root.width - 2 * Constants.padding
                    width: root.width - 2* root.height*0.04
                    // height: (root.height - (2 * Constants.padding)) / 6 - Constants.padding
                    height: (root.height - (2 * root.height*0.04)) / 6 - root.height*0.04
                    text: qsTr("home")
                    font.pixelSize: parent.height / 35 * 1.3
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: parent.checked ? "#f8b88a" : "#c7d7e6"
                        //border.color: parent.down ? "#f8b88a" : (parent.hovered ? "#f8b88a" : (parent.checked ? "#221c41" : "#f08590"))
                        border.color: parent.down ? "#221c41" : (parent.hovered ? "#221c41" : (parent.checked ? "#221c41" : "#f08590"))
                        border.width: root.height*0.02//10
                    }
                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("go home")
                    checked: true
                    // 4th Feb new bits
                    onClicked: {
                        console.log("Home Button Clicked!")
                    }
                }

                TabButton {
                    id: tabButton
                    // width: root.width - 2 * Constants.padding
                    width: root.width - 2* root.height*0.04
                    // height: (root.height - (2 * Constants.padding)) / 6 - Constants.padding
                    height: (root.height - (2 * root.height*0.04)) / 6 - root.height*0.04
                    text: qsTr("edit a method")
                    font.pixelSize: parent.height / 35 * 1.3
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: parent.checked ? "#f8b88a" : "#c7d7e6"
                        //border.color: parent.down ? "#f8b88a" : (parent.hovered ? "#f8b88a" : (parent.checked ? "#221c41" : "#f08590"))
                        border.color: parent.down ? "#221c41" : (parent.hovered ? "#221c41" : (parent.checked ? "#221c41" : "#f08590"))
                        border.width: root.height*0.02//10
                    }
                    //text: hoverall.hovered ? "goldenrod" : "wheat"
                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("edit a method")

                    //HoverHandler {
                    //    id: hoverall
                    //    acceptedDevices: PointerDevice.AllDevices
                    //    cursorShape: Qt.PointingHandCursor
                    //    drawtext: "Hover"
                    //}
                }

                TabButton {
                    id: tabButton1
                    // width: root.width - 2 * Constants.padding
                    width: root.width - 2* root.height*0.04
                    // height: (root.height - (2 * Constants.padding)) / 6 - Constants.padding
                    height: (root.height - (2 * root.height*0.04)) / 6 - root.height*0.04
                    text: qsTr("run method")
                    font.pixelSize: parent.height / 35 * 1.3
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: parent.checked ? "#f8b88a" : "#c7d7e6"
                        //border.color: parent.down ? "#f8b88a" : (parent.hovered ? "#f8b88a" : (parent.checked ? "#221c41" : "#f08590"))
                        border.color: parent.down ? "#221c41" : (parent.hovered ? "#221c41" : (parent.checked ? "#221c41" : "#f08590"))
                        border.width: root.height*0.02//10
                    }
                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("run method")
                }

                TabButton {
                    id: tabButton2
                    // width: root.width - 2 * Constants.padding
                    width: root.width - 2* root.height*0.04
                    // height: (root.height - (2 * Constants.padding)) / 6 - Constants.padding
                    height: (root.height - (2 * root.height*0.04)) / 6 - root.height*0.04
                    text: qsTr("manual rig control")
                    font.pixelSize: parent.height / 35 * 1.3
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: parent.checked ? "#f8b88a" : "#c7d7e6"
                        //border.color: parent.down ? "#f8b88a" : (parent.hovered ? "#f8b88a" : (parent.checked ? "#221c41" : "#f08590"))
                        border.color: parent.down ? "#221c41" : (parent.hovered ? "#221c41" : (parent.checked ? "#221c41" : "#f08590"))
                        border.width: root.height*0.02//10
                    }
                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("manual rig control")
                }

                TabButton {
                    id: tabButton3
                    // width: root.width - 2 * Constants.padding
                    width: root.width - 2* root.height*0.04
                    // height: (root.height - (2 * Constants.padding)) / 6 - Constants.padding
                    height: (root.height - (2 * root.height*0.04)) / 6 - root.height*0.04
                    text: qsTr("view prior results")
                    font.pixelSize: parent.height / 35 * 1.3
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: parent.checked ? "#f8b88a" : "#c7d7e6"
                        //border.color: parent.down ? "#f8b88a" : (parent.hovered ? "#f8b88a" : (parent.checked ? "#221c41" : "#f08590"))
                        border.color: parent.down ? "#221c41" : (parent.hovered ? "#221c41" : (parent.checked ? "#221c41" : "#f08590"))
                        border.width: root.height*0.02//10
                    }
                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("view prior results")
                }


                TabButton {
                    id: tabButton5
                    // width: root.width - 2 * Constants.padding
                    width: root.width - 2* root.height*0.04
                    // height: (root.height - (2 * Constants.padding)) / 6 - Constants.padding
                    height: (root.height - (2 * root.height*0.04)) / 6 - root.height*0.04
                    //text: qsTr("about<br>JointCycleACS")
                    text: qsTr("about")

                    font.pixelSize: parent.height / 35 * 1.3 //20 *4/3
                    //fontSizeMode: Text.HorizontalFit

                    //maximumPixelSize:  22
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: parent.checked ? "#f8b88a" : "#c7d7e6"
                        //border.color: parent.down ? "#f8b88a" : (parent.hovered ? "#f8b88a" : (parent.checked ? "#221c41" : "#f08590"))
                        border.color: parent.down ? "#221c41" : (parent.hovered ? "#221c41" : (parent.checked ? "#221c41" : "#f08590"))
                        border.width: root.height*0.02//10
                        // Text {
                        //     text: "abc 122"
                        //     anchors.fill: parent
                        //     fontSizeMode: Text.FitHorizontal
                        // }
                    }
                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("about<br>JointCycleACS")
                }
            }
