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
= Fragen
== Einheit 1
=== Multiple-Choice
*Frage 1*: Welches Schlüsselwort ermöglicht die automatische Typ-Deduktion einer Variablen in C++?
+ int
+ auto
+ var
+ type

*Frage 2*: Welche der folgenden Schleifen führt den Codeblock mindestens einmal aus, bevor die Bedingung überprüft wird?
+ for-Schleife
+ while-Schleife
+ do-while-Schleife
+ switch-Anweisung

*Frage 3*: Was ist der Zweck einer const-Variablen in C++?
+ Sie ist eine Variable, die den Wert ändern kann.
+ Sie ist eine Variable, die den Speicherplatz nicht belegt.
+ Sie ist eine Variable, die während der Programmausführung nicht geändert werden kann.
+ Sie ist eine Variable, die nur in Funktionen verwendet werden kann.

*Frage 4*: Welche der folgenden Operatoren führt eine Ganzzahldivision durch?
+ \+
+ \-
+ \*
+ \/

*Frage 5*: Wie deklariert man eine globale Variable in C++?
+ Durch Eingabe des global-Schlüsselworts vor dem Variablennamen.
+ Durch Deklaration innerhalb einer Funktion.
+ Durch Deklaration mit dem global-Attribut.
+ Durch Deklaration außerhalb aller Funktionen.

*Frage 6*: Was ist der Unterschied zwischen einer Initialisierung und einer Deklaration einer Variablen in C++?
+ Es gibt keinen Unterschied; beide Begriffe werden synonym verwendet.
+ Eine Initialisierung setzt den Wert einer Variablen, während eine Deklaration ihren Datentyp angibt.
+ Eine Deklaration gibt einer Variablen einen Namen, während eine Initialisierung ihren Speicherplatz reserviert.
+ Eine Initialisierung erfolgt mit = und einer Konstante, während eine Deklaration das var-Schlüsselwort verwendet.

*Frage 7*: Welche der folgenden Aussagen zum Schlüsselwort const in C++ ist korrekt?
+ Eine const-Variable kann während der Programmausführung nicht geändert werden.
+ Das Schlüsselwort const wird verwendet, um einen Datentyp zu definieren.
+ Eine const-Variable kann nur in Funktionen, aber nicht global, verwendet werden.
+ Eine const-Variable muss beim Deklarieren sofort initialisiert werden.

*Frage 8*: Welches der folgenden Schlüsselwörter in C++ wird verwendet, um die Schleifensteuerung vorzeitig zu beenden und zur nächsten Schleife oder zum Ende der Schleife zu springen?
+ continue
+ exit
+ break
+ return

*Frage 9*: Welche der folgenden Aussagen über die for-Schleife in C++ ist falsch?
+ Die for-Schleife kann nicht zum Durchlaufen von Arrays verwendet werden.
+ Die for-Schleife hat einen Initialisierungs-, einen Bedingungs- und einen Inkrementierungsteil.
+ Der Initialisierungsteil einer for-Schleife wird einmal ausgeführt, bevor die Schleife beginnt.
+ Die for-Schleife wird verwendet, wenn die Anzahl der Schleifendurchläufe bekannt ist.

*Frage 10*: Was ist der Zweck der do-while-Schleife im Vergleich zur while-Schleife?
+ Die do-while-Schleife wird einmal ausgeführt, bevor die Bedingung überprüft wird, während die while-Schleife dies nicht tut.
+ Die do-while-Schleife ist effizienter als die while-Schleife.
+ Die do-while-Schleife kann nicht für Schleifen verwendet werden, die mehr als 10 Mal wiederholt werden sollen.
+ Es gibt keinen Unterschied zwischen der do-while- und der while-Schleife.

*Antworten*:

+ 2) auto
+  3) do-while-Schleife
+  3) Sie ist eine Variable, die während der Programmausführung nicht geändert werden kann.
+  4) \/
+  5) Durch Deklaration außerhalb aller Funktionen.
+  2) Eine Initialisierung setzt den Wert einer Variablen, während eine Deklaration ihren Datentyp angibt.
+  1) Eine const-Variable kann während der Programmausführung nicht geändert werden.
+  3) break
+  1) Die for-Schleife kann nicht zum Durchlaufen von Arrays verwendet werden.
+  1) Die do-while-Schleife wird einmal ausgeführt, bevor die Bedingung überprüft wird, während die while-Schleife dies nicht tut.

=== Erklärungen
+ Erkläre den Unterschied zwischen den Datentypen float und double in C++.
+ Erkläre, wie die automatische Typ-Deduktion mit dem Schlüsselwort auto funktioniert und wann sie in C++ verwendet wird.
+ Erkläre den Unterschied zwischen lokalen und globalen Variablen in C++ und wann es sinnvoll ist, welche zu verwenden.
+ Erkläre den Zweck der const-Variablen in C++ und wann sie in einem Programm nützlich sind.
+ Erkläre, wie die for-Schleife in C++ funktioniert und gebe ein Beispiel für ihre Verwendung.
+ Erkläre, wie die while-Schleife in C++ funktioniert und gebe ein Beispiel für ihre Verwendung.
+ Erkläre den Unterschied zwischen der do-while-Schleife und der while-Schleife in C++ und wann es sinnvoll ist, welche zu verwenden.
+ Erkläre den Zweck der switch-Anweisung in C++ und gebe ein Beispiel für ihre Verwendung.
+ Erkläre, wie break und continue in C++ verwendet werden und was sie in einer Schleife bewirken.
+ Erkläre, wie man eine globale Variable in C++ deklariert und warum es wichtig ist, sie richtig zu verwenden.

*Antworten*:

