import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    ListModel{
        id: listImg
        ListElement { imagePath: "11.png"}
    }
    Component{
        id: listCom
        Image {
            width: 40
            height: 50
            id: img1
           // anchors.top: imgChinh.bottom
            source: imagePath
        }
    }

    ListView{
        anchors.fill: parent
        model: listImg
        delegate: listCom
    }
    Image {

        id: imgChinh
        width: 40
        height: 50
        source: "11.png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                listImg.append({imagePath: "11.png"})
            }
        }
    }
}
