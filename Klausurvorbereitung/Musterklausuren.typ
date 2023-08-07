// begin Styling
#set page(
 paper: "a4",
 margin: (x: 2.0cm, y: 2.0cm),
)
#set text(
 font: "Noto Sans",
 size: 11pt,
 lang: "de"
)
#set par(
 justify: true,
 linebreaks: "optimized",
 leading: 1.5em
)
// end Styling

#let boxed(term) = block(
 fill: luma(230),
 inset: 8pt,
 radius: 4pt,
 term
)
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)
= Musterklausuren
== Musterklausur 1
1. Welcher der folgenden Datentypen ist ein ganzzahliger Datentyp in C++?
a) int

b) double

c) string

d) bool

2. Was ist der Zweck des Präprozessors in C++?

a) Er übersetzt den Quellcode in ausführbaren Maschinencode.

b) Er verarbeitet den Quellcode vor der eigentlichen Kompilierung.

c) Er führt die Anweisungen im Hauptprogramm aus.

d) Er verwaltet den Speicherplatz für Variablen.

3. Welche der folgenden Aussagen über Container und Iteratoren in C++ ist wahr?

a) Container sind spezielle Funktionen zum Dateizugriff.

b) Iteratoren dienen dazu, Funktionen zu überladen.

c) Container sind Klassen, die mehrere Elemente speichern können.

d) Iteratoren sind Zeiger auf Funktionen.

4. Welche der folgenden Aussagen über Strings in C++ ist falsch?

a) Strings sind Zeichenketten, die aus einzelnen Zeichen bestehen.

b) Strings können mit dem +-Operator verkettet werden.

c) Strings können direkt mit dem >>-Operator eingelesen werden.

d) Strings haben eine variable Länge.

5. Was ist der Unterschied zwischen Referenzen und Pointern in C++?

a) Referenzen können nicht auf NULL zeigen, Pointer schon.

b) Referenzen können nicht als Funktionsargumente verwendet werden, Pointer schon.

c) Referenzen können nicht auf andere Variablen verweisen, Pointer schon.

d) Referenzen können nicht in Klassen verwendet werden, Pointer schon.

6. Erläutere den Unterschied zwischen std::cout und std::cin in C++.

7. Beschreibe, wie man in C++ eine Datei öffnet, den Inhalt liest und wieder schließt.

8. Finde den Fehler im folgenden C++-Code:
#boxed(```cpp
#include <iostream>

int main() {
    int x = 5;
    int y = 10;
    int sum;
    sum = x + y;
    std::cout << "Die Summe ist: " << sum << std::endl;
}```)

9. Was wird auf der Konsole ausgegeben?
#boxed(```cpp
#include <iostream>

int main() {
    int x = 5;
    int y = 10;
    int result = x * y;
    std::cout << "Das Ergebnis ist: " << result << std::endl;
    return 0;
}```)
10. Was wird auf der Konsole ausgegeben?
#boxed(```cpp
Copy code
#include <iostream>

void print_message() {
    std::cout << "Hallo, dies ist eine Funktion!" << std::endl;
}

int main() {
    std::cout << "Hallo, dies ist das Hauptprogramm!" << std::endl;
    print_message();
    return 0;
}```)
#pagebreak()
== Lösung von Musterklausur 1
1. a) int

2. b) Er verarbeitet den Quellcode vor der eigentlichen Kompilierung.

3. c) Container sind Klassen, die mehrere Elemente speichern können.

4. c) Strings können direkt mit dem >>-Operator eingelesen werden.

5. a) Referenzen können nicht auf NULL zeigen, Pointer schon.

6. std::cout wird verwendet, um Ausgaben auf der Konsole zu machen, während std::cin zur Eingabe von Daten von der Tastatur verwendet wird.

7. Beispiel für das Öffnen, Lesen und Schließen einer Datei in C++:

#boxed(```cpp
#include <iostream>
#include <fstream>