+ float wird für Gleitkommazahlen mit einfacher Genauigkeit verwendet, während double für Gleitkommazahlen mit doppelter Genauigkeit verwendet wird. double bietet mehr Genauigkeit als float.
+ Die automatische Typ-Deduktion mit auto erlaubt es dem Compiler, den Datentyp einer Variablen anhand ihres zugewiesenen Werts automatisch zu bestimmen. Es wird verwendet, um den Code lesbarer und flexibler zu gestalten, insbesondere bei der Verwendung von komplexen oder generischen Datentypen.
+ Lokale Variablen werden innerhalb eines Codeblocks deklariert und sind nur in diesem Codeblock sichtbar. Globale Variablen werden außerhalb von Funktionen deklariert und sind im gesamten Programm sichtbar. Lokale Variablen werden verwendet, wenn die Variable nur in einem begrenzten Bereich gültig sein soll, während globale Variablen verwendet werden, wenn die Variable von verschiedenen Teilen des Programms aus zugänglich sein muss.
+ const-Variablen sind Variablen, deren Wert während der Programmausführung nicht geändert werden kann. Sie werden verwendet, um Konstanten zu definieren oder um sicherzustellen, dass ein Wert nicht versehentlich geändert wird.
+ Die for-Schleife in C++ besteht aus einem Initialisierungs-, einem Bedingungs- und einem Inkrementierungsteil. Der Initialisierungsteil wird einmalig ausgeführt, bevor die Schleife beginnt. Der Bedingungsteil wird vor jedem Schleifendurchlauf überprüft, und der Inkrementierungsteil wird nach jedem Schleifendurchlauf ausgeführt.
+ Die while-Schleife wird verwendet, um einen Codeblock auszuführen, solange eine bestimmte Bedingung wahr ist. Bevor der Codeblock ausgeführt wird, wird die Bedingung überprüft, und wenn sie wahr ist, wird der Codeblock ausgeführt.
+ Die do-while-Schleife wird mindestens einmal ausgeführt, bevor die Bedingung überprüft wird, während die while-Schleife dies nicht tut. Dies macht do-while nützlich, wenn du sicherstellen möchtest, dass der Codeblock mindestens einmal ausgeführt wird, unabhängig davon, ob die Bedingung am Anfang wahr ist oder nicht.
+ Die switch-Anweisung in C++ ermöglicht eine Auswahl zwischen mehreren möglichen Werten einer Variablen. Sie verwendet case-Blöcke, um zu entscheiden, welcher Codeblock ausgeführt wird, basierend auf dem Wert der Variable.
+ break wird in einer Schleife oder einer switch-Anweisung verwendet, um die Schleife vorzeitig zu beenden oder den Codeblock der switch-Anweisung zu verlassen. continue wird verwendet, um den aktuellen Schleifendurchlauf zu beenden und zum nächsten Schleifendurchlauf zu springen.
+ Eine globale Variable in C++ wird außerhalb aller Funktionen deklariert. Es ist wichtig, globale Variablen sorgfältig zu verwenden, da sie überall im Programm zugänglich sind und Änderungen an globalen Variablen unvorhersehbare Auswirkungen auf andere Teile des Programms haben können. In größeren Programmen sollten globale Variablen auf ein Minimum beschränkt werden und stattdessen lokale Variablen bevorzugt werden.
== Einheit 2
=== Multiple-Choice Fragen
*Frage 1:* Was ist die richtige Art und Weise, ein Element zum Ende eines Vektors hinzuzufügen?
+ numbers.add(42);
+ numbers.push_back(42);
+ numbers.insert(42);
+ numbers.append(42);
*Frage 2:* Wie erhältst du die Anzahl der Elemente in einem Vektor?
+ numbers.size();
+ numbers.length();
+ numbers.count();
+ numbers.elements();
*Frage 3:* Welche Funktion wird verwendet, um Daten auf der Konsole auszugeben?
+ std::print();
+ std::out();
+ std::cout();
+ std::write();
*Frage 4:* Wie liest du eine Ganzzahl von der Konsole ein?
+ std::input();
+ std::cin();
+ std::read();
+ std::get();
*Frage 5:* Wie erstellst du einen String in C++?
+ std::string name = "Max";
+ string name = 'Max';
+ String name = "Max";
+ str name = "Max";
*Frage 6:* Welche Funktion wird verwendet, um die Länge eines Strings zu ermitteln?
+ text.length();
+ text.count();
+ text.size();
+ text.length();
*Frage 7*: Was ist der Unterschied zwischen std::cin und std::getline in C++?
+ std::cin liest nur einzelne Zeichen ein, während std::getline eine ganze Zeile einliest.
+ Es gibt keinen Unterschied, beide Funktionen haben die gleiche Funktionalität.
+ std::cin liest Zeichenketten ein, während std::getline nur einzelne Zeichen einliest.
+ std::getline liest nur einzelne Zeichen ein, während std::cin eine ganze Zeile einliest.
*Frage 8*: Welche Funktion wird verwendet, um einen String in einen Integer umzuwandeln?
+ std::stoi()
+ std::to_int()
+ std::string_to_int()
+ std::string::to_int()
*Frage 9*: Was passiert, wenn std::getline einen leeren String liest?
+ Es wird eine Ausnahme (Exception) ausgelöst.
+ Der eingelesene String wird auf "NULL" gesetzt.
+ Der eingelesene String wird ein leeres Zeichenkettenobjekt.
+ Es wird ein Zeichen für das Ende der Datei (EOF) zurückgegeben.
*Frage 10*: Welche Funktion wird verwendet, um eine Zeichenkette an eine andere anzuhängen?
+ append()
+ concat()
+ add()
+ attach()
*Frage 11*: Was ist die Ausgabe des folgenden Codes?
#boxed(```cpp

#include <iostream>
#include <vector>

int main() {
    std::vector<int> numbers = {1, 2, 3, 4, 5};
    numbers.erase(numbers.begin() + 2);
    for (int num : numbers) {
        std::cout << num << " ";
    }
    return 0;
}```)
+ 1 2 3 4 5
+ 1 2 4 5
+ 1 2 3 5
+ Es gibt einen Kompilierungsfehler.
*Frage 12*: Was ist die korrekte Art, eine Datei zum Schreiben zu öffnen?
+ std::file_output file("daten.txt");
+ std::file_open file("daten.txt", std::ios::write);
+ std::ofstream file("daten.txt");
+ std::file_open("daten.txt", std::ios::write);

*Antworten:*

+ 2) numbers.push_back(42);
+ 1) numbers.size();
+ 3) std::cout();
+ 2) std::cin();
+ 1) std::string name = "Max";
+ 1) text.length();
+ 1) std::cin liest nur einzelne Zeichen ein, während std::getline eine ganze Zeile einliest.
+ 1) std::stoi()
+ 3) Der eingelesene String wird ein leeres Zeichenkettenobjekt.
+ 1) append()
+ 2) 1 2 4 5
+ 3) std::ofstream file("daten.txt");
=== Erklärung
*Frage 1*: Erkläre den Unterschied zwischen einer for-Schleife und einer while-Schleife in C++. Wann sollte man welche Schleife verwenden?
*Frage 2*: Wie liest man mehrere Daten aus einer Zeile mit std::cin in C++? Beschreibe den Vorgang und gib ein Beispiel an.
*Frage 3*: Erläutere die Verwendung von Iteratoren in C++ Vektoren. Wie durchläuft man einen Vektor mithilfe von Iteratoren und was sind die Vorteile dieses Ansatzes?
*Frage 4*: Was sind C++ Stringstreams und wie werden sie verwendet? Gebe ein Beispiel, wie man C++ Stringstreams benutzt, um Daten aus einem String zu extrahieren.
*Frage 5*: Erkläre den Unterschied zwischen einer std::ifstream und einer std::ofstream in C++. Wofür werden sie verwendet und wie öffnet man eine Datei zum Lesen bzw. Schreiben?
*Frage 6*: Wie kann man in C++ eine Funktion erstellen, die eine Variable als Referenz übernimmt und was sind die Vorteile einer solchen Referenzparameter-Funktion?

*Antworten*

*Frage 1*:
Eine for-Schleife wird verwendet, wenn die Anzahl der Schleifendurchläufe im Voraus bekannt ist oder wenn man eine bestimmte Anzahl von Wiederholungen benötigt. Die for-Schleife besteht aus einer Initialisierung, einer Bedingung und einer Aktualisierung.
Eine while-Schleife wird verwendet, wenn die Anzahl der Schleifendurchläufe nicht im Voraus bekannt ist oder wenn die Schleife abhängig von einer Bedingung ausgeführt werden soll. Die while-Schleife besteht nur aus einer Bedingung.

*Frage 2*:
Um mehrere Daten aus einer Zeile mit std::cin in C++ einzulesen, kann man den Eingabestrom std::cin mit >> und std::getline kombinieren. Mit >> können einzelne Daten wie Ganzzahlen oder Gleitkommazahlen eingelesen werden, während std::getline verwendet wird, um den Rest der Zeile einzulesen, einschließlich Leerzeichen.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <string>

int main() {
    int num;
    std::string text;

    std::cout << "Geben Sie eine Zahl und einen Text ein: ";
    std::cin >> num;
    std::getline(std::cin, text);

    std::cout << "Zahl: " << num << std::endl;
    std::cout << "Text: " << text << std::endl;

    return 0;
}```)
*Frage 3*:
Iteratoren werden in C++ Vektoren verwendet, um auf die Elemente des Vektors zuzugreifen und den Vektor zu durchlaufen. Ein Iterator ist ein Zeiger auf ein Element im Vektor, der es erlaubt, auf das aktuelle Element zuzugreifen und zum nächsten Element zu gehen.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    // Durchlaufen des Vektors mit einem Iterator
    for (std::vector<int>::iterator it = numbers.begin(); it != numbers.end(); ++it) {
        std::cout << *it << " ";
    }
    // Ausgabe: 1 2 3 4 5

    return 0;
}```)
Der Vorteil von Iteratoren besteht darin, dass sie in Kombination mit verschiedenen Container-Typen (wie Vektoren, Listen, Maps usw.) verwendet werden können, ohne die Schleifenlogik ändern zu müssen.

*Frage 4*:
C++ Stringstreams (std::stringstream) sind Streams, die zum Lesen und Schreiben von Zeichenketten verwendet werden. Sie ermöglichen es, Daten in einen String zu schreiben und aus einem String zu lesen, als ob sie mit std::cin und std::cout arbeiten würden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <sstream>
#include <string>

int main() {
    std::string data = "42 3.14 Hallo";
    std::istringstream stream(data);

    int num;
    double decimal;
    std::string text;

    stream >> num >> decimal >> text;

    std::cout << "Zahl: " << num << std::endl;
    std::cout << "Dezimalzahl: " << decimal << std::endl;
    std::cout << "Text: " << text << std::endl;

    return 0;
}```)
*Frage 5*:
std::ifstream wird verwendet, um eine Datei zum Lesen zu öffnen, während std::ofstream verwendet wird, um eine Datei zum Schreiben zu öffnen.

