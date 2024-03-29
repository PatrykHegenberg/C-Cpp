#let boxed(term) = block(
 fill: luma(230),
 inset: 8pt,
 radius: 4pt,
 term
)
= Ein. und Ausgabe
    Die Ein- und Ausgabe (E/A) ist ein wichtiger Aspekt der Programmierung, da sie es ermöglicht, mit dem Benutzer zu interagieren und Informationen auszugeben. In C++ werden die Standard-Bibliotheksfunktionen cin und cout verwendet, um die Eingabe von Daten zu lesen und Ausgaben auf der Konsole zu erzeugen.

== Eingabe mit cin:
Die Funktion cin ist Teil der C++-Standardbibliothek und wird verwendet, um Benutzereingaben von der Konsole einzulesen. Mit cin kannst du Werte unterschiedlicher Datentypen einlesen, wie Ganzzahlen, Gleitkommazahlen, Zeichen und Zeichenketten.

Um eine Ganzzahl einzulesen, verwendest du den `>>` -Operator zusammen mit der Variable, in der du den Wert speichern möchtest:
#boxed(```cpp
#include <iostream>

int main() {
    int num;
    std::cout << "Gib eine Ganzzahl ein: ";
    std::cin >> num;
    std::cout << "Du hast die Zahl " << num << " eingegeben." << std::endl;

    return 0;
}
```)
Um eine Zeichenkette einzulesen, kannst du getline() verwenden:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string name;
    std::cout << "Gib deinen Namen ein: ";
    std::getline(std::cin, name);
    std::cout << "Hallo, " << name << "!" << std::endl;

    return 0;
}
```)
getline() wird verwendet, um eine komplette Zeile einzulesen, einschließlich Leerzeichen, bis zur Eingabetaste (Enter) des Benutzers.

== Ausgabe mit cout:
Die Funktion cout ist ebenfalls Teil der C++-Standardbibliothek und wird verwendet, um Ausgaben auf der Konsole zu erzeugen. Mit cout kannst du Werte unterschiedlicher Datentypen ausgeben.

Um beispielsweise eine Ganzzahl und eine Zeichenkette auszugeben, verwendest du den `<<` -Operator, um die Werte zu concaten:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    int age = 25;
    std::string name = "John Doe";

    std::cout << "Name: " << name << std::endl;
    std::cout << "Alter: " << age << " Jahre" << std::endl;

    return 0;
}
```)
Die Ausgabe wäre:

makefile

Name: John Doe
Alter: 25 Jahre

== Fehlschläge bei der Eingabe:
Bei der Benutzereingabe mit cin ist es wichtig zu bedenken, dass cin auf eine Eingabe trifft, die nicht dem erwarteten Datentyp entspricht, die Eingabe fehlschlägt und der Wert der Variablen unverändert bleibt. Dies kann zu unerwünschtem Verhalten führen. Daher ist es ratsam, die Eingabe zu überprüfen und Fehler abzufangen.

Im folgenden Beispiel wird eine Schleife verwendet, um fehlerhafte Eingaben zu behandeln und den Benutzer aufzufordern, es erneut zu versuchen:
#boxed(```cpp
#include <iostream>

int main() {
    int num;
    std::cout << "Gib eine Ganzzahl ein: ";

    // Überprüfung der Eingabe
    while (!(std::cin >> num)) {
        std::cout << "Ungültige Eingabe. Versuche es erneut: ";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    std::cout << "Du hast die Zahl " << num << " eingegeben." << std::endl;

    return 0;
}
```)
In diesem Beispiel wird die Schleife so lange wiederholt, bis eine gültige Ganzzahl eingegeben wird. cin.clear() wird verwendet, um den Fehlerzustand von cin zu löschen, und cin.ignore() wird verwendet, um den Puffer zu leeren und alle überschüssigen Zeichen zu ignorieren.

Die Ein- und Ausgabe-Funktionen cin und cout ermöglichen es, interaktive Programme zu erstellen, Benutzereingaben zu verarbeiten und nützliche Informationen an den Benutzer auszugeben.

= Strings
    Ein String ist eine Sequenz von Zeichen, die in C++ durch die Standard-Bibliotheksklasse std::string repräsentiert wird. Die std::string-Klasse ist Teil der C++-Standardbibliothek und bietet eine Vielzahl von Funktionen, um mit Zeichenketten zu arbeiten.

== String-Länge:
Die Funktionen length() und size() in der std::string-Klasse werden verwendet, um die Länge eines Strings zu ermitteln. Beide Funktionen geben die Anzahl der Zeichen im String zurück.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string str = "Hallo, Welt!";
    std::cout << "Länge des Strings: " << str.length() << std::endl;
    // oder: std::cout << "Länge des Strings: " << str.size() << std::endl;

    return 0;
}```)
== String-Verkettungen:
Die std::string-Klasse ermöglicht die einfache Verkettung von Strings mithilfe des +-Operators. Damit kannst du zwei oder mehr Strings zu einer einzigen Zeichenkette zusammenfügen.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string str1 = "Hallo, ";
    std::string str2 = "Welt!";
    std::string result = str1 + str2;
    std::cout << result << std::endl;

    return 0;
}```)
Das Ergebnis der Verkettung der Strings str1 und str2 ist der neue String result, der "Hallo, Welt!" lautet.

== String-Wandlungen:
Die std::string-Klasse bietet auch Funktionen, um Strings in andere Datentypen umzuwandeln. Beispielsweise kannst du einen String in eine Ganzzahl oder eine Gleitkommazahl umwandeln.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string num_str = "42";
    int num = std::stoi(num_str);
    std::cout << "Die Zahl ist: " << num << std::endl;

    return 0;
}```)

