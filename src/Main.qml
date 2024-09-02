import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow
{
    id:                         applicationWindow
    title:                      "Main"
    visible:                    true
    width:                      1280
    height:                     720
    color:                      "#eeeeee"

    Image {
        source:                 "qrc:/image/image.png"
        width:                  640
        anchors.centerIn:       parent
    }
}