Öffnen einer Datei zum Lesen:
#boxed(```cpp
#include <iostream>
#include <fstream>

int main() {
    std::ifstream file("datei.txt");
    if (file.is_open()) {
        // Datei erfolgreich geöffnet, hier können Daten gelesen werden
    } else {
        std::cout << "Datei konnte nicht geöffnet werden." << std::endl;
    }
    return 0;
}```)

Öffnen einer Datei zum Schreiben:
#boxed(```cpp
#include <iostream>
#include <fstream>

int main() {
    std::ofstream file("ausgabe.txt");
    if (file.is_open()) {
        // Datei erfolgreich geöffnet, hier können Daten geschrieben werden
    } else {
        std::cout << "Datei konnte nicht geöffnet werden." << std::endl;
    }
    return 0;
}```)
Frage 6:
In C++ kann man eine Funktion erstellen, die eine Variable als Referenz übernimmt, indem man einen Referenzparameter verwendet. Ein Referenzparameter wird mit einem & vor dem Datentyp deklariert.

Vorteile einer Referenzparameter-Funktion:
- Eine Referenzparameter-Funktion kann den Wert einer Variablen ändern, die von außerhalb der Funktion übergeben wird.
- Durch die Verwendung von Referenzen kann man unnötige Kopien von Daten vermeiden, was die Performance verbessert.

Beispiel:
#boxed(```cpp
#include <iostream>

void addOne(int &num) {
    num += 1;
}

