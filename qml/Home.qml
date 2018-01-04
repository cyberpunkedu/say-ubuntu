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
import "../assets/soundpick.js" as Logic


Page {
    id: homePage
    title: i18n.tr("Say Ubuntu")
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
              property string speaker: ref.lister[refNum]
	      property int refNum: quote.quoteNum
	      id: sayLike
              text: i18n.tr("Press to say \"ubuntu\" like %1").arg(speaker)
              textSize: Label.Large
              }

            Image {
		id: cof
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Image.AlignHCenter
                source: Qt.resolvedUrl("../assets/ubuntu.svg")

		MouseArea {
		    property int longness: theList.listy.length - 1
                    property int quoteNum: Math.floor(Math.random() * longness)
		    property string quote: theList.listy[quoteNum]

            	    id: mousey
	 	    anchors.fill: parent
		    hoverEnabled: true
		    onPressed: {
                        cof.opacity = 0.5
                        Logic.talker(sayLike.speaker).play()
			quoteNum = Math.floor(Math.random() * longness)
			quote.myQuote = theList.listy[quoteNum]
                        }
                    onReleased: {
                        cof.opacity = 1.0
                        }
                    }

                }

         
	    Audio {
                    id: desBuntu
                    source: Qt.resolvedUrl("../assets/ubuntu.ogg")
			
                }
  
	    Audio {
                    id: markBuntu
                    source: Qt.resolvedUrl("../assets/ubuntu2.ogg")
			
                }


      	    DefaultLabel {
                    property int longness: theList.listy.length - 1
                    property int quoteNum: mousey.quoteNum
                    property string myQuote: theList.listy[quoteNum]

                    id: quote
                    font.italic: true
                    wrapMode: Text.WordWrap
                    text: myQuote
		    textSize: Label.Large
	        }
	    
	    Item {
            	    id: theList
		    property var listy: [
			    "\"A person is a person through other persons.\" --Desmond Tutu",
                            "\"I need you to be you, so that I can be me.\" --Desmond Tutu",
                            "\"When you dehumanize another [...] you are, yourself, dehumanized\" --Desmond Tutu",
                            "\"My humanity is caught up, is inextricably bound up, in yours.\" --Desmond Tutu",
			    "\"The name 'ubuntu'... it's not a technology name; it's a name about people.\" --Mark Shuttleworth",
			    "\"Ubuntu is not just software.\""
                          ]

               }
	   
	    Item {
		  id: ref
		  property var lister: [
			    "Desmond Tutu",
			    "Desmond Tutu",
			    "Desmond Tutu",
			    "Desmond Tutu",
			    "Mark Shuttleworth"
			]
	      }
          
        }
    }
}