int main() {
    std::ifstream file;
    file.open("datei.txt");

    if (!file) {
        std::cerr << "Fehler beim Öffnen der Datei!" << std::endl;
        return 1;
    }

    std::string line;
    while (std::getline(file, line)) {
        std::cout << line << std::endl;
    }

    file.close();
    return 0;
}```)
8. Im Code gibt es keinen Fehler.

9. Das Programm gibt "Das Ergebnis ist: 50" aus.

10. Das Programm gibt folgende Ausgabe aus:

Hallo, dies ist das Hauptprogramm!

Hallo, dies ist eine Funktion!
#pagebreak()
== Musterklausur 2
1. Welcher Datentyp wird verwendet, um einzelne Zeichen in C++ zu repräsentieren?

a) int

b) char

c) string

d) double

2. Welche der folgenden Aussagen über Vektoren in C++ ist korrekt?

a) Vektoren können nur Elemente desselben Datentyps enthalten.

b) Die Größe eines Vektors kann während der Laufzeit nicht geändert werden.

c) Vektoren können nur Elemente am Ende hinzufügen oder entfernen.

d) Der Zugriff auf Elemente eines Vektors erfolgt immer über den Index 0.

3. Was ist der Unterschied zwischen einer Klassenvariablen und einer Instanzvariablen in C++?

a) Eine Klassenvariable ist privat, während eine Instanzvariable öffentlich ist.

b) Eine Klassenvariable wird mit static deklariert, während eine Instanzvariable dies nicht tut.

c) Eine Klassenvariable wird innerhalb der Klasse deklariert, während eine Instanzvariable außerhalb der Klasse deklariert wird.

d) Es gibt keinen Unterschied zwischen einer Klassenvariable und einer Instanzvariable.

4. Welche der folgenden Aussagen über Referenzen in C++ ist/sind korrekt?

a) Referenzen müssen bei der Initialisierung immer einen Wert zugewiesen bekommen.

b) Referenzen können nicht auf NULL zeigen.

c) Referenzen können im Laufe des Programms den zugewiesenen Wert ändern.

d) Referenzen sind eine Alternative zu Pointern in C++.

5. Welche der folgenden Aussagen über Vererbung in C++ ist/sind korrekt?

a) Eine Klasse kann nur von einer anderen Klasse abgeleitet werden.

b) Private Elemente der Basisklasse sind in der abgeleiteten Klasse zugänglich.

c) Mehrfachvererbung ist in C++ nicht erlaubt.

d) Die abgeleitete Klasse erbt alle Elemente (Methoden und Variablen) der Basisklasse.

6. Gegeben ist folgender C++-Code:
#boxed(```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    for (int i = 0; i <= numbers.size(); ++i) {
        std::cout << numbers[i] << " ";
    }

    return 0;
}```)
Welche Zeile enthält einen Fehler?

7. Gegeben ist folgender C++-Code:
#boxed(```cpp
#include <iostream>

int multiply(int x, int y) {
    if (y == 1) {
        return x;
    } else {
        return x + multiply(x, y - 1);
    }
}

int main() {
    int result = multiply(3, 4);
    std::cout << "Das Ergebnis ist: " << result << std::endl;
    return 0;
}```)
Was wird auf der Konsole ausgegeben?

8. Vervollständige den folgenden C++-Code, um eine Funktion zu implementieren, die prüft, ob eine Zahl eine Primzahl ist.
#boxed(```cpp
#include <iostream>

bool is_prime(int number) {
    if (number <= 1) {
        return false;
    }

    for (int i = 2; i <= ________; ++i) {
        if (number % i == 0) {
            return ________;
        }
    }

    return ________;
}

int main() {
    int number;
    std::cout << "Gib eine Zahl ein: ";
    std::cin >> number;

    if (is_prime(number)) {
        std::cout << number << " ist eine Primzahl." << std::endl;
    } else {
        std::cout << number << " ist keine Primzahl." << std::endl;
    }

    return 0;
}```)
9. Erläutere den Unterschied zwischen Referenzen und Pointern in C++.
#pagebreak()
== Lösungen zu Musterklausur 2
1. b) char
2. b) Die Größe eines Vektors kann während der Laufzeit nicht geändert werden.
3. b) Eine Klassenvariable wird mit static deklariert, während eine Instanzvariable dies nicht tut.
4. b) Referenzen können nicht auf NULL zeigen.

5. d) Die abgeleitete Klasse erbt alle Elemente (Methoden und Variablen) der Basisklasse.
Fehler im Quelltext finden:

6. Die Zeile mit dem Fehler ist: for (int i = 0; i <= numbers.size(); ++i).
Der Fehler besteht darin, dass der Index i auch die Größe des Vektors erreichen kann, was auf einen ungültigen Zugriff führt. Die Schleife sollte wie folgt korrigiert werden:
#boxed(```cpp
for (int i = 0; i < numbers.size(); ++i)```)

7. Das Programm gibt "Das Ergebnis ist: 12" aus.
8. Vervollständigen des Quelltexts:

#boxed(```cpp
#include <iostream>