In diesem Beispiel wird die Funktion std::stoi() verwendet, um den String "42" in die Ganzzahl 42 umzuwandeln. Es gibt auch andere Funktionen wie std::stod() für Gleitkommazahlen und std::stol() für lange Ganzzahlen.

== String-Substring:
Mit der Funktion substr() kannst du einen Teil eines Strings extrahieren. substr() erwartet zwei Argumente: den Startindex und die Länge des Substrings.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string str = "Hallo, Welt!";
    std::string sub = str.substr(7, 5);
    std::cout << "Substring: " << sub << std::endl;
    // Ausgabe: "Substring: Welt"

    return 0;
}```)

Hier wird substr(7, 5) verwendet, um den Teil des Strings ab dem 8. Zeichen (Index 7) mit einer Länge von 5 Zeichen zu extrahieren, was den Substring "Welt" ergibt.

== Weitere nützliche Funktionen:
Die std::string-Klasse bietet eine Vielzahl von nützlichen Funktionen, die beim Arbeiten mit Zeichenketten hilfreich sind. Einige Beispiele sind:

    find(): Sucht nach einem Teilstring in einem String und gibt den Index des ersten Vorkommens zurück.
    replace(): Ersetzt Teilstrings in einem String durch andere Zeichenketten.
    compare(): Vergleicht zwei Strings lexikographisch und gibt eine Zahl zurück, die angibt, ob sie gleich sind oder welcher String vor dem anderen liegt.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string str = "Hallo, Welt!";
    size_t found = str.find("Welt");

    if (found != std::string::npos) {
        std::cout << "Teilstring gefunden bei Index: " << found << std::endl;
    }

    str.replace(7, 4, "Erde");
    std::cout << "Neuer String: " << str << std::endl;

    if (str.compare("Hallo, Erde!") == 0) {
        std::cout << "Strings sind gleich." << std::endl;
    }

    return 0;
}```)

Hier wird find() verwendet, um nach dem Teilstring "Welt" zu suchen, replace() um "Welt" durch "Erde" zu ersetzen und compare() um den String mit "Hallo, Erde!" zu vergleichen.

Strings in C++ sind äußerst vielseitig und bieten eine Fülle von Funktionen, die das Arbeiten mit Zeichenketten erleichtern.

== Standard-Konstruktor:
    Der Standard-Konstruktor erstellt einen leeren String.

#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string str; // Leerer String wird erstellt
    std::cout << "Leerer String: " << str << std::endl;

    return 0;
}```)

== Konstruktor mit C-String:
    Du kannst einen C-String verwenden, um einen std::string zu initialisieren.

#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    const char* cstr = "Hallo, Welt!";
    std::string str(cstr); // String mit C-String initialisieren
    std::cout << "String mit C-String: " << str << std::endl;

    return 0;
}```)

== Kopier-Konstruktor:
    Der Kopier-Konstruktor erstellt einen neuen String, der eine Kopie eines vorhandenen Strings ist.

#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string original = "Hallo";
    std::string kopie(original); // Kopier-Konstruktor
    std::cout << "Kopierter String: " << kopie << std::endl;

    return 0;
}```)

== Konstruktor mit Zeichen und Länge:
    Du kannst auch einen Konstruktor verwenden, der eine bestimmte Anzahl von Zeichen eines C-Strings kopiert.

#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    const char* cstr = "Hello, World!";
    std::string str(cstr, 5); // Die ersten 5 Zeichen des C-Strings werden kopiert
    std::cout << "String mit begrenzter Länge: " << str << std::endl;

    return 0;
}```)