int main() {
    int number = 5;
    std::cout << "Vor der Funktion: " << number << std::endl; // Ausgabe: 5

    addOne(number);
    std::cout << "Nach der Funktion: " << number << std::endl; // Ausgabe: 6

    return 0;
}```)

In diesem Beispiel wird die Funktion addOne erstellt, die eine Referenz auf eine Ganzzahl als Parameter übernimmt. Die Funktion erhöht den Wert der übergebenen Variablen um 1, und da es sich um eine Referenz handelt, wird der Wert der ursprünglichen Variable number außerhalb der Funktion geändert. Dadurch wird der Wert von number nach dem Aufruf der Funktion auf 6 geändert.

Die Verwendung von Referenzparametern kann sehr nützlich sein, um Änderungen an Variablen in Funktionen vorzunehmen und Kopien von Daten zu vermeiden.
== Einheit 3
=== Multiple Choice
*Frage 1*: Was ist der Hauptunterschied zwischen C++-Arrays und Vektoren in der STL?
+ C++-Arrays können zur Laufzeit ihre Größe ändern, während Vektoren eine feste Größe haben.
+ Vektoren können Duplikate von Elementen speichern, während C++-Arrays nur eindeutige Elemente erlauben.
+ C++-Arrays sind statische Container, während Vektoren dynamische Container sind.
+ Vektoren können nur Elemente vom Typ int speichern, während C++-Arrays verschiedene Datentypen unterstützen.

*Frage 2*: Welche Header-Datei muss in C++ inkludiert werden, um Vektoren zu verwenden?
+ `<vector>`
+ `<array>`
+ `<list>`
+ `<set>`

*Frage 3*: Was ist ein Iterator in C++?
+ Ein Iterator ist ein Zeiger auf ein Element in einem C++-Array.
+ Ein Iterator ist ein Zeiger auf eine Funktion in einem C++-Programm.
+ Ein Iterator ist ein Objekt, das es ermöglicht, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen.
+ Ein Iterator ist eine Art Schleife in C++, die durch eine Bedingung gesteuert wird.

*Frage 4*: Wie kann auf den Wert eines Elements, auf das ein Iterator zeigt, zugegriffen werden?
+ Durch die Verwendung von (`*it`)
+ Durch die Verwendung von it.value()
+ Durch die Verwendung von it.element()
+ Durch die Verwendung von it->value

*Frage 5*: Welche Container-Klasse in der STL ermöglicht eine schnelle Einfügung und Löschung von Elementen am Anfang, am Ende oder innerhalb der Liste?
+ Vector
+ Map
+ List
+ Set

*Frage 6*: Welche Methode in einem Set in der STL überprüft, ob ein bestimmtes Element vorhanden ist?
+ check()
+ find()
+ contains()
+ search()

*Frage 7*: Was passiert, wenn ein Element zu einem Set in der STL hinzugefügt wird und das Element bereits vorhanden ist?
+ Das Element wird ignoriert und nicht erneut hinzugefügt.
+ Das Element wird gelöscht und durch das neue Element ersetzt.
+ Das Set gibt eine Fehlermeldung aus.
+ Das Set fügt das Element zweimal hinzu, da es Duplikate erlaubt.

*Frage 8*: Welche Methode in einer Map in der STL ermöglicht die Suche nach einem bestimmten Schlüssel?
+ get()
+ search()
+ find()
+ locate()

*Frage 9*: Was ist der Zweck von Maps in C++?
+ Maps dienen zum Speichern einer geordneten Liste von Werten.
+ Maps dienen zum Speichern von Schlüssel-Wert-Paaren, wobei jeder Schlüssel eindeutig ist.
+ Maps dienen zum schnellen Zugriff auf Elemente in einem Array.
+ Maps dienen zur Verwaltung von Zeichenketten in C++.

*Frage 10*: Welche Header-Datei muss in C++ inkludiert werden, um Maps zu verwenden?
+ `<vector>`
+ `<map>`
+ `<set>`
+ `<array>`

*Frage 11*: Welche der folgenden Aussagen über C++-Arrays und Vektoren in der STL ist korrekt?
+ C++-Arrays sind dynamische Container, während Vektoren eine feste Größe haben.
+ C++-Arrays bieten eine effiziente Möglichkeit, Elemente einzufügen und zu löschen, während Vektoren dafür weniger geeignet sind.
+ Vektoren können verschiedene Datentypen speichern, während C++-Arrays nur einen Datentyp unterstützen.
+ C++-Arrays und Vektoren sind im Grunde genommen gleich und können in den meisten Fällen austauschbar verwendet werden.

*Frage 12*: Welche der folgenden Aussagen über Iteratoren in C++ ist falsch?
+ Iteratoren bieten eine Möglichkeit, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen.
+ Ein Iterator ist im Wesentlichen ein Zeiger auf ein Element im Container.
+ Es ist sicher, auf einen Iterator zuzugreifen, der über das Ende des Containers hinauszeigt.
+ Iteratoren ermöglichen es, auf den Wert eines Elements zuzugreifen, indem `*it` verwendet wird.

*Frage 13*: Welche Container-Klasse in der STL ist am besten geeignet, wenn häufige Einfügungen und Löschungen von Elementen am Anfang und Ende des Containers vorkommen?
+ Vector
+ Map
+ List
+ Set

*Frage 14*: Welche der folgenden Aussagen über Sets in der STL ist korrekt?
+ Sets sind Container, die doppelte Elemente erlauben, da sie keine Duplikate entfernen.
+ Die Methode find() in einem Set gibt immer den Iterator zurück, der auf das gesuchte Element zeigt.
+ Sets sind nicht geordnete Container, und ihre Elemente werden zufällig angeordnet.
+ Ein Set kann auch Null-Elemente enthalten, wenn sie explizit hinzugefügt wurden.

*Frage 15*: Welche Methode in einer Map in der STL ermöglicht es, den Wert eines bestimmten Schlüssels zu ändern?
+ modify()
+ update()
+ set()
+ operator[]

*Frage 16*: Was passiert, wenn wir ein Element zu einer Map in der STL hinzufügen und das Element bereits mit demselben Schlüssel vorhanden ist?
+ Das Element wird durch das neue Element ersetzt.
+ Das Element wird ignoriert, und die ursprüngliche Zuordnung bleibt unverändert.
+ Das Element wird gelöscht, und das neue Element wird am Ende der Map hinzugefügt.
+ Das Element wird an den Anfang der Map verschoben.

*Frage 17*: Welche Methode in einem Set in der STL überprüft, ob ein bestimmtes Element vorhanden ist, und gibt eine Anzahl zurück, wie oft es im Set vorkommt?
+ exists()
+ count()
+ size()
+ contains()

*Antworten*:

+ 3) C++-Arrays sind statische Container, während Vektoren dynamische Container sind.
+ 1) <vector>
+ 3) Ein Iterator ist ein Objekt, das es ermöglicht, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen.
+ 1) Durch die Verwendung von (`*it`)
+ 3) List
+ 2) find()
+ 1) Das Element wird ignoriert und nicht erneut hinzugefügt.
+ 3) find()
+ 2) Maps dienen zum Speichern von Schlüssel-Wert-Paaren, wobei jeder Schlüssel eindeutig ist.
+ 2) `<map>`
+ 4) C++-Arrays und Vektoren sind im Grunde genommen gleich und können in den meisten Fällen austauschbar verwendet werden.
+ 3) Es ist sicher, auf einen Iterator zuzugreifen, der über das Ende des Containers hinauszeigt.
+ 3) List
+ 2) Die Methode find() in einem Set gibt immer den Iterator zurück, der auf das gesuchte Element zeigt.
+ 4) operator[]
+ 1) Das Element wird durch das neue Element ersetzt.
+ 2) count()
=== Erklärungen
*Frage 1*: Erläutere den Unterschied zwischen einem C++-Array und einem Vector in der STL. Wann sollte man jeweils einen Array oder einen Vector verwenden und warum?

*Frage 2*: Beschreibe den Zweck und die Funktionsweise von Iteratoren in C++. Welche Vorteile bieten Iteratoren gegenüber herkömmlichen Schleifen wie for und while?

*Frage 3*: Erkläre, was eine Liste (std::list) in der STL ist und wie sie intern implementiert ist. Nenne mindestens zwei Szenarien, in denen der Einsatz einer Liste gegenüber einem Vector sinnvoll wäre.

*Frage 4*: Stelle die Unterschiede zwischen einem Array aus der STL (std::array) und einem C++-Array dar. Welche Vorteile bietet std::array gegenüber C++-Arrays und in welchen Situationen wäre die Verwendung von C++-Arrays angemessen?

*Frage 5*: Beschreibe die Funktionsweise eines Sets in der STL. Nenne mindestens zwei Eigenschaften von Sets, die sie von anderen Containern in der STL unterscheiden.

*Antworten*:

*Frage 1*: C++-Arrays sind statische Container mit fester Größe, während Vektoren dynamische Container sind und ihre Größe zur Laufzeit ändern können. Arrays sind geeignet, wenn die Größe zur Compile-Zeit bekannt ist und schnelleren Zugriff ermöglichen. Vektoren sind flexibler, wenn Größenänderungen erforderlich sind.

*Frage 2*: Iteratoren sind Objekte, die es ermöglichen, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen. Sie bieten eine abstrahierte Schnittstelle, um auf Elemente zuzugreifen und erleichtern die Arbeit mit verschiedenen Containertypen. Im Gegensatz zu herkömmlichen Schleifen erlauben Iteratoren einen allgemeineren Zugriff auf Containerdaten und sind weniger fehleranfällig.

*Frage 3*: Eine Liste in der STL ist eine doppelt verkettete Liste, bei der jedes Element einen Zeiger auf das vorherige und das nächste Element enthält. Sie ermöglicht effiziente Einfügung und Löschung von Elementen am Anfang, am Ende und überall innerhalb der Liste. Listen eignen sich gut, wenn häufige Einfügungen und Löschungen in der Mitte des Containers vorkommen und wenn Iterator-Invalidierungen minimiert werden müssen.

*Frage 4*: Ein Array aus der STL (std::array) ist ein statischer Container mit fester Größe, dessen Größe zur Compile-Zeit festgelegt wird. Im Gegensatz dazu sind C++-Arrays dynamische Container, deren Größe zur Laufzeit festgelegt werden kann. std::array bietet mehr Sicherheit und Kompatibilität mit STL-Algorithmen, während C++-Arrays für spezifische Größen oder situationsbedingte Größenänderungen verwendet werden können.

*Frage 5*: Sets in der STL sind Container, die eine geordnete Sammlung eindeutiger Elemente speichern. Sie sortieren die Elemente aufsteigend, um schnellen Zugriff und Suche zu ermöglichen. Sets erlauben keine Duplikate, sodass jedes Element im Set eindeutig ist. Die Suche nach Elementen in einem Set ist besonders effizient, da die Elemente in einer Baumstruktur organisiert sind.
== Einheit 4
=== Multiple Choice
*Frage 1*: Was ist das Überladen von Funktionen in C++?
+ Das Kopieren von Funktionen, um sie mehrfach im Code zu verwenden.
+ Das Erstellen von Funktionen mit gleichem Namen, aber unterschiedlicher Anzahl und/oder Typen von Parametern.
+ Das Ersetzen von Funktionen durch andere Funktionen, um den Code effizienter zu gestalten.
+ Das Verstecken von Funktionen, um sie vor dem Zugriff anderer Teile des Codes zu schützen.

*Frage 2*: Welcher Aspekt der Funktionen wird bei der Überladung nicht berücksichtigt?
+ Die Anzahl der Argumente.
+ Die Reihenfolge der Argumente.
+ Die Typen der Argumente.
+ Der Rückgabetyp der Funktion.

*Frage 3*: Welche Überladung würde der Compiler bevorzugen, wenn sowohl int als auch double als Argumente übergeben werden?
+ int-Version
+ double-Version
+ Es wird eine Fehlermeldung erzeugt, da die Überladung mehrdeutig ist.
+ Der Compiler wählt eine Überladung zufällig aus.

*Frage 4*: Kann die Überladung von Funktionen basierend auf dem Rückgabetyp erfolgen?
+ Ja, es ist möglich, Funktionen basierend auf dem Rückgabetyp zu überladen.
+ Nein, die Überladung basiert ausschließlich auf den Argumenten einer Funktion.
+ Nur, wenn der Rückgabetyp ein Zeiger ist.
+ Nur, wenn der Rückgabetyp ein benutzerdefinierter Datentyp ist.

*Frage 5*: Wofür kann die Überladung von Funktionen verwendet werden?
+ Um die Sichtbarkeit einer Funktion zu ändern.
+ Um mehrere Funktionen mit unterschiedlichen Rückgabetypen zu erstellen.
+ Um verschiedene Varianten einer Funktion anzubieten, die unterschiedliche Argumenttypen oder Anforderungen unterstützen.
+ Um Funktionen in einer anderen Datei zu verbergen.

*Frage 6*: Welche der folgenden Aussagen ist falsch?
+ Überladene Funktionen können verschiedene Rückgabetypen haben.
+ Der Compiler wählt die spezifischste Überladung aus, wenn mehrere passende Überladungen vorhanden sind.
+ Standardargumente können bei der Überladung von Funktionen verwendet werden.
+ Funktionen, die sich nur im Rückgabetyp unterscheiden, können überladen werden.

*Frage 7*: Welche der folgenden Aussagen zur Verwendung von Pointern ist korrekt?
+ Pointer sind in C++ nicht erlaubt.
+ Pointer werden immer automatisch auf nullptr initialisiert.
+ Pointer können auf den Adressen von Funktionen zeigen.
+ Es ist nicht möglich, Pointer auf benutzerdefinierte Datentypen zu erstellen.

*Frage 8*: Was ist eine Referenz in C++?
+ Eine Variable, die keinen Wert speichert.
+ Ein Alias oder Spitzname für eine bestehende Variable.
+ Eine Klasse, die andere Klassen erbt.
+ Eine Funktion, die von einer anderen Funktion aufgerufen wird.

*Frage 9*: Was passiert bei der Call-by-Value Übergabe von Argumenten an eine Funktion?
+ Die Argumente werden per Referenz übergeben.
+ Die Argumente werden per Zeiger übergeben.
+ Eine Kopie der Argumente wird erstellt und an die Funktion übergeben.
+ Die Argumente werden verschlüsselt und an die Funktion übergeben.

*Frage 10*: Wozu dienen Funktionstemplates in C++?
+ Zur Definition von Funktionen mit identischem Code.
+ Zur Definition von Funktionen, die verschiedene Rückgabetypen haben.
+ Zur Definition von Funktionen, die mit verschiedenen Datentypen arbeiten können.
+ Zur Definition von Funktionen, die nur mit benutzerdefinierten Datentypen arbeiten können.

*Frage 11*: Welche der folgenden Aussagen zum Überladen von Funktionen ist korrekt?
+ Überladene Funktionen müssen immer denselben Rückgabetyp haben.
+ Der Compiler wählt immer die erste Überladung, die den gegebenen Argumenten entspricht.
+ Funktionen können nur dann überladen werden, wenn sie unterschiedliche Namen haben.
+ Die Überladung basiert auf der Anzahl und den Typen der Argumente einer Funktion.

*Frage 12*: Welche Art von Referenz wird in C++ häufig verwendet, um sicherzustellen, dass eine Funktion keine Kopie der Argumente erstellt?
+ R-Wert-Referenz
+ L-Wert-Referenz
+ Konstante Referenz
+ Statistische Referenz

*Frage 13*: Was passiert bei der Call-by-Reference Übergabe von Argumenten an eine Funktion?
+ Die Argumente werden per Wert übergeben und eine Kopie wird erstellt.
+ Die Argumente werden per Zeiger übergeben.
+ Eine Referenz auf die ursprünglichen Argumente wird erstellt und an die Funktion übergeben.
+ Die Argumente werden verschlüsselt und an die Funktion übergeben.

*Frage 14*: Welcher Aspekt der Funktionenüberladung ermöglicht die Verwendung von Standardargumenten?
+ Die Anzahl der Argumente.
+ Die Reihenfolge der Argumente.
+ Die Typen der Argumente.
+ Der Rückgabetyp der Funktion.

*Frage 15*: Wie kann man verhindern, dass eine Funktion mit bestimmten Argumenttypen überladen wird?
+ Es ist nicht möglich, die Überladung für bestimmte Argumenttypen zu verhindern.
+ Die Funktion muss mit final gekennzeichnet werden.
+ Die Funktion muss als const deklariert werden.
+ Die Funktion muss als static deklariert werden.

*Frage 16*: Welche der folgenden Aussagen zum Überladen von Funktionen in C++ ist korrekt?
+ Überladene Funktionen können sich nur im Rückgabetyp unterscheiden.
+ Funktionen können nicht überladen werden, wenn sie in unterschiedlichen Dateien definiert sind.
+ Bei der Überladung muss die Reihenfolge der Argumente in allen Funktionen gleich sein.
+ Die Überladung basiert auf der Anzahl und den Typen der Argumente einer Funktion.

*Frage 17*: Was ist ein Vorteil der Verwendung von Templates für Funktionen?
+ Templates ermöglichen die Verwendung beliebiger Rückgabetypen.
+ Templates ermöglichen die Erstellung von Funktionen, die mehrere Typen unterstützen.
+ Templates vereinfachen die Syntax der Funktionen.
+ Templates können verhindern, dass Funktionen überladen werden müssen.

*Antworten*:

+ 2
+ 4
+ 3
+ 2
+ 3
+ 4
+ 3
+ 2
+ 3
+ 3
+ 4
+ 3
+ 3
+ 1
+ 1
+ 4
+ 2
=== Erklärungen
*Frage 1*: Was ist das Überladen von Funktionen in C++? Erläutere diesen Konzept und gib ein Beispiel an.

*Frage 2*: Was sind Referenzen in C++? Erkläre, wie Referenzen funktionieren und in welchen Situationen sie nützlich sind.

*Frage 3*: Was ist der Unterschied zwischen der Deklaration und Definition einer Funktion in C++? Erläutere diesen Unterschied und warum er wichtig ist.

*Frage 4*: Erläutere den Unterschied zwischen Call-by-Value und Call-by-Reference in Bezug auf die Übergabe von Argumenten an Funktionen. Warum sollte man sich für eines dieser Konzepte entscheiden?

*Frage 5*: Was sind Funktionstemplates in C++? Erkläre, wie Funktionstemplates verwendet werden können, um generische Funktionen zu erstellen, die mit verschiedenen Datentypen arbeiten können.

*Antworten*:

*Frage 1*:
Das Überladen von Funktionen in C++ bezieht sich auf die Möglichkeit, mehrere Funktionen mit demselben Namen, aber unterschiedlichen Parameterlisten zu erstellen. Dies ermöglicht es, dass eine Funktion verschiedene Argumenttypen oder eine unterschiedliche Anzahl von Argumenten verarbeiten kann, abhängig von den Anforderungen des Aufrufs. Der Compiler wählt die passende Funktion anhand der gegebenen Argumente aus. Ein Beispiel für die Überladung einer Funktion könnte so aussehen:
#boxed(```cpp
#include <iostream>

