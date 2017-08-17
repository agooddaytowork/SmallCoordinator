#include <QCoreApplication>
#include "smallcoordinator.h"
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QList<QString> alist = QList<QString>({"asdf","b09i4"});
    qDebug() << alist.at(0) << " -- " << alist.at(1);
    return a.exec();
}