== Initialisierung mit einem Zeichen:
    Du kannst einen String mit einer bestimmten Anzahl von wiederholten Zeichen initialisieren.

#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    char zeichen = 'A';
    std::string str(5, zeichen); // String wird mit 5x 'A' initialisiert
    std::cout << "String mit wiederholtem Zeichen: " << str << std::endl;

    return 0;
}```)

== Konstruktor mit Iteratoren:
    Du kannst auch einen Konstruktor verwenden, der zwei Iteratoren akzeptiert, um einen String aus einem Bereich von Zeichen zu erstellen.

#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string original = "Hello, World!";
    std::string str(original.begin() + 7, original.end()); // String wird aus dem Bereich 'World!' erstellt
    std::cout << "String mit Iteratoren: " << str << std::endl;

    return 0;
}```)

Das sind nur einige Beispiele für die Verwendung der Konstruktoren von std::string. Die C++-Standardbibliothek bietet noch weitere Konstruktoren und Funktionen, um mit Strings zu arbeiten.

= Vektoren
    Vektoren sind eine der vielseitigsten Datenstrukturen in C++, die Teil der Standard Template Library (STL) sind. Ein Vektor ist ein dynamischer Container, der es ermöglicht, eine Liste von Elementen zu speichern und effizient auf sie zuzugreifen. Es ist vergleichbar mit einem Array, aber im Gegensatz zu Arrays, deren Größe zur Kompilierzeit festgelegt wird, kann die Größe eines Vektors zur Laufzeit geändert werden.

Um Vektoren in C++ zu verwenden, musst du die vector-Header-Datei in dein Programm einbeziehen:

#boxed(```cpp
#include <iostream>
#include <vector>
```)
== Merkmale
+ Der Vektor ist ein sequentieller Container, d.h
 + die Elemente liegen hintereinander (in einer Sequenz)
 + der Nutzer des Containers bestimmt die Reihenfolge der Elemente 
 + der Container selber verändert die Reihenfolge nicht.
+ Der Vektor unterstützt wahlfreien Zugriff, d. h. man kann direkt auf das n-te Element zugreifen (ohne Performance-Probleme).
+ Der Vektor benötigt relativ wenig Speicher, da er kaum interne Verwaltungs-Informationen benötigt und die Elemente bündig im Speicher aneinander liegen.
+ Anfügen neuer Elemente am Ende des Vektors und Löschen von Elementen am Ende des Vektors geht sehr schnell.
+ Muss dagegen vorne ein Element eingefügt oder gelöscht werden, so ist dies sehr aufwändig und damit langsam. Einfüge- und Lösch-Operationen mitten im Vektor sind abhängig von der Position langsam oder schnell – im Mittel aber schlecht.
+ Beim Suchen nach einem Element im Vektor muss der Vektor von vorn nach hinten durchlaufen werden – d.h. die benötigte Suchzeit steigt linear zur Anzahl der Elemente im Vektor.
== Vektor erstellen:
Du kannst einen Vektor erstellen, indem du einfach den Datentyp angeben und ihn initialisierst. Zum 

Beispiel:
#boxed(```cpp
std::vector<int> numbers; // Erstellt einen leeren Vektor von Ganzzahlen
std::vector<std::string> names; // Erstellt einen leeren Vektor von Zeichenketten
```)
== Elemente hinzufügen:
Du kannst Elemente am Ende des Vektors mit der Funktion push_back() hinzufügen. push_back() akzeptiert ein Element als Argument und fügt es am Ende des Vektors hinzu:
#boxed(```cpp
std::vector<int> numbers;
numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);
```)
== Elemente zugreifen:
Du kannst auf die Elemente eines Vektors mithilfe des Indexoperators [] zugreifen. Beachte, dass der Index des ersten Elements 0 ist:
#boxed(```cpp
std::vector<int> numbers;

numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);

