import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("ListModel")

    ListModel{
        id: myModel
        ListElement{
            name: "Thanh"
            age: 24
            homeTown: "HaiPhong"
        }

        ListElement{
            name: "Hưng"
            age: 25
            homeTown: "HaNoi"
        }

        ListElement{
            name: "Thanh"
            age: 24
            homeTown: "HaNoi"
        }

        ListElement{
            name: "Thanh"
            age: 24
            homeTown: "HaNoi"
        }
    }

    Item{
        id: item1
        width: 500
        height: 500
        Rectangle{
            id: rectangle
            width: parent.height
            height: parent.width

            Component{
                id: myComponent
                Row {
                    id: row
                    spacing: 20
                    MyRectangle{
                        Text {text: name; color: index % 2 === 0 ? "red":"blue"}
                    }

                    MyRectangle{
                        Text {text: age; color: index % 2 === 0 ? "red":"blue"}
                    }
                    MyRectangle{
                        Text {text: homeTown; color: index % 2 === 0 ? "red":"blue"}
                    }

                }

            }
        }

        ListView{
            anchors.fill: parent
            model: myModel
            delegate: myComponent
        }
    }
}