bool is_prime(int number) {
    if (number <= 1) {
        return false;
    }

    for (int i = 2; i <= number / 2; ++i) {
        if (number % i == 0) {
            return false;
        }
    }

    return true;
}

int main() {
    int number;
    std::cout << "Gib eine Zahl ein: ";
    std::cin >> number;

    if (is_prime(number)) {
        std::cout << number << " ist eine Primzahl." << std::endl;
    } else {
        std::cout << number << " ist keine Primzahl." << std::endl;
    }

    return 0;
}```)

9. Eine mögliche Erklärung wäre: "Referenzen und Pointer sind beides Mechanismen, um auf Speicheradressen in C++ zuzugreifen. Der Hauptunterschied besteht darin, dass eine Referenz immer eine bestehende Variable referenzieren muss und nicht auf NULL zeigen kann, während ein Pointer auch auf NULL zeigen kann und beliebig auf andere Speicheradressen zeigen kann. Eine Referenz wird mit dem &-Operator deklariert, während ein Pointer mit dem `*`-Operator deklariert wird."
#pagebreak()
== Musterklausur 3
1. Welche der folgenden Aussagen ist korrekt?

a) Vektoren in C++ sind immer von fester Größe.

b) Strings können in C++ nicht verändert werden, sobald sie initialisiert wurden.

c) Referenzen sind in C++ nur eine andere Syntax für Zeiger.

d) Die Verwendung des Präprozessors ist in modernen C++-Programmen nicht mehr notwendig.

2. Welche der folgenden Aussagen über die Funktionen in C++ ist falsch?

a) Eine Funktion kann nur einen Rückgabetyp haben.

b) Eine Funktion kann mehrere Parameter haben.

c) Eine Funktion kann keine lokalen Variablen enthalten.

d) Eine Funktion kann überladen werden.

3. Was passiert, wenn ein C++-Programm auf eine Datei zugreifen möchte, die nicht existiert?

a) Das Programm wirft eine Ausnahme.

b) Das Programm erstellt automatisch die Datei.

c) Das Programm schließt ohne jegliche Aktion.

d) Das Programm erstellt die Datei und schreibt einen Standardtext hinein.

4. Welche der folgenden Container-Typen in C++ bieten Zugriff über den Index?

a) std::list

b) std::map

c) std::vector

d) std::set

5. Welche der folgenden Optionen beschreibt die richtige Reihenfolge der Schritte beim Kompilieren eines C++-Programms?

a) Preprocessing, Linking, Compiling

b) Compiling, Linking, Preprocessing

c) Linking, Compiling, Preprocessing

d) Compiling, Preprocessing, Linking

6. Welche der folgenden Methoden sollte verwendet werden, um den Inhalt eines C++-Strings zu ändern?

a) append()

b) insert()

c) at()

d) replace()

7. Erklären Sie den Unterschied zwischen einer Referenz und einem Zeiger in C++ und nennen Sie eine Situation, in der es sinnvoller ist, eine Referenz zu verwenden.

8. Erläutern Sie den Zweck des Präprozessors in C++. Geben Sie ein Beispiel für eine Direktive des Präprozessors an und erklären Sie, wie sie funktioniert.

9. Finden Sie den Fehler im folgenden C++-Code und korrigieren Sie ihn:
#boxed(```cpp
#include <iostream>

int main() {
    int x = 5;
    int y = 10;
    int sum = x + y;
    std::cout << "Die Summe ist: " << sum << std::endl;
    return 0;
}```)

10. Was wird das folgende C++-Programm auf der Konsole ausgeben?
#boxed(```cpp
#include <iostream>

int main() {
    for (int i = 0; i < 5; i++) {
        std::cout << i << " ";
    }
    return 0;
}```)

11. Vervollständigen Sie den folgenden C++-Code, um die Funktion calculateAverage zu implementieren, die den Durchschnitt der Werte im übergebenen Array berechnet und zurückgibt:
#boxed(```cpp
#include <iostream>

