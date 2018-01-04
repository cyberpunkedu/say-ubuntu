// AboutApp.qml
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

Page {
    id: aboutPage
    title: i18n.tr("Say Ubuntu")
    header: DefaultHeader {}

    ScrollView {
        id: scroll
        anchors {
            fill: parent
            topMargin: aboutPage.header.height
        }

        Column {
            id: aboutColumn
            width: scroll.width
            spacing: units.gu(3)

            DefaultLabel {
                text: i18n.tr("About Say Ubuntu")
                textSize: Label.XLarge
            }

            UbuntuShape {
                width: units.gu(12); height: units.gu(12)
                anchors.horizontalCenter: parent.horizontalCenter
                radius: Label.Medium
                image: Image {
                    source: Qt.resolvedUrl("../assets/logo.png")
                }
            }

            DefaultLabel {
                text: i18n.tr("Version: ") + sayubuntu.version
            }

	    DefaultLabel {
		text: i18n.tr("Now you know how to say 'ubuntu'")
	    }

        }
    }
}
