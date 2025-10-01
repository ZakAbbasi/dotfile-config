import Quickshell
import Quickshell.Hyprland
import QtQuick
Scope {
    id: root

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            implicitHeight: 20

            anchors {
                bottom: true
                left: true
                right: true
            }
            
            Text {
                id: testText

                function helloWorld() {
                    testText.color = "red";
                }

                anchors.centerIn: parent
                text: "Workspaces"

                MouseArea {
                    anchors.fill: parent
                    onClicked: testText.helloWorld();
                }
            }
        }
    }
}