double calculateAverage(int arr[], int size) {
    // Hier fehlt der Code zur Berechnung des Durchschnitts
}

int main() {
    int values[] = {5, 10, 15, 20, 25};
    int size = sizeof(values) / sizeof(values[0]);
    double average = calculateAverage(values, size);
    std::cout << "Der Durchschnitt ist: " << average << std::endl;
    return 0;
}```)
Hinweis: In dieser Aufgabe können Sie die Funktion so implementieren, dass sie eine Gleitkommazahl (double) zurückgibt.
#pagebreak()
== Lösungen zu Musterklausur 3
1. Welche der folgenden Aussagen ist korrekt?
Antwort: c) Referenzen sind in C++ nur eine andere Syntax für Zeiger.

2. Welche der folgenden Aussagen über die Funktionen in C++ ist falsch?
Antwort: a) Eine Funktion kann nur einen Rückgabetyp haben.

3. Was passiert, wenn ein C++-Programm auf eine Datei zugreifen möchte, die nicht existiert?
Antwort: c) Das Programm schließt ohne jegliche Aktion.

4. Welche der folgenden Container-Typen in C++ bieten Zugriff über den Index?
Antwort: c) std::vector

5. Welche der folgenden Optionen beschreibt die richtige Reihenfolge der Schritte beim Kompilieren eines C++-Programms?
Antwort: b) Compiling, Linking, Preprocessing

6. Welche der folgenden Methoden sollte verwendet werden, um den Inhalt eines C++-Strings zu ändern?
Antwort: d) replace()

7. Erklären Sie den Unterschied zwischen einer Referenz und einem Zeiger in C++ und nennen Sie eine Situation, in der es sinnvoller ist, eine Referenz zu verwenden.

Antwort: Ein Zeiger ist eine Variable, die die Adresse einer anderen Variable speichert. Durch Dereferenzierung des Zeigers kann auf den Wert der Variablen zugegriffen werden. Eine Referenz ist eine alternative Bezeichnung für eine vorhandene Variable und kein eigenständiges Objekt. Bei Verwendung von Referenzen ist kein spezieller Dereferenzierungsoperator erforderlich, da die Referenz direkt auf die zugrunde liegende Variable verweist.

Eine Situation, in der es sinnvoller ist, eine Referenz zu verwenden, ist beispielsweise bei der Übergabe von Argumenten an Funktionen. Durch die Verwendung von Referenzen können Funktionen direkt auf die Originalvariablen zugreifen und sie möglicherweise ändern, ohne dass eine Kopie der Variablen erstellt werden muss.

8. Erläutern Sie den Zweck des Präprozessors in C++. Geben Sie ein Beispiel für eine Direktive des Präprozessors an und erklären Sie, wie sie funktioniert.

Antwort: Der Präprozessor in C++ ist eine Vorverarbeitungsstufe, die den Quellcode vor dem eigentlichen Kompilieren bearbeitet. Er führt Direktiven aus, die mit einem Hash-Symbol (`#`) beginnen. Eine häufig verwendete Direktive ist `#include`, die Header-Dateien in den Quellcode einfügt.

Beispiel:

#boxed(```cpp
#include <iostream>```)
In diesem Beispiel wird die Header-Datei <iostream> in den Quellcode eingefügt. Diese Datei enthält Definitionen für die Ein- und Ausgabefunktionen in C++, wie z.B. std::cout und std::cin. Der Präprozessor ersetzt die `#include`-Direktive durch den tatsächlichen Inhalt der Header-Datei, bevor der eigentliche Kompilierungsprozess beginnt.

9. Finden Sie den Fehler im folgenden C++-Code und korrigieren Sie ihn:

#boxed(```cpp
#include <iostream>

int main() {
    int x = 5;
    int y = 10;
    int sum = x + y;
    std::cout << "Die Summe ist: " << sum << std::endl;
    return 0;
}```)
Antwort: Der Code ist fehlerfrei.

10. Was wird das folgende C++-Programm auf der Konsole ausgeben?
#boxed(```cpp
#include <iostream>

