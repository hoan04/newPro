import QtQuick 2.7
import QtQuick.Controls 2.0

ApplicationWindow {
    id: myWindow
    visible: true
    width: 600
    height: 600
    color: 'white'

    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 600
        color: 'green'
        Button {
            id: but
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
            }
            onClicked: {
                state = (state === 'left' ? '' : 'left')
                console.log("hehe")
            }

            states: [
                State {
                    name: 'left'
                    AnchorChanges {
                        target: but
                        anchors.left: undefined
                        anchors.right: parent.left
                    }
                }

            ]

            transitions: [
                Transition {
                    AnchorAnimation {
                         duration: 200
                    }
                }
            ]
        }
    }
}

Speedometer|speedometer Unit changed|onCanSignalReceived, SpeedometerUnits =