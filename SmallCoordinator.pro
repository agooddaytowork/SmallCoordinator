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
    pilocaldbworker.cpp \
    canprotocol.cpp \
    UHVPVICollector/directtransition.cpp \
    UHVPVICollector/emitreadi.cpp \
    UHVPVICollector/emitreadp.cpp \
    UHVPVICollector/emitreadv.cpp \
    UHVPVICollector/idle.cpp \
    UHVPVICollector/uhvpvicollector.cpp \
    UHVPVICollector/uhvpvicollectordb.cpp \
    UHVPVICollector/wait4i.cpp \
    UHVPVICollector/wait4p.cpp \
    UHVPVICollector/wait4v.cpp \
    piLocalDBWorker/connectdatabase.cpp \
    piLocalDBWorker/directtransition.cpp \
    piLocalDBWorker/pilocaldbworker.cpp \
    piLocalDBWorker/pilocaldbworkervarset.cpp \
    piLocalDBWorker/setissentcolumnonlocaldatabase.cpp \
    piLocalDBWorker/updatelocaldatabase.cpp \
    piLocalDBWorker/updateonlinedatabase.cpp \
    piLocalDBWorker/wait4errorhandler.cpp \
    SmallCoordinator/smallcoordinatordb.cpp \
    SmallCoordinator/smallcoordinator.cpp

HEADERS += \
        mainwindow.h \
    anlogger.h \
    binaryprotocol.h \
    commonthings.h \
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
    pilocaldbworker.h \
    canprotocol.h \
    UHVPVICollector/directtransition.h \
    UHVPVICollector/emitreadi.h \
    UHVPVICollector/emitreadp.h \
    UHVPVICollector/emitreadv.h \
    UHVPVICollector/idle.h \
    UHVPVICollector/uhvpvicollector.h \
    UHVPVICollector/uhvpvicollectordb.h \
    UHVPVICollector/wait4i.h \
    UHVPVICollector/wait4p.h \
    UHVPVICollector/wait4v.h \
    piLocalDBWorker/connectdatabase.h \
    piLocalDBWorker/directtransition.h \
    piLocalDBWorker/pilocaldbworker.h \
    piLocalDBWorker/pilocaldbworkervarset.h \
    piLocalDBWorker/setissentcolumnonlocaldatabase.h \
    piLocalDBWorker/updatelocaldatabase.h \
    piLocalDBWorker/updateonlinedatabase.h \
    piLocalDBWorker/wait4errorhandler.h \
    SmallCoordinator/smallcoordinatordb.h \
    SmallCoordinator/smallcoordinator.h

FORMS += \
        mainwindow.ui