int add(int a, int b) {
    return a + b;
}

double add(double a, double b) {
    return a + b;
}

int main() {
    int result1 = add(10, 20);
    double result2 = add(3.14, 2.71);

    std::cout << "Result 1: " << result1 << std::endl; // Output: 30
    std::cout << "Result 2: " << result2 << std::endl; // Output: 5.85

    return 0;
}```)
*Frage 2*:
Referenzen in C++ sind Alias oder Spitznamen für bestehende Variablen. Sie werden verwendet, um auf denselben Speicherplatz wie eine bereits existierende Variable zu verweisen. Referenzen werden mit dem &-Operator deklariert und müssen bei der Initialisierung mit einer vorhandenen Variable initialisiert werden. Referenzen sind besonders nützlich, wenn man verhindern möchte, dass unnötige Kopien von Variablen erstellt werden, beispielsweise in Funktionen, die große Datenstrukturen verarbeiten. Ein Beispiel für die Verwendung einer Referenz könnte so aussehen:
#boxed(```cpp
#include <iostream>

int main() {
    int num = 42;
    int& refNum = num;

    std::cout << "num: " << num << std::endl;     // Output: 42
    std::cout << "refNum: " << refNum << std::endl; // Output: 42

    refNum = 100;

    std::cout << "num: " << num << std::endl;     // Output: 100
    std::cout << "refNum: " << refNum << std::endl; // Output: 100

    return 0;
}```)
*Frage 3*:
Die Deklaration einer Funktion in C++ gibt lediglich den Namen, den Rückgabetyp und die Parameterliste der Funktion an, enthält aber keinen Funktionskörper. Die Definition einer Funktion enthält dagegen den Funktionskörper und implementiert die Funktionalität der Funktion. Die Deklaration wird in der Regel in einem Header-File (.h) angegeben, während die Definition in einer Quelldatei (.cpp) erfolgt. Die Trennung von Deklaration und Definition ist wichtig, da sie es ermöglicht, Funktionen in verschiedenen Dateien zu verwenden und den Code besser zu organisieren.

*Frage 4*:
Bei der Call-by-Value Übergabe von Argumenten an eine Funktion werden Kopien der Argumente erstellt und an die Funktion übergeben. Dadurch arbeitet die Funktion mit den Kopien der Argumente, und Änderungen an den Argumenten innerhalb der Funktion haben keine Auswirkungen auf die ursprünglichen Werte außerhalb der Funktion. Bei der Call-by-Reference Übergabe werden dagegen Referenzen auf die ursprünglichen Argumente an die Funktion übergeben, sodass die Funktion direkt mit den ursprünglichen Werten arbeitet. Dadurch können Änderungen innerhalb der Funktion die ursprünglichen Werte außerhalb der Funktion beeinflussen. Call-by-Value wird in der Regel verwendet, um sicherzustellen, dass die Funktion die ursprünglichen Werte nicht verändert, während Call-by-Reference verwendet wird, wenn die Funktion Änderungen an den Argumenten vornehmen soll.

*Frage 5*:
Funktionstemplates sind eine Funktionstechnik in C++, die es ermöglicht, generische Funktionen zu erstellen, die mit verschiedenen Datentypen arbeiten können. Templates verwenden spezielle Platzhaltertypen (typename T) für Argumente, die erst bei der Kompilierung durch die tatsächlichen Datentypen ersetzt werden. Dadurch kann dieselbe Funktion mit unterschiedlichen Datentypen verwendet werden, ohne den Code mehrfach schreiben zu müssen. Ein Beispiel für eine Funktion, die mithilfe von Templates generisch gemacht wird, könnte so aussehen:
#boxed(```cpp
#include <iostream>

