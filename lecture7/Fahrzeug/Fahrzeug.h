#ifndef FAHRZEUG_H
#define FAHRZEUG_H

#include <string>

class Fahrzeug {
private:
    std::string fahrgestellnummer;

public:
    Fahrzeug(std::string fgnr);

    std::string getFahrgestellnummer() const;
    void setFahrgestellnummer(std::string fgnr);
};

#endif // FAHRZEUG_H
