#ifndef SMALLCOORDINATORDB_H
#define SMALLCOORDINATORDB_H

#define SmallCoordinatorDBDbgEn 1

#include <QObject>
#include "anlogger.h"
#include "commonthings.h"

class SmallCoordinatorDB : public QObject
{
    Q_OBJECT
public:
    explicit SmallCoordinatorDB(QObject *parent = nullptr);
signals:

public slots:
};
#endif // SMALLCOORDINATORDB_H
