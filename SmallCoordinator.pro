#-------------------------------------------------
#
# Project created by QtCreator 2017-09-11T11:46:32
#
#-------------------------------------------------

QT       += core gui serialport serialbus sql network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += -std=c++11 console
TARGET = ExecSmallCoordinator
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
        anlogger.cpp \
        commonthings.cpp \
        main.cpp \
        binaryprotocol.cpp \
        canprotocol.cpp \
        windowprotocol.cpp \
    piLocalDBWorker/connectdatabase.cpp \
    piLocalDBWorker/directtransition4pilocaldbworkerstate.cpp \
    piLocalDBWorker/pilocaldbworker.cpp \
    piLocalDBWorker/pilocaldbworkervarset.cpp \
    piLocalDBWorker/setissentcolumnonlocaldatabase.cpp \
    piLocalDBWorker/updatelocaldatabase.cpp \
    piLocalDBWorker/updateonlinedatabase.cpp \
    piLocalDBWorker/wait4errorhandler4pilocaldbworker.cpp \
    SerialPortWorker/connectserialport.cpp \
    SerialPortWorker/directtransition4serialportworkerstate.cpp \
    SerialPortWorker/readbytes.cpp \
    SerialPortWorker/requestserialportinfo.cpp \
    SerialPortWorker/serialportworker.cpp \
    SerialPortWorker/serialportworkerproperty.cpp \
    SerialPortWorker/validateserialportinfo.cpp \
    SerialPortWorker/wait4errorhandler4serialportworker.cpp \
    SerialPortWorker/writebytes.cpp \
    UHVPVICollector/directtransitionforuhvpvicollectorstate.cpp \
    UHVPVICollector/emitreadi.cpp \
    UHVPVICollector/emitreadp.cpp \
    UHVPVICollector/emitreadv.cpp \
    UHVPVICollector/idleuhvpvicollector.cpp \
    UHVPVICollector/uhvpvicollector.cpp \
    UHVPVICollector/uhvpvicollectordb.cpp \
    UHVPVICollector/wait4i.cpp \
    UHVPVICollector/wait4p.cpp \
    UHVPVICollector/wait4v.cpp \
    SmallCoordinator/smallcoordinator.cpp \
    SmallCoordinator/smallcoordinatordb.cpp \
    SmallCoordinator/coordinateglobalsignals.cpp \
    SmallCoordinator/wait4readyworkers.cpp \
    SmallCoordinator/directtransitionforsmallcoordinatorstate.cpp \
    SmallCoordinator/wait4errorhandler4smallcoordinator.cpp \
    mainwindow.cpp

HEADERS += \
        anlogger.h \
        commonthings.h \
        binaryprotocol.h \
        canprotocol.h \
        windowprotocol.h \
    piLocalDBWorker/connectdatabase.h \
    piLocalDBWorker/directtransition4pilocaldbworkerstate.h \
    piLocalDBWorker/pilocaldbworker.h \
    piLocalDBWorker/pilocaldbworkervarset.h \
    piLocalDBWorker/setissentcolumnonlocaldatabase.h \
    piLocalDBWorker/updatelocaldatabase.h \
    piLocalDBWorker/updateonlinedatabase.h \
    piLocalDBWorker/wait4errorhandler4pilocaldbworker.h \
    SerialPortWorker/connectserialport.h \
    SerialPortWorker/directtransition4serialportworkerstate.h \
    SerialPortWorker/readbytes.h \
    SerialPortWorker/requestserialportinfo.h \
    SerialPortWorker/serialportworker.h \
    SerialPortWorker/serialportworkerproperty.h \
    SerialPortWorker/validateserialportinfo.h \
    SerialPortWorker/wait4errorhandler4serialportworker.h \
    SerialPortWorker/writebytes.h \
    UHVPVICollector/directtransitionforuhvpvicollectorstate.h \
    UHVPVICollector/emitreadi.h \
    UHVPVICollector/emitreadp.h \
    UHVPVICollector/emitreadv.h \
    UHVPVICollector/idleuhvpvicollector.h \
    UHVPVICollector/uhvpvicollector.h \
    UHVPVICollector/uhvpvicollectordb.h \
    UHVPVICollector/wait4i.h \
    UHVPVICollector/wait4p.h \
    UHVPVICollector/wait4v.h \
    SmallCoordinator/smallcoordinator.h \
    SmallCoordinator/smallcoordinatordb.h \
    SmallCoordinator/coordinateglobalsignals.h \
    SmallCoordinator/wait4readyworkers.h \
    SmallCoordinator/directtransitionforsmallcoordinatorstate.h \
    SmallCoordinator/wait4errorhandler4smallcoordinator.h \
    mainwindow.h

FORMS += \
        mainwindow.ui
