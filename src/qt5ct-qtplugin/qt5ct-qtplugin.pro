include(../../qt5ct.pri)

TEMPLATE = lib
TARGET = qt5ct
CONFIG += plugin

QT += gui-private

SOURCES += \
    main.cpp \
    qt5ctplatformtheme.cpp \
    ../qt5ct/qt5ct.cpp

!equals (DISABLE_QSS,1) {
   QT += widgets
}

OTHER_FILES += qt5ct.json

INCLUDEPATH += ../

HEADERS += \
    qt5ctplatformtheme.h \
    ../qt5ct/qt5ct.h

target.path = $$PLUGINDIR
INSTALLS += target

