#ifndef KFZ_H
#define KFZ_H

#include <string>
#include "Fahrzeug.h"

class KFZ : virtual public Fahrzeug {
private:
    std::string kennzeichen;
    int anzahlSitzplaetze;

public:
    KFZ(std::string kennz, int sitze);

    std::string getKennzeichen() const;
    void setKennzeichen(std::string kennz);

    int getAnzahlSitzplaetze() const;
    void setAnzahlSitzplaetze(int sitze);
};

#endif // KFZ_H
