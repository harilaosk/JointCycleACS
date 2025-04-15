/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
//import JointCycleACS_V01
//import QtQuick.Studio.DesignEffects
//import QtQuick.Window
//import QtQuick.Controls.FluentWinUI3
import "constants.js" as Constants

//import FlowView

Rectangle {
    id: rectangle
    //width: Constants.width
    //height: Constants.height
    //property real padding: 24
    anchors.fill: parent
    color: "#eaeaea"
    //property alias _textFontpointSize: _text.font.pointSize

    Pane {
        id: pane
        opacity: 1
        visible: true
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: rectangle.width - 2 * rectangle.width / 9
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        padding: 0


        Rectangle {
            id: rectangle2
            visible: true
            color: "#c7d7e6"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            MySideNavBar {
                id: column
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.bottomMargin: aPRICOTlogo.paintedHeight + Constants.padding * 2
                topPadding: Constants.padding
                padding: 0
            }
        }

        Image {
            id: aPRICOTlogo
            y: 940
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: Constants.padding
            anchors.rightMargin: Constants.padding
            anchors.bottomMargin: Constants.padding
            source: "APRICOTlogo.svg"
            fillMode: Image.PreserveAspectFit

            Text {
                id: _text
                x: 0
                y: -6
                width: 213
                height: 33
                color: "#221c41"
                text: qsTr("Designed for")
                anchors.left: parent.left
                anchors.bottom: parent.top
                anchors.leftMargin: 0
                anchors.bottomMargin: -aPRICOTlogo.paintedHeight / 5
                verticalAlignment: Text.AlignBottom
                font.pointSize: aPRICOTlogo.paintedHeight / 5
                font.styleName: "Semibold"
            }
        }
    }

    Page {
        id: page
        visible: true
        anchors.left: pane.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Rectangle {
            id: rectangle1
            color: "#f8b88a"
            border.width: 0
            anchors.fill: parent
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0

            Rectangle {
                id: rectangle3
                //x: Constants.padding
                x: parent.width / 30
                y: Constants.padding
                width: rectangle1.width - 2 * x
                height: (rectangle1.height - 4 * Constants.padding) / 5
                color: "#c7d7e6"

                Text {
                    id: _text1
                    //height: 70
                    height: parent.height * 5 / 10
                    width: parent.width
                    text: qsTr("JointCycleACS")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    //anchors.topMargin: parent.height / 30
                    anchors.topMargin: (parent.height - _text2.paintedHeight
                                        - paintedHeight) / 2 - parent.height / 30

                    font.pixelSize: parent.height * 5 / 10
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    //fontSizeMode: Text.VerticalFit
                    font.weight: Font.DemiBold
                    fontSizeMode: Text.HorizontalFit
                    color: "#221c41"
                }

                Text {
                    id: _text2
                    y: 109
                    height: parent.height * 1 / 5
                    width: parent.width
                    text: qsTr("Dynamic Joint Simulator Automated Control Software")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.bottomMargin: parent.height / 30
                    font.pixelSize: parent.height * 1 / 5
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.HorizontalFit
                    wrapMode: Text.WordWrap
                    color: "#221c41"


                    //fontSizeMode: Text.VerticalFit
                }
            }

            Rectangle {
                id: rectangle4
                x: parent.width / 30
                y: 2 * Constants.padding + rectangle3.height
                width: rectangle1.width - 2 * x
                height: (rectangle1.height - 4 * Constants.padding) / 5 * 3
                color: "#c7d7e6"

                Home_pane {
                    id: home_pane
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.top: parent.top
                }

                Edit_pane {
                    id: edit_pane
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.top: parent.top
                }

                Run_pane {
                    id: run_pane
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.top: parent.top
                }

                Manual_pane {
                    id: manual_pane
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.top: parent.top
                }

                Preview_pane {
                    id: preview_pane
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.top: parent.top
                }
                About_pane {
                    id: about_pane
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    layer.enabled: false
                    clip: true
                    anchors.top: parent.top
                }

            }

            Rectangle {
                id: rectangle5
                x: parent.width / 30
                y: 3 * Constants.padding + rectangle3.height + rectangle4.height
                width: rectangle1.width - 2 * x
                height: (rectangle1.height - 4 * Constants.padding) / 5
                color: "#c7d7e6"
                Text {
                    id: _text3
                    //height: 70
                    height: parent.height * 5 / 10
                    width: parent.width
                    text: qsTr("JointCycleACS")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    //anchors.topMargin: parent.height / 30
                    anchors.topMargin: (parent.height - _text2.paintedHeight
                                        - paintedHeight) / 2 - parent.height / 30

                    font.pixelSize: parent.height * 5 / 10
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    //fontSizeMode: Text.VerticalFit
                    font.weight: Font.DemiBold
                    fontSizeMode: Text.HorizontalFit
                    color: "#221c41"

                }

                Text {
                    id: _text4
                    y: 109
                    height: parent.height * 1 / 5
                    width: parent.width
                    text: qsTr("Dynamic Joint Simulator Automated Control Software")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.bottomMargin: parent.height / 30
                    font.pixelSize: parent.height * 1 / 5
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.HorizontalFit
                    wrapMode: Text.WordWrap
                    color: "#221c41"


                    //fontSizeMode: Text.VerticalFit
                }
            }

        }
    }
    states: [
        State {
            name: "Home"
            when: column.tabButton4Checked
            PropertyChanges {
                target: home_pane
                visible: true
            }
        },

        // State {
        //     name: "Home"
        //     when: !column.tabButtonChecked && !column.tabButton1Checked && !column.tabButton2Checked && !column.tabButtonViewChecked && !column.tabButton4hecked && !column.tabButton5Checked
        //     PropertyChanges {
        //         target: home_pane
        //         visible: true
        //     }

        // },

        State {
            id: _state
            name: "edit a method"
            when: column.tabButtonChecked

            PropertyChanges {
                target: edit_pane
                visible: true
            }

            // PropertyChanges {
            //     target: _state
            //     when: column.tabButton.checked
            // }


        },
        State {
            name: "run method"
            when: column.tabButton1Checked

            PropertyChanges {
                target: rectangle1
                color: "#f08590"
            }
            PropertyChanges {
                target: run_pane
                visible: true
            }
            // PropertyChanges {
            //     target: edit_pane
            //     clip: false
            // }
        },
        State {
            name: "Manual Rig Control"
            when: column.tabButton2Checked

            PropertyChanges {
                target: rectangle5
                visible: false
                //state: ""
            }

            PropertyChanges {
                target: manual_pane
                visible: true
            }

            PropertyChanges {
                target: rectangle4
                height: (rectangle1.height - 4 * Constants.padding) / 5 * 3
                        + (rectangle1.height - 4 * Constants.padding) / 5 + Constants.padding
            }
        },
        State {
            name: "About"
            when: column.tabButton5Checked
            PropertyChanges {
                target: about_pane
                visible: true
            }
        },
        State {
            name: "View"
            when: column.tabButtonViewChecked
            PropertyChanges {
                target: preview_pane
                visible: true
            }
        }
    ]
    // //<
    //     // Include Manual_pane.qml
    //         Manual_pane {
    //             id: manualPane
    //         }
    // //>

}
