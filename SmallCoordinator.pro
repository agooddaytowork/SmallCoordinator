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
        main.cpp \
        mainwindow.cpp \
    anLogger/src/anlogger.cpp \
    shared/abstractstatemachinebasis.cpp \
    shared/commonthings.cpp \
    shared/directtransition.cpp \
    BinaryProtocol/src/binaryprotocol.cpp \
    CanProtocol/src/canprotocol.cpp \
    WindowProtocol/src/windowprotocol.cpp \
    src/coordinateglobalsignals.cpp \
    src/directtransitionforsmallcoordinatorstate.cpp \
    src/smallcoordinator.cpp \
    src/smallcoordinatordb.cpp \
    src/wait4errorhandler4smallcoordinator.cpp \
    src/wait4readyworkers.cpp \
    piLocalDBWorker/src/errorpilocaldbworker.cpp \
    piLocalDBWorker/src/idlepilocaldbworker.cpp \
    piLocalDBWorker/src/pilocaldbworker.cpp \
    piLocalDBWorker/src/pilocaldbworkerbasis.cpp \
    piLocalDBWorker/src/runningpilocaldbworker.cpp \
    piLocalDBWorker/src/sendjsonpilocaldbworker.cpp \
    piLocalDBWorker/src/setissentpilocaldbworker.cpp \
    piLocalDBWorker/src/uninitiatedpilocaldbworker.cpp \
    SerialPortWorker/src/errorserialportworker.cpp \
    SerialPortWorker/src/idleserialportworker.cpp \
    SerialPortWorker/src/readbytesserialportworker.cpp \
    SerialPortWorker/src/runningserialportworker.cpp \
    SerialPortWorker/src/serialportworker.cpp \
    SerialPortWorker/src/serialportworkerbasis.cpp \
    SerialPortWorker/src/uninitiatedserialportworker.cpp \
    CanBusWorker/src/canbusworker.cpp \
    CanBusWorker/src/canbusworkerbasis.cpp \
    CanBusWorker/src/errorcanbusworker.cpp \
    CanBusWorker/src/frameiswritten.cpp \
    CanBusWorker/src/idlecanbusworker.cpp \
    CanBusWorker/src/runningcanbusworker.cpp \
    CanBusWorker/src/uninitiatedcanbusworker.cpp \
    CanBusWorker/src/writeframecanbusworker.cpp \
    SerialPortDataProcessor/src/errorserialportdataprocessor.cpp \
    SerialPortDataProcessor/src/idleserialportdataprocessor.cpp \
    SerialPortDataProcessor/src/runningserialportdataprocessor.cpp \
    SerialPortDataProcessor/src/serialportdataprocessor.cpp \
    SerialPortDataProcessor/src/serialportdataprocessorbasis.cpp \
    SerialPortDataProcessor/src/uninitiatedserialportdataprocessor.cpp \
    CanDataProcessor/src/candataprocessor.cpp \
    CanDataProcessor/src/candataprocessorbasis.cpp \
    CanDataProcessor/src/errorcandataprocessor.cpp \
    CanDataProcessor/src/idlecandataprocessor.cpp \
    CanDataProcessor/src/runningcandataprocessor.cpp \
    CanDataProcessor/src/uninitiatedcandataprocessor.cpp


HEADERS += \
        mainwindow.h \
    anLogger/src/anlogger.h \
    shared/abstractstatemachinebasis.h \
    shared/commonthings.h \
    shared/directtransition.h \
    BinaryProtocol/src/binaryprotocol.h \
    CanProtocol/src/canprotocol.h \
    WindowProtocol/src/windowprotocol.h \
    src/coordinateglobalsignals.h \
    src/directtransitionforsmallcoordinatorstate.h \
    src/smallcoordinator.h \
    src/smallcoordinatordb.h \
    src/wait4errorhandler4smallcoordinator.h \
    src/wait4readyworkers.h \
    piLocalDBWorker/src/errorpilocaldbworker.h \
    piLocalDBWorker/src/idlepilocaldbworker.h \
    piLocalDBWorker/src/pilocaldbworker.h \
    piLocalDBWorker/src/pilocaldbworkerbasis.h \
    piLocalDBWorker/src/runningpilocaldbworker.h \
    piLocalDBWorker/src/sendjsonpilocaldbworker.h \
    piLocalDBWorker/src/setissentpilocaldbworker.h \
    piLocalDBWorker/src/uninitiatedpilocaldbworker.h \
    SerialPortWorker/src/errorserialportworker.h \
    SerialPortWorker/src/idleserialportworker.h \
    SerialPortWorker/src/readbytesserialportworker.h \
    SerialPortWorker/src/runningserialportworker.h \
    SerialPortWorker/src/serialportworker.h \
    SerialPortWorker/src/serialportworkerbasis.h \
    SerialPortWorker/src/uninitiatedserialportworker.h \
    CanBusWorker/src/canbusworker.h \
    CanBusWorker/src/canbusworkerbasis.h \
    CanBusWorker/src/errorcanbusworker.h \
    CanBusWorker/src/frameiswritten.h \
    CanBusWorker/src/idlecanbusworker.h \
    CanBusWorker/src/runningcanbusworker.h \
    CanBusWorker/src/uninitiatedcanbusworker.h \
    CanBusWorker/src/writeframecanbusworker.h \
    SerialPortDataProcessor/src/errorserialportdataprocessor.h \
    SerialPortDataProcessor/src/idleserialportdataprocessor.h \
    SerialPortDataProcessor/src/runningserialportdataprocessor.h \
    SerialPortDataProcessor/src/serialportdataprocessor.h \
    SerialPortDataProcessor/src/serialportdataprocessorbasis.h \
    SerialPortDataProcessor/src/uninitiatedserialportdataprocessor.h \
    CanDataProcessor/src/candataprocessor.h \
    CanDataProcessor/src/candataprocessorbasis.h \
    CanDataProcessor/src/errorcandataprocessor.h \
    CanDataProcessor/src/idlecandataprocessor.h \
    CanDataProcessor/src/runningcandataprocessor.h \
    CanDataProcessor/src/uninitiatedcandataprocessor.h

FORMS += \
        mainwindow.ui
