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
        property int numberModel: 3
        property int mountSpacing: 5
        spacing: mountSpacing
        Repeater {
            model: col.numberModel
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
                    text: col.numberModel - index
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
