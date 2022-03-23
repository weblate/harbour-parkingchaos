# This file is part of harbour-parkingchaos.
# SPDX-License-Identifier: GPL-3.0-or-later
# SPDX-FileCopyrightText: 2020-2022 Mirian Margiani

# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-parkingchaos

CONFIG += sailfishapp

SOURCES += src/harbour-parkingchaos.cpp

DISTFILES += qml/harbour-parkingchaos.qml \
    qml/cover/*.qml \
    qml/pages/*.qml \
    qml/components/*.qml \
    qml/components/*.js \
    qml/images/*.png \
    rpm/harbour-parkingchaos.changes.in \
    rpm/harbour-parkingchaos.changes.run.in \
    rpm/harbour-parkingchaos.spec \
    rpm/harbour-parkingchaos.yaml \
    translations/*.ts \
    harbour-parkingchaos.desktop

data.files = data
data.path = /usr/share/$${TARGET}

INSTALLS += data

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/harbour-parkingchaos-de.ts \
    translations/harbour-parkingchaos-en.ts \
    translations/harbour-parkingchaos-sv.ts \
    translations/harbour-parkingchaos-ru.ts

# Note: version number is configured in yaml
DEFINES += APP_VERSION=\\\"$$VERSION\\\"
DEFINES += APP_RELEASE=\\\"$$RELEASE\\\"
include(libs/opal-cached-defines.pri)
