// Main.qml
//
// This file is part of the Say Ubuntu application.
//
// Copyright (c) 2017 
//
// Maintained by Joe (@exar_kun) <joe@ubports.com>
//
// GNU GENERAL PUBLIC LICENSE
//    Version 3, 29 June 2007
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import QtQuick 2.4
import Ubuntu.Components 1.3
import "modules"
import QtMultimedia 5.0


Page {
    id: homePage
    title: i18n.tr("Say Ubuntu like %1!").arg("Desmond Tutu")
    header: DefaultHeader {}

    ScrollView {
        id: scroll
        anchors {
            fill: parent
            topMargin: homePage.header.height
        }

        Column {
            id: homeColumn
            width: scroll.width
            spacing: units.gu(3)

   	    DefaultLabel {
                text: i18n.tr("")
                textSize: Label.Large
            }

            Image {
		id: cof
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Image.AlignHCenter
                source: Qt.resolvedUrl("../assets/ubuntu.svg")

		MouseArea {
            	    id: mousey
	 	    anchors.fill: parent
		    hoverEnabled: true
		    onPressed: {
                        cof.opacity = 0.5
                        playSound.play()
                        }
                    onReleased: {
                        cof.opacity = 1.0
                        }
                    }

                }

            DefaultLabel {
                text: i18n.tr("Press to say 'ubuntu' like %1").arg("Desmond Tutu")
                textSize: Label.XLarge
                }

            DefaultLabel {
                text: i18n.tr("")
                textSize: Label.Large
                }

	    Audio {
                    id: playSound
                    source: Qt.resolvedUrl("../assets/ubuntu.ogg")
                }
          
        }
    }
}
