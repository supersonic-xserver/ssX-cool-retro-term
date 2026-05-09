/*******************************************************************************
* Copyright (c) 2013-2021 "ssX Team"
* https://github.com/supersonic-xserver/ssX-cool-retro-term
*
* This file is part of ssX-cool-retro-term.
*
* ssX-cool-retro-term is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*******************************************************************************/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "Components"

RowLayout {
    property alias value: slider.value
    property alias stepSize: slider.stepSize
    property alias minimumValue: slider.from
    property alias maximumValue: slider.to
    property real maxMultiplier: 100

    id: setting_component
    spacing: 10
    Slider {
        id: slider
        stepSize: parent.stepSize
        Layout.fillWidth: true
    }
    SizedLabel {
        text: Math.round(value * maxMultiplier) + "%"
    }
}
