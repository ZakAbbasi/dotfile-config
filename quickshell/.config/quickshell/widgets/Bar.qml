import Quickshell
import QtQuick

Scope {
  id: root

  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 20
      color: "transparent"

      Rectangle {
        color: "#44475A"
        border.color: "#F8F8F2"
        anchors.fill: parent

        ClockWidget {
          anchors.centerIn: parent
        }
      }
    }
  }
}