// Funktionstemplate zur Addition von zwei Werten
template<typename T>
T add(T a, T b) {
    return a + b;
}

int main() {
    int result1 = add(10, 20);
    double result2 = add(3.14, 2.71);

    std::cout << "Result 1: " << result1 << std::endl; // Output: 30
    std::cout << "Result 2: " << result2 << std::endl; // Output: 5.85

    return 0;
}```)
Hinweis: Die Funktion add kann sowohl für Ganzzahlen als auch für Gleitkommazahlen verwendet werden, da sie mit Templates generisch gemacht wurde.
== Einheit 5
=== Multiple Choice
*Frage1*: Welche der folgenden Aussagen über das Schlüsselwort "using" in C++ ist richtig?
+ "using" wird verwendet, um Präprozessor-Makros zu definieren.
+ "using" wird verwendet, um einen Alias für einen Datentypen zu erstellen.
+ "using" wird verwendet, um Funktionen zu überladen.
+ "using" wird verwendet, um Speicherplatz freizugeben.

*Frage2*:Welche Aussage zu Pairs in C++ ist korrekt?
+ Pairs sind Container, die eine geordnete Sammlung von Elementen speichern.
+ Pairs enthalten immer genau zwei Elemente.
+ Pairs können nur Schlüssel-Wert-Paare speichern.
+ Pairs können nicht als Funktionsergebnisse verwendet werden.

*Frage3:* Welche der folgenden Aussagen über Tuples in C++ ist richtig?
+ Tuples können nur Daten von einem bestimmten Datentyp speichern.
+ Tuples können beliebig viele Elemente enthalten.
+ Tuples sind nicht kopierbar.
+ Tuples können nicht als Rückgabetypen von Funktionen verwendet werden.

*Frage4*: Welche der folgenden Aussagen zum Konstruktor einer Klasse in C++ ist richtig?
+ Ein Konstruktor hat immer den gleichen Namen wie die Klasse selbst.
+ Ein Konstruktor wird immer explizit aufgerufen.
+ Ein Konstruktor hat keinen Rückgabetyp, auch nicht "void".
+ Ein Konstruktor kann mehrere Rückgabewerte haben.

*Frage5*: Welche der folgenden Aussagen zu den Zugriffsbereichen einer Klasse in C++ ist korrekt?
+ Alle Elemente einer Klasse sind standardmäßig öffentlich.
+ Private Elemente einer Klasse sind von überall aus zugänglich.
+ Geschützte Elemente einer Klasse sind nur innerhalb der Klasse und ihrer abgeleiteten Klassen zugänglich.
+ Öffentliche Elemente einer Klasse können nicht von außerhalb der Klasse aufgerufen werden.

*Frage6*: Welche Aussage zur Vererbung von Klassen in C++ ist korrekt?
+ C++ unterstützt nur einfache Vererbung, nicht aber mehrfache Vererbung.
+ Eine abgeleitete Klasse kann auf private Elemente der Basisklasse zugreifen.
+ Die abgeleitete Klasse erbt immer den Konstruktor der Basisklasse.
+ Eine Klasse kann mehrere Basisklassen haben.

*Frage 7*: Welche der folgenden Aussagen zum Polymorphismus in C++ ist richtig?
+ Polymorphismus ermöglicht es, dass eine Klasse mehrere Basisklassen haben kann.
+ Polymorphismus ermöglicht es, dass ein Objekt mehrere Datentypen haben kann.
+ Statischer Polymorphismus wird zur Laufzeit aufgelöst.
+ Dynamischer Polymorphismus wird zur Übersetzungszeit aufgelöst.

*Frage 8*: Welche Funktion hat der Präprozessor in C++?
+ Er fügt externe Bibliotheken in den Quellcode ein.
+ Er optimiert den erzeugten Maschinencode.
+ Er führt spezielle Anweisungen aus, die durch Präprozessor-Direktiven gesetzt wurden.
+ Er verbindet verschiedene Objektdateien und erstellt eine ausführbare Datei.

*Frage 9*:Was ist ein "Pair" in C++?
+ Ein spezieller Datentyp, der nur einen Wert speichert.
+ Eine Funktion, die zwei Werte addiert.
+ Ein Container, der genau zwei Werte speichert.
+ Ein Zeiger auf ein Array.

*Frage 10*:Welches Schlüsselwort wird verwendet, um auf private Elemente einer Klasse zuzugreifen?
+ public
+ private
+ protected
+ this

*Frage 11*:Welche der folgenden Aussagen zur Mehrfachvererbung in C++ ist richtig?
+ C++ unterstützt keine Mehrfachvererbung.
+ Mehrfachvererbung tritt auf, wenn eine Klasse von mehreren Basisklassen abgeleitet wird.
+ Mehrfachvererbung ist nur erlaubt, wenn alle Basisklassen dieselben Elemente haben.
+ Eine Klasse kann nur von einer einzigen Basisklasse abgeleitet werden.

*Frage 12*:Was macht der Präprozessor in C++?
+ Er übersetzt den Quellcode in Maschinencode.
+ Er fügt externe Bibliotheken in den Quellcode ein.
+ Er führt die Anweisungen im Code sequenziell aus.
+ Er optimiert den erzeugten Maschinencode.

*Frage 13*:Welche der folgenden Aussagen zu Klassenmethoden in C++ ist richtig?
+ Klassenmethoden haben immer Zugriff auf private Elemente der Klasse.
+ Klassenmethoden können nur von Objekten der Klasse aufgerufen werden.
+ Klassenmethoden haben immer den Rückgabetyp "void".
+ Klassenmethoden werden mit dem Pfeiloperator "->" aufgerufen.

*Frage 14*:Was ist "this" in C++?
+ Eine Referenz auf das aktuelle Objekt einer Klasse.
+ Eine Funktion, die den Speicher freigibt.
+ Ein Präprozessor-Direktive, die eine Bedingung überprüft.
+ Ein Schlüsselwort, das für globale Variablen verwendet wird.

*Frage 15*:Warum verwendet man Header-Dateien in C++?
+ Um den Quellcode zu verschlüsseln.
+ Um die Ausführungsgeschwindigkeit zu erhöhen.
+ Um Funktionen und Klassen zu deklarieren und zu definieren.
+ Um das Kompilieren des Codes zu verhindern.

*Frage 16*:Welche der folgenden Aussagen zu Destruktoren in C++ ist richtig?
+ Ein Destruktor wird aufgerufen, wenn ein Objekt einer Klasse erzeugt wird.
+ Ein Destruktor hat den gleichen Namen wie die Klasse, aber mit einem führenden "`~`".
+ Ein Destruktor kann Rückgabewerte haben.
+ Ein Destruktor wird explizit durch den Entwickler aufgerufen.

*Frage 17*:Welche Art der Vererbung ermöglicht es, dass eine abgeleitete Klasse Funktionen der Basisklasse überschreiben kann?
+ Mehrfachvererbung
+ Private Vererbung
+ Öffentliche Vererbung
+ Geschützte Vererbung

*Frage 18*:Was ist eine statische (static) Klassenmethode?
+ Eine Methode, die von allen Objekten der Klasse geteilt wird.
+ Eine Methode, die nur von einem Objekt der Klasse aufgerufen werden kann.
+ Eine Methode, die keine Parameter akzeptiert.
+ Eine Methode, die nur innerhalb der Klasse sichtbar ist.

*Frage 19*:Welche Art von Polymorphismus tritt auf, wenn eine Klasse von mehreren Basisklassen abgeleitet wird und diese Basisklassen dieselbe Methode haben?
+ Ad-hoc-Polymorphismus
+ Parametrischer Polymorphismus
+ Universalpolymorphismus
+ Polymorphismus der Vererbung

*Frage 20*:Was ist eine statische (static) Klassenvariable?
+ Eine Variable, die nur von einem Objekt der Klasse geändert werden kann.
+ Eine Variable, die von allen Objekten der Klasse geteilt wird.
+ Eine Variable, die zur Laufzeit dynamisch erstellt wird.
+ Eine Variable, die nur in der Basisklasse sichtbar ist.

*Frage 21*:Wie werden Paare in C++ erstellt und initialisiert?
+ Mit der Funktion make_pair().
+ Durch die Angabe des Datentyps und der Werte in geschweiften Klammern.
+ Mit dem Operator <: zwischen den Werten.
+ Durch die Verwendung der Funktion pair().

*Frage 22*:Welches Präprozessor-Direktiv wird verwendet, um eine Bedingung zu überprüfen, bevor der Code kompiliert wird?
+ `#if`
+ `#else`
+ `#pragma`
+ `#ifdef`

