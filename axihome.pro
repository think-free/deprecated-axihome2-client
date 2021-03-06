# Add more folders to ship with the application, here
folder_01.source = qml/axihome
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

QT += opengl network androidextras

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# Speed up launching on MeeGo/Harmattan when using applauncherd daemon
# CONFIG += qdeclarative-boostable

# Please do not modify the following two lines. Required for deployment.
#include(qmlapplicationviewer/qmlapplicationviewer.pri)
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    src/Base/VariableModel/systemvariable.h \
    src/Base/VariableModel/variablemodelmanager.h \
    src/Base/Communication/jsoncommunication.h \
    src/Base/Communication/heartbeatmanager.h \
    src/Base/Log/log.h \
    src/Base/ShortCut/shortcut.h \
    src/Base/PlatformInfo/platforminfo.h \
    src/Base/Application/qmlbaseapplication.h \
    src/Base/QmlViewer/qmldroidviewer.h \
    src/Base/Communication/networkmanager.h

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += \
    src/main.cpp \
    src/Base/VariableModel/systemvariable.cpp \
    src/Base/VariableModel/variablemodelmanager.cpp \
    src/Base/Communication/jsoncommunication.cpp \
    src/Base/Communication/heartbeatmanager.cpp \
    src/Base/Log/log.cpp \
    src/Base/ShortCut/shortcut.cpp \
    src/Base/PlatformInfo/platforminfo.cpp \
    src/Base/Application/qmlbaseapplication.cpp \
    src/Base/QmlViewer/qmldroidviewer.cpp \
    src/Base/Communication/networkmanager.cpp

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

OTHER_FILES += \
    android/AndroidManifest.xml \
    android/src/org/qtproject/qt5/android/addons/qtactivityapp/QtServiceActivity.java \
    android/src/org/qtproject/qt5/android/addons/qtactivityapp/QtService.java \
    android/src/org/thinkfree/NFC/NdefMessageParser.java \
    android/src/org/thinkfree/NFC/TagViewer.java \
    android/src/org/thinkfree/NFC/record/ParsedNdefRecord.java \
    android/src/org/thinkfree/NFC/record/SmartPoster.java \
    android/src/org/thinkfree/NFC/record/TextRecord.java \
    android/src/org/thinkfree/NFC/record/UriRecord.java
