import QtQuick 2.0

Rectangle{
    width: 50
    height: 20
    Text {color: index % 2 === 0 ? "red":"blue"}
}
