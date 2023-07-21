#ifndef ELEKTROFZG_H
#define ELEKTROFZG_H

#include <string>
#include "Fahrzeug.h"

class elektroFzg : virtual public Fahrzeug {
private:
    std::string akkuTyp;
    int akkuLeistung;

public:
    elektroFzg(std::string typ, int leistung);

    std::string getAkkuTyp() const;
    void setAkkuTyp(std::string typ);

    int getAkkuLeistung() const;
    void setAkkuLeistung(int leistung);
};

#endif // ELEKTROFZG_H
