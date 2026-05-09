TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS += qmltermwidget
SUBDIRS += app

desktop.files += ssX-cool-retro-term.desktop
desktop.path += /usr/share/applications

INSTALLS += desktop
