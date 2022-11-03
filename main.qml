import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
  width: 270
  height: 594
  visible: true
  title: qsTr("Hello World")

  TabBar {
    id: bar
    width: parent.width
    height: parent.height * 0.2
    TabButton {
      text: qsTr("Home")
      background: Rectangle {
        anchors.fill: parent
        color: "red"
      }

      height: parent.height
    }
    TabButton {
      text: qsTr("Discover")
      height: parent.height
    }
    TabButton {
      text: qsTr("Activity")
      height: parent.height
    }
  }

  StackLayout {
    width: parent.width
    currentIndex: bar.currentIndex
    Item {
      id: homeTab
    }
    Item {
      id: discoverTab
    }
    Item {
      id: activityTab
    }
  }
}
