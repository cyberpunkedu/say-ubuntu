// AboutUbuntu.qml
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
                text: i18n.tr("About Ubuntu")
                textSize: Label.XLarge
            }


            Image {
		    anchors.horizontalCenter: parent.horizontalCenter
		    width: units.gu(12)
  		    height: units.gu(12)
                    source: Qt.resolvedUrl("../assets/ubuntu.svg")
                }

            DefaultLabel {
                text: i18n.tr("ubuntu |oǒ'boǒntoō|")
		textSize: Label.Large
            }

            DefaultLabel {
                text: i18n.tr("Ubuntu is an ancient African word meaning ‘humanity to others’. It also means ‘I am what I am because of who we all are’. The Ubuntu operating system brings the spirit of Ubuntu to the world of computers. (ubuntu.com)")
            }

	    DefaultLabel {
		text: i18n.tr("'A person with ubuntu is open and available to others, affirming of others, does not feel threatened that others are able and good, for he or she has a proper self-assurance that comes from knowing that he or she belongs in a greater whole and is diminished when others are humiliated or diminished, when others are tortured or oppressed.' --Archbishop Desmond Tutu <br />")
	    }

        }
    }
}
