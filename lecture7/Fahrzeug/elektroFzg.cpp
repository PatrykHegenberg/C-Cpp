#include "elektroFzg.h"

elektroFzg::elektroFzg(std::string typ, int leistung) : akkuTyp(typ), akkuLeistung(leistung) {}

std::string elektroFzg::getAkkuTyp() const {
    return akkuTyp;
}

void elektroFzg::setAkkuTyp(std::string typ) {
    akkuTyp = typ;
}

int elektroFzg::getAkkuLeistung() const {
    return akkuLeistung;
}

void elektroFzg::setAkkuLeistung(int leistung) {
    akkuLeistung = leistung;
}
