import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column {
        id: col
        property int selectedIndex: 1
        spacing: 5
        Repeater {
            model: 3
            Rectangle{
                id: rect
                height: 100
                width: 100
                color: col.selectedIndex <= index ? "yellow" : "whitesmoke"
                Image{
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    id: img
                    source: "download.png"
                    visible: col.selectedIndex === index
                }
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: img.right
                    anchors.leftMargin: 10
                    id: txt
                    anchors.right: parent.right
                    text: 2 - index  + 1
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        col.selectedIndex = index
                    }
                }
            }
        }
    }
}