*Frage 23*:Welche Art von Zeiger ist this in einer Klassenmethode?
+ Ein Zeiger auf die Basisklasse.
+ Ein Zeiger auf das aktuelle Objekt der Klasse.
+ Ein Zeiger auf die abgeleitete Klasse.
+ Ein Zeiger auf die statischen Mitglieder der Klasse.

*Frage 24*:Welche der folgenden Aussagen zur Klassendefinition in C++ ist falsch?
+ Eine Klasse kann mehrere Konstruktoren haben.
+ Die Definition der Klasse enthält die Implementierung der Methoden.
+ Eine Klasse kann nur private Elemente haben.
+ Eine Klasse kann von einer anderen Klasse abgeleitet werden.

*Antworten*:

+ 2) "using" wird verwendet, um einen Alias für einen Datentypen zu erstellen.
+ 2) Pairs enthalten immer genau zwei Elemente.
+ 2) Tuples können beliebig viele Elemente enthalten.
+ 3) Ein Konstruktor hat keinen Rückgabetyp, auch nicht "void".
+ 3) Geschützte Elemente einer Klasse sind nur innerhalb der Klasse und ihrer abgeleiteten Klassen zugänglich.
+ 4) Eine Klasse kann mehrere Basisklassen haben.
+ 4) Dynamischer Polymorphismus wird zur Übersetzungszeit aufgelöst.
+ 3) Er führt spezielle Anweisungen aus, die durch Präprozessor-Direktiven gesetzt wurden.
+ 3) Ein Container, der genau zwei Werte speichert.
+ 2) private
+ 2) Mehrfachvererbung tritt auf, wenn eine Klasse von mehreren Basisklassen abgeleitet wird.
+ 2) Er fügt externe Bibliotheken in den Quellcode ein.
+ 1) Klassenmethoden haben immer Zugriff auf private Elemente der Klasse.
+ 1) Eine Referenz auf das aktuelle Objekt einer Klasse.
+ 3) Um Funktionen und Klassen zu deklarieren und zu definieren.
+ 2) Ein Destruktor hat den gleichen Namen wie die Klasse, aber mit einem führenden "~".
+ 3) Öffentliche Vererbung
+ 1) Eine Methode, die von allen Objekten der Klasse geteilt wird.
+ 4) Polymorphismus der Vererbung
+ 2) Eine Variable, die von allen Objekten der Klasse geteilt wird.
+ 1) Mit der Funktion make_pair().
+ 1) `#if`
+ 2) Ein Zeiger auf das aktuelle Objekt der Klasse.
+ 3) Eine Klasse kann nur private Elemente haben.
=== Erklärung
*Frage 1*:
Erläutere, wofür das using-Schlüsselwort in C++ verwendet wird und wie es die Lesbarkeit und Wiederverwendbarkeit des Codes verbessern kann.

*Frage 2*:
Erkläre, wie std::pair in der C++ Standard Template Library (STL) verwendet wird und gib ein Beispiel an, wie man ein Paar erstellt und darauf zugreift.

*Frage 3*:
Erkläre, was eine std::tuple in C++ ist und wie sie verwendet wird, um mehrere Werte unterschiedlichen Typs zu speichern. Gib ein Beispiel an, wie man auf die Werte einer Tupel zugreift.

*Frage 4*:
Beschreibe, was ein struct in C++ ist und wie es sich von einer Klasse unterscheidet. Erkläre, wofür es in der Praxis verwendet wird und gib ein Beispiel für die Verwendung eines struct.

*Frage 5*:
Erkläre den Unterschied zwischen der Deklaration und der Definition einer Klasse in C++. Zeige auch, wie die Definition einer Klasse in einer Header-Datei aussehen kann.

*Frage 6*:
Erläutere, wie man eine Klasse in C++ verwendet, indem man ein Objekt erstellt und auf die öffentlichen Methoden und Variablen zugreift.

*Frage 7*:
Erkläre die verschiedenen Zugriffsbereiche (public, private, protected) von Klassenmitgliedern in C++ und wie sie die Sichtbarkeit und Vererbung beeinflussen.

*Frage 8*:
Beschreibe, was ein Konstruktor in C++ ist und wie er verwendet wird, um ein Objekt zu initialisieren. Erkläre den Unterschied zwischen einem Standardkonstruktor und einem benutzerdefinierten Konstruktor.

*Frage 9*:
Erkläre, was ein Destruktor in C++ ist und welche Rolle er beim Aufräumen von Ressourcen spielt. Zeige auch, wie ein Destruktor deklariert und implementiert wird.