int main() {
    for (int i = 0; i < 5; i++) {
        std::cout << i << " ";
    }
    return 0;
}```)
Antwort: Das Programm gibt die Zahlen von 0 bis 4 (einschließlich) auf der Konsole aus: 0 1 2 3 4

11. Vervollständigen Sie den folgenden C++-Code, um die Funktion calculateAverage zu implementieren, die den Durchschnitt der Werte im übergebenen Array berechnet und zurückgibt:
#boxed(```cpp
#include <iostream>

double calculateAverage(int arr[], int size) {
    double sum = 0.0;
    for (int i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum / size;
}

int main() {
    int values[] = {5, 10, 15, 20, 25};
    int size = sizeof(values) / sizeof(values[0]);
    double average = calculateAverage(values, size);
    std::cout << "Der Durchschnitt ist: " << average << std::endl;
    return 0;
}```)
#pagebreak()
== Musterklausur 4
1. Welche der folgenden Aussagen ist korrekt?

a) C++ erlaubt Mehrfachvererbung, bei der eine Klasse von mehreren Basisklassen abgeleitet wird.

b) C++ erlaubt nur Einfachvererbung, bei der eine Klasse von einer einzigen Basisklasse abgeleitet wird.

c) C++ erlaubt keine Vererbung.

d) C++ erlaubt nur die Vererbung von eingebauten Datentypen.

2. Was ist der Unterschied zwischen std::vector und std::list in C++?

a) std::vector ist ein dynamisches Array, während std::list eine doppelt verkettete Liste ist.

b) std::vector ist eine doppelt verkettete Liste, während std::list ein dynamisches Array ist.

c) std::vector kann keine Elemente hinzufügen oder entfernen, während std::list dies kann.

d) Es gibt keinen Unterschied zwischen std::vector und std::list.

3. Welche der folgenden C++-Funktionen wird verwendet, um den Inhalt einer Datei in einen std::string zu lesen?

a) std::ifstream

b) std::ofstream

c) std::getline()

d) std::readfile()

4. Welche der folgenden Aussagen zur Funktion einer Kopierkonstruktor in C++ ist richtig?

a) Der Kopierkonstruktor wird automatisch von C++ generiert, wenn keine eigene Implementierung vorhanden ist.

b) Der Kopierkonstruktor wird verwendet, um eine neue Instanz einer Klasse zu erstellen, die eine exakte Kopie einer vorhandenen Instanz ist.

c) Der Kopierkonstruktor wird verwendet, um den Speicher einer Variablen freizugeben, wenn sie außerhalb ihres Gültigkeitsbereichs geht.

d) Der Kopierkonstruktor ist dasselbe wie der Zuweisungsoperator =.

5. Welche der folgenden C++-Konzepte ermöglichen das Verstecken von Klassenmembern vor dem Zugriff durch externe Codeabschnitte?

a) public

b) private

c) protected

d) static

6. Erklären Sie den Unterschied zwischen dem Präprozessor-Direktiv `#define` und einer Konstanten im C++-Code, die mit const deklariert wurde.

7. Erklären Sie den Unterschied zwischen einer Funktion und einem Methodenaufruf in C++.

8. Finden Sie den Fehler im folgenden C++-Code und korrigieren Sie ihn:
#boxed(```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> numbers = {1, 2, 3, 4, 5};
    std::cout << "Die Zahlen: ";
    for (int i = 0; i <= numbers.size(); i++) {
        std::cout << numbers[i] << " ";
    }
    std::cout << std::endl;
    return 0;
}```)

9. Was wird das folgende C++-Programm auf der Konsole ausgeben?
#boxed(```cpp
#include <iostream>

int add(int x, int y) {
    return x + y;
}

int main() {
    int a = 5;
    int b = 10;
    int result = add(a, b);
    std::cout << "Das Ergebnis ist: " << result << std::endl;
    return 0;
}```)

10. Vervollständigen Sie den folgenden C++-Code, um eine einfache Klasse Person zu implementieren, die einen Namen und ein Alter speichert, und eine Methode printInfo, die die Informationen auf der Konsole ausgibt:
#boxed(```cpp
#include <iostream>
#include <string>

class Person {
private:
    // Hier fehlen die Klassendaten (Name und Alter)

public:
    // Hier fehlt der Konstruktor

    // Hier fehlt die Methode printInfo
};