std::cout << "Erstes Element: " << numbers[0] << std::endl; // Ausgabe: 10
std::cout << "Zweites Element: " << numbers[1] << std::endl; // Ausgabe: 20
std::cout << "Drittes Element: " << numbers[2] << std::endl; // Ausgabe: 30
```)
Beachte, dass du auf ein Element mithilfe des Index zugreifen kannst, aber es wird nicht überprüft, ob der Index gültig ist. Du solltest sicherstellen, dass du nur auf gültige Indizes zugreifst, um undefiniertes Verhalten zu vermeiden.

== Vektor-Größe:
Du kannst die Anzahl der Elemente in einem Vektor mit der Funktion size() ermitteln. Die Funktion size() gibt die Anzahl der Elemente im Vektor als size_t zurück:
#boxed(```cpp
std::vector<int> numbers;

numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);

std::cout << "Anzahl der Elemente: " << numbers.size() << std::endl; // Ausgabe: 3
```)
== Vektor leeren:
Du kannst alle Elemente aus einem Vektor entfernen und ihn leeren, indem du die Funktion clear() verwendest:
#boxed(```cpp
std::vector<int> numbers;

numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);

numbers.clear(); // Vektor wird geleert

std::cout << "Anzahl der Elemente nach dem Leeren: " << numbers.size() << std::endl; // Ausgabe: 0
```)
== Vektor durchlaufen:
Du kannst alle Elemente in einem Vektor durchlaufen und auf sie zugreifen. Hier sind zwei gängige Methoden, um dies zu tun:

    Mit einer Schleife und dem Indexoperator []:
#boxed(```cpp
std::vector<int> numbers;

numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);

for (size_t i = 0; i < numbers.size(); ++i) {
    std::cout << numbers[i] << " ";
}
// Ausgabe: 10 20 30
```)
    Mit einer Range-basierten Schleife (C++11 und höher):
#boxed(```cpp
std::vector<int> numbers;

numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);

for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 20 30
```)
Die Range-basierte Schleife ist in der Regel bevorzugt, da sie weniger anfällig für Fehler ist und den Code lesbarer macht.

== Vektor mit Initialisierungsliste erstellen:
Du kannst auch einen Vektor mit einer Initialisierungsliste erstellen. Das ist besonders nützlich, wenn du den Vektor mit Anfangswerten initialisieren möchtest:
#boxed(```cpp
std::vector<int> numbers = {10, 20, 30};

for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 20 30
```)
== Weitere nützliche Funktionen:
Die std::vector-Klasse bietet viele nützliche Funktionen, um mit Vektoren zu arbeiten. Hier sind einige davon:
=== empty(): 
Überprüft, ob der Vektor leer ist und gibt true zurück, wenn er leer ist, andernfalls false.
#boxed(```cpp
std::vector<int> numbers;

if (numbers.empty()) {
    std::cout << "Der Vektor ist leer." << std::endl;
}
```)
=== pop_back(): 
Entfernt das letzte Element des Vektors.
#boxed(```cpp
std::vector<int> numbers = {10, 20, 30};

numbers.pop_back(); // Entfernt das letzte Element (30)

for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 20
```)
=== insert(): 
Fügt ein Element an einer bestimmten Position im Vektor ein.
#boxed(```cpp
std::vector<int> numbers = {10, 20, 30};

numbers.insert(numbers.begin() + 1, 15); // Fügt die Zahl 15 an der Position 1 ein

for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 15 20 30
```)
=== erase(): 
Entfernt ein oder mehrere Elemente aus dem Vektor.
#boxed(```cpp
std::vector<int> numbers = {10, 20, 30, 40, 50};

numbers.erase(numbers.begin() + 2); // Entfernt das Element an der Position 2 (Wert: 30)

for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 20 40 50
```)
=== resize(): 
Ändert die Größe des Vektors.
#boxed(```cpp
std::vector<int> numbers = {10, 20, 30};

numbers.resize(5); // Vergrößert den Vektor auf die Größe 5, fügt 2 zusätzliche Elemente hinzu

for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 20 30 0 0
```)
=== swap(): 
Vertauscht den Inhalt zweier Vektoren.
#boxed(```cpp
std::vector<int> numbers1 = {1, 2, 3};
std::vector<int> numbers2 = {10, 20, 30};

numbers1.swap(numbers2);

for (int num : numbers1) {
    std::cout << num << " ";
}
// Ausgabe: 10 20 30

for (int num : numbers2) {
    std::cout << num << " ";
}
// Ausgabe: 1 2 3
```)
Das sind einige der nützlichen Funktionen, die in der std::vector-Klasse verfügbar sind. Vektoren bieten eine flexible Möglichkeit, Daten in C++ zu verwalten und sie sind eine der am häufigsten verwendeten Container in der STL.

= Zusammenfassung
== Ein- und Ausgabe in C++:
=== Ausgabe mit std::cout:
Die std::cout-Funktion wird verwendet, um Daten auf der Konsole auszugeben:
#boxed(```cpp
#include <iostream>

