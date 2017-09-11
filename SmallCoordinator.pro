#-------------------------------------------------
#
# Project created by QtCreator 2017-09-11T11:46:32
#
#-------------------------------------------------

QT       += core gui serialport serialbus sql network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += -std=c++11 console
TARGET = SmallCoordinator
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    binaryprotocol.cpp \
    smallcoordinator.cpp \
    smallcoordinatordb.cpp \
    windowprotocol.cpp \
    UHVWorker/errorannouncement.cpp \
    UHVWorker/messagereceiveandemitout.cpp \
    UHVWorker/serialportconnectionestablishment.cpp \
    UHVWorker/serialportinforequest.cpp \
    UHVWorker/serialportinfovalidation.cpp \
    UHVWorker/solitarymessagetransmission.cpp \
    UHVWorker/uhvworker.cpp \
    UHVWorker/uhvworkerdirectstatetransition.cpp \
    UHVWorker/uhvworkervarset.cpp \
    UHV4PVICollector/directtransition.cpp \
    UHV4PVICollector/emitreadi.cpp \
    UHV4PVICollector/emitreadp.cpp \
    UHV4PVICollector/emitreadv.cpp \
    UHV4PVICollector/idle.cpp \
    UHV4PVICollector/uhv4pvicollector.cpp \
    UHV4PVICollector/uhv4pvicollectordb.cpp \
    UHV4PVICollector/wait4i.cpp \
    UHV4PVICollector/wait4p.cpp \
    UHV4PVICollector/wait4v.cpp \
    UHV2PVICollector/directtransition.cpp \
    UHV2PVICollector/emitreadi.cpp \
    UHV2PVICollector/emitreadp.cpp \
    UHV2PVICollector/emitreadv.cpp \
    UHV2PVICollector/idle.cpp \
    UHV2PVICollector/uhv2pvicollector.cpp \
    UHV2PVICollector/uhv2pvicollectordb.cpp \
    UHV2PVICollector/wait4i.cpp \
    UHV2PVICollector/wait4p.cpp \
    UHV2PVICollector/wait4v.cpp \
    pilocaldbworker.cpp \
    canprotocol.cpp

HEADERS += \
        mainwindow.h \
    anlogger.h \
    binaryprotocol.h \
    commonthings.h \
    smallcoordinator.h \
    smallcoordinatordb.h \
    windowprotocol.h \
    UHVWorker/errorannouncement.h \
    UHVWorker/messagereceiveandemitout.h \
    UHVWorker/serialportconnectionestablishment.h \
    UHVWorker/serialportinforequest.h \
    UHVWorker/serialportinfovalidation.h \
    UHVWorker/solitarymessagetransmission.h \
    UHVWorker/uhvworker.h \
    UHVWorker/uhvworkerdirectstatetransition.h \
    UHVWorker/uhvworkervarset.h \
    UHV4PVICollector/directtransition.h \
    UHV4PVICollector/emitreadi.h \
    UHV4PVICollector/emitreadp.h \
    UHV4PVICollector/emitreadv.h \
    UHV4PVICollector/idle.h \
    UHV4PVICollector/uhv4pvicollector.h \
    UHV4PVICollector/uhv4pvicollectordb.h \
    UHV4PVICollector/wait4i.h \
    UHV4PVICollector/wait4p.h \
    UHV4PVICollector/wait4v.h \
    UHV2PVICollector/directtransition.h \
    UHV2PVICollector/emitreadi.h \
    UHV2PVICollector/emitreadp.h \
    UHV2PVICollector/emitreadv.h \
    UHV2PVICollector/idle.h \
    UHV2PVICollector/uhv2pvicollector.h \
    UHV2PVICollector/uhv2pvicollectordb.h \
    UHV2PVICollector/wait4i.h \
    UHV2PVICollector/wait4p.h \
    UHV2PVICollector/wait4v.h \
    pilocaldbworker.h \
    canprotocol.h

FORMS += \
        mainwindow.ui