int main() {
    Person person("Max Mustermann", 30);
    person.printInfo();
    return 0;
}```)
Hinweis: In dieser Aufgabe können Sie den Konstruktor und die Methode printInfo in der Klasse Person implementieren, um die gewünschte Funktionalität zu erreichen.
#pagebreak()
== Lösung zu Musterklausur 4
1. Welche der folgenden Aussagen ist korrekt?
Antwort: a) C++ erlaubt Mehrfachvererbung, bei der eine Klasse von mehreren Basisklassen abgeleitet wird.

2. Was ist der Unterschied zwischen std::vector und std::list in C++?
Antwort: a) std::vector ist ein dynamisches Array, während std::list eine doppelt verkettete Liste ist.

3. Welche der folgenden C++-Funktionen wird verwendet, um den Inhalt einer Datei in einen std::string zu lesen?
Antwort: c) std::getline()

4. Welche der folgenden Aussagen zur Funktion einer Kopierkonstruktor in C++ ist richtig?
Antwort: b) Der Kopierkonstruktor wird verwendet, um eine neue Instanz einer Klasse zu erstellen, die eine exakte Kopie einer vorhandenen Instanz ist.

5. Welche der folgenden C++-Konzepte ermöglichen das Verstecken von Klassenmembern vor dem Zugriff durch externe Codeabschnitte?
Antwort: b) private

6. Erklären Sie den Unterschied zwischen dem Präprozessor-Direktiv `#define`und einer Konstanten im C++-Code, die mit const deklariert wurde.

Antwort: `#define` ist eine Präprozessor-Direktive, die verwendet wird, um einen Textmakro zu definieren. Es ersetzt alle Vorkommen des Makros im Quellcode durch den angegebenen Wert oder Ausdruck. Es ist kein echter Speicherplatz für die Werte reserviert, und der Textaustausch erfolgt während der Vorverarbeitung.

Eine Konstante, die mit const deklariert wurde, ist dagegen ein echter Wert, der im Speicher gespeichert wird. Es kann sich um einen primitiven Datentyp handeln oder auch um einen benutzerdefinierten Datentyp (z. B. eine Konstante Klasse), der nicht verändert werden kann. Konstanten mit const bieten Typsicherheit und ermöglichen Compiler-Optimierungen.

7. Erklären Sie den Unterschied zwischen einer Funktion und einem Methodenaufruf in C++.

Antwort: In C++ bezieht sich eine "Funktion" auf einen eigenständigen Codeblock, der eine bestimmte Aufgabe erfüllt. Funktionen können unabhängig von einer Klasse existieren und aufgerufen werden.

Ein "Methodenaufruf" hingegen bezieht sich auf den Aufruf einer Funktion, die einer Klasse angehört. Methoden sind Funktionen, die innerhalb einer Klasse definiert wurden und auf die Daten und Mitglieder der Klasse zugreifen können. Der Methodenaufruf erfolgt normalerweise über ein Objekt der Klasse.

8. Finden Sie den Fehler im folgenden C++-Code und korrigieren Sie ihn:

#boxed(```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> numbers = {1, 2, 3, 4, 5};
    std::cout << "Die Zahlen: ";
    for (int i = 0; i < numbers.size(); i++) { // Änderung von <= zu <
        std::cout << numbers[i] << " ";
    }
    std::cout << std::endl;
    return 0;
}```)

9. Was wird das folgende C++-Programm auf der Konsole ausgeben?

#boxed(```cpp
#include <iostream>

int add(int x, int y) {
    return x + y;
}

int main() {
    int a = 5;
    int b = 10;
    int result = add(a, b);
    std::cout << "Das Ergebnis ist: " << result << std::endl;
    return 0;
}```)
Antwort: Das Programm wird "Das Ergebnis ist: 15" auf der Konsole ausgeben.

10. Vervollständigen Sie den folgenden C++-Code, um eine einfache Klasse Person zu implementieren, die einen Namen und ein Alter speichert, und eine Methode printInfo, die die Informationen auf der Konsole ausgibt:
#boxed(```cpp
#include <iostream>
#include <string>

class Person {
private:
    std::string name;
    int age;

public:
    Person(const std::string& n, int a) : name(n), age(a) {}

    void printInfo() {
        std::cout << "Name: " << name << ", Alter: " << age << std::endl;
    }
};

int main() {
    Person person("Max Mustermann", 30);
    person.printInfo();
    return 0;
}```)