int main() {
    std::cout << "Hallo, Welt!" << std::endl;
    return 0;
}
```)
=== Eingabe mit std::cin:
Die std::cin-Funktion wird verwendet, um Daten von der Konsole einzulesen:
#boxed(```cpp
#include <iostream>

int main() {
    int zahl;
    std::cout << "Geben Sie eine Zahl ein: ";
    std::cin >> zahl;
    std::cout << "Sie haben die Zahl " << zahl << " eingegeben." << std::endl;
    return 0;
}
```)
== Strings in C++:
Strings werden verwendet, um Zeichenketten in C++ zu speichern und zu manipulieren.
=== String erstellen:
Du kannst einen String erstellen, indem du den Datentyp std::string verwendest:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string text = "Hallo, Welt!";
    std::cout << text << std::endl;
    return 0;
}
```)
=== String-Verkettung:
Strings können mithilfe des +-Operators verkettet werden:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string vorname = "Max";
    std::string nachname = "Mustermann";
    std::string vollerName = vorname + " " + nachname;
    std::cout << "Voller Name: " << vollerName << std::endl;
    return 0;
}
```)
=== String-Länge:
Du kannst die Länge eines Strings mit der Funktion length() oder size() ermitteln:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string text = "Hallo, Welt!";
    std::cout << "Länge des Strings: " << text.length() << std::endl;
    return 0;
}
```)
=== String-Eingabe:
Du kannst auch Strings von der Konsole mit std::cin einlesen:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    std::string name;
    std::cout << "Geben Sie Ihren Namen ein: ";
    std::cin >> name;
    std::cout << "Hallo, " << name << "!" << std::endl;
    return 0;
}
```)
== Vektoren
Vektoren sind eine dynamische Datenstruktur in C++, die Teil der Standard Template Library (STL) ist. Sie erlauben das Speichern und Verwalten einer Liste von Elementen in C++.
=== Vektor-Definition:
Um Vektoren in C++ zu verwenden, musst du die vector-Header-Datei einbeziehen:
#boxed(```cpp
#include <iostream>
#include <vector>
```)
=== Vektor erstellen:
Du kannst einen Vektor erstellen, indem du den Datentyp angibst und ihn initialisierst:
#boxed(```cpp
std::vector<int> numbers; // Vektor von Ganzzahlen
std::vector<std::string> names; // Vektor von Zeichenketten
```)
=== Elemente hinzufügen:
Du kannst Elemente am Ende des Vektors mit push_back() hinzufügen:
#boxed(```cpp
numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);
```)
=== Elemente zugreifen:
Du kannst auf die Elemente eines Vektors mithilfe des Indexoperators [] zugreifen:
#boxed(```cpp
std::cout << "Erstes Element: " << numbers[0] << std::endl; // Ausgabe: 10
std::cout << "Zweites Element: " << numbers[1] << std::endl; // Ausgabe: 20
std::cout << "Drittes Element: " << numbers[2] << std::endl; // Ausgabe: 30
```)
=== Vektor-Größe:
Du kannst die Anzahl der Elemente in einem Vektor mit size() ermitteln:
#boxed(```cpp
std::cout << "Anzahl der Elemente: " << numbers.size() << std::endl; // Ausgabe: 3
```)
=== Vektor leeren:
Du kannst alle Elemente aus einem Vektor entfernen und ihn leeren mit clear():
#boxed(```cpp
numbers.clear(); // Vektor wird geleert
```)
=== Vektor durchlaufen:
Du kannst alle Elemente in einem Vektor durchlaufen und auf sie zugreifen:
#boxed(```cpp
for (int i = 0; i < numbers.size(); ++i) {
    std::cout << numbers[i] << " ";
}
// Ausgabe: 10 20 30
```)
Du kannst auch eine Range-basierte Schleife verwenden (C++11 und höher):
#boxed(```cpp
for (int num : numbers) {
    std::cout << num << " ";
}
// Ausgabe: 10 20 30
```)
=== Vektor mit Initialisierungsliste erstellen:
Du kannst auch einen Vektor mit einer Initialisierungsliste erstellen:
#boxed(```cpp
std::vector<int> numbers = {10, 20, 30};
```)
=== Weitere nützliche Funktionen:
Die std::vector-Klasse bietet viele weitere nützliche Funktionen wie empty(), pop_back(), insert(), erase(), resize() und swap(), um mit Vektoren zu arbeiten.