*Frage 10*:
Erläutere die Verwendung des this-Zeigers in C++ und wie er verwendet wird, um auf das aktuelle Objekt einer Klasse zuzugreifen.

*Frage 11*:
Erkläre, wie eine Klasse in einer Header-Datei deklariert wird und wie sie dann in einer Implementierungsdatei definiert wird.

*Frage 12*:
Erkläre, wie Header-Dateien in C++ verwendet werden, um die Deklarationen von Klassen und Funktionen zu trennen und die Code-Wiederverwendung zu fördern.

*Frage 13*:
Erläutere, was Vererbung in C++ ist und wie sie verwendet wird, um eine abgeleitete Klasse von einer Basisklasse zu erstellen. Erkläre auch den Unterschied zwischen öffentlicher, geschützter und privater Vererbung.

*Frage 14*:
Erkläre, was eine statische Klassenvariable in C++ ist und wie sie von allen Objekten der Klasse geteilt wird.

*Frage 15*:
Erkläre, was eine statische Klassenmethode in C++ ist und wie sie von allen Objekten der Klasse geteilt wird.

*Frage 16*:
Erläutere, was Polymorphismus in C++ ist und wie er durch virtuelle Funktionen erreicht wird. Zeige ein Beispiel für die Verwendung von Polymorphismus.

*Frage 17*:
Erkläre, was Mehrfachvererbung in C++ ist und wie sie verwendet wird, um eine Klasse von mehreren Basisklassen abzuleiten. Erläutere die Herausforderungen und Risiken von Mehrfachvererbung.

*Frage 18*:
Erkläre, was der Präprozessor in C++ ist und wie er verwendet wird, um den Quellcode vor der eigentlichen Kompilierung zu verarbeiten. Zeige ein Beispiel für die Verwendung von Präprozessor-Direktiven wie `#define` und `#ifdef`.

*Frage 19*:
Beschreibe den Compiler in C++ und seine Rolle bei der Übersetzung von Quellcode in ausführbaren Maschinencode.

*Frage 20*:
Erkläre, was der Linker in C++ ist und wie er verwendet wird, um ausführbare Programme aus den übersetzten Objektdateien zu erstellen.

*Antworten*:

*Frage 1*:
Das using-Schlüsselwort in C++ wird verwendet, um die Sichtbarkeit von Namespaces zu ändern und die Lesbarkeit von Code zu verbessern. Mit using können beispielsweise Typen aus einem Namespace direkt verwendet werden, ohne den vollständigen Namespace-Pfad anzugeben.

*Frage 2*:
std::pair ist ein Template in der C++ Standard Template Library (STL), das zwei Werte unterschiedlichen Typs zusammenfasst. Ein Paar kann verwendet werden, um zwei Werte als eine einzige Einheit zu speichern und darauf zuzugreifen.

*Frage 3*:
std::tuple ist ein Template in der C++ STL, das mehrere Werte unterschiedlichen Typs als ein Tuple speichert. Ein Tuple ermöglicht den Zugriff auf seine Elemente über ihre Positionen oder über std::get mit dem Index.

*Frage 4*:
Ein struct in C++ ist eine benutzerdefinierte Datenstruktur, die verschiedene Variablen unterschiedlichen Typs in einer einzigen Einheit kombiniert. Es ähnelt einer Klasse, hat aber standardmäßig öffentliche Mitglieder.

*Frage 5*:
Die Definition einer Klasse in C++ erfolgt normalerweise in einer Header-Datei, in der die Struktur und die öffentlichen und privaten Mitglieder der Klasse deklariert werden. Die Implementierung der Klasse erfolgt in einer separaten Datei.

*Frage 6*:
Um eine Klasse in C++ zu verwenden, muss ein Objekt der Klasse erstellt werden. Mit diesem Objekt kann auf die öffentlichen Methoden und Variablen der Klasse zugegriffen werden.

*Frage 7*:
In C++ können die Zugriffsbereiche public, private und protected verwendet werden, um den Zugriff auf die Mitglieder einer Klasse zu steuern. public ermöglicht den Zugriff von überall, private beschränkt den Zugriff auf die Klasse selbst, und protected erlaubt den Zugriff von abgeleiteten Klassen.

*Frage 8*:
Ein Konstruktor in C++ ist eine spezielle Methode, die beim Erstellen eines Objekts automatisch aufgerufen wird. Er wird verwendet, um das Objekt zu initialisieren und seinen Zustand festzulegen.

*Frage 9*:
Ein Destruktor in C++ ist eine spezielle Methode, die beim Löschen eines Objekts automatisch aufgerufen wird. Er wird verwendet, um Ressourcen freizugeben und das Objekt ordnungsgemäß zu bereinigen.

*Frage 10*:
this ist ein Zeiger in C++, der auf das aktuelle Objekt einer Klasse zeigt. Er wird verwendet, um auf die Mitglieder des aktuellen Objekts zuzugreifen und es von anderen Objekten zu unterscheiden.

*Frage 11*:
Die Deklaration einer Klasse in C++ erfolgt normalerweise in einer Header-Datei, in der die Struktur und die öffentlichen und privaten Mitglieder der Klasse angegeben werden. Die Implementierung der Klasse erfolgt in einer separaten Datei.

*Frage 12*:
Header-Dateien in C++ werden verwendet, um die Deklarationen von Klassen und Funktionen zu trennen und die Code-Wiederverwendung zu fördern. Sie enthalten in der Regel die Klassendeklarationen, während die Implementierung in separaten Dateien erfolgt.

*Frage 13*:
Vererbung in C++ ermöglicht es einer Klasse, Eigenschaften und Verhalten von einer anderen Klasse zu erben. Eine abgeleitete Klasse erbt die öffentlichen und geschützten Mitglieder der Basisklasse.

*Frage 14*:
Eine Klassenvariable in C++ ist eine statische Variable, die von allen Objekten der Klasse gemeinsam genutzt wird. Sie wird mit dem Klassennamen und dem Scope-Operator :: aufgerufen.

*Frage 15*:
Eine Klassenmethode in C++ ist eine statische Methode, die von allen Objekten der Klasse gemeinsam genutzt wird. Sie wird mit dem Klassennamen und dem Scope-Operator :: aufgerufen.

*Frage 16*:
Polymorphismus in C++ ermöglicht es, dass eine Methode in einer abgeleiteten Klasse die gleiche Signatur wie eine Methode in der Basisklasse hat. Dadurch können unterschiedliche Klassen denselben Methodennamen haben und bei Aufruf die richtige Methode aufgerufen wird.

*Frage 17*:
Mehrfachvererbung in C++ ermöglicht es einer abgeleiteten Klasse, von mehreren Basisklassen zu erben. Dies kann zu einer sogenannten Diamant-Vererbungsstruktur führen, bei der eine Klasse von zwei Klassen erbt, die beide von einer gemeinsamen Basis erben.

*Frage 18*:
Der Präprozessor in C++ wird verwendet, um den Quellcode vor der eigentlichen Kompilierung zu verarbeiten. Er führt verschiedene Aufgaben aus, wie das Ersetzen von Makros, das Hinzufügen von Dateien mit `#include` und das Kompilieren bedingter Codeblöcke mit `#ifdef`.

*Frage 19*:
Der Compiler in C++ übersetzt den Quellcode in ausführbaren Maschinencode. Er führt eine syntaktische und semantische Überprüfung des Codes durch und erstellt eine ausführbare Datei.

*Frage 20*:
Der Linker in C++ verbindet die übersetzten Objektdateien zusammen, um eine ausführbare Datei oder ein ausführbares Programm zu erstellen. Er löst externe Verweise auf Funktionen und Variablen auf, die in verschiedenen Dateien definiert sind.