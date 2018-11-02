/*
 * force-cover-settings - permits to change switcher's cover size settings
 * Copyright (C) 2016  Eugenio "g7" Paolantonio
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
*/

import QtQuick 2.0
import Sailfish.Silica 1.0
import org.nemomobile.configuration 1.0

Page {
    id: self

    property var coverSizeSettings: ["dynamic", "small", "large"]

    ConfigurationGroup {
        id: switcherSettings
        
        path: "/desktop/lipstick-jolla-home-qt5/homescreenSwitcher"

        property string coverSize: "large"
        property bool alwaysStickStatusBar: false

    }

    SilicaFlickable {

        anchors.fill: parent
        contentHeight: content.height

        Column {
            id: content
            width: parent.width

            PageHeader {
                title: "Application switcher"
            }

            ComboBox {
                /* Switcher cover size */
                id: switcherCoverSize

                currentIndex: coverSizeSettings.indexOf(switcherSettings.coverSize)
                onCurrentIndexChanged: {
                    switcherSettings.coverSize = coverSizeSettings[currentIndex]
                }

                label: "Cover size"
                description: "Controls the size of the covers in the application switcher"
                menu: ContextMenu {
                    MenuItem { text: "Dynamic" }
                    MenuItem { text: "Small" }
                    MenuItem { text: "Large" }
                }
            }

            TextSwitch {
                /* Stick status bar in events view */
                id: alwaysStickStatusBarSwitch

                automaticCheck: false
                checked: switcherSettings.alwaysStickStatusBar
                onClicked: switcherSettings.alwaysStickStatusBar = !switcherSettings.alwaysStickStatusBar

                text: "Stick the Status Bar in Events view"
                description: "If enabled, the Status Bar is sticked also in the Events view."
            }

        }
    }
}
