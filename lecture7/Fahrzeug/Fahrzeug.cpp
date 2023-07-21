#include "Fahrzeug.h"

Fahrzeug::Fahrzeug(std::string fgnr) : fahrgestellnummer(fgnr) {}

std::string Fahrzeug::getFahrgestellnummer() const {
    return fahrgestellnummer;
}

void Fahrzeug::setFahrgestellnummer(std::string fgnr) {
    fahrgestellnummer = fgnr;
}
