#let boxed(term) = block(
 fill: luma(230),
 inset: 8pt,
 radius: 4pt,
 term
)
= Container und Iteratoren
== C-ARRAYS VS. VECTOR UND ANDERE ELEMENTE DER STL
In C++ stehen mehrere Möglichkeiten zur Verfügung, um eine Sammlung von Elementen zu speichern und zu verwalten. Zu den häufig verwendeten Optionen gehören C-Arrays und Vektoren aus der Standard Template Library (STL). Beide bieten die Möglichkeit, mehrere Elemente desselben Datentyps zu speichern, aber sie haben einige Unterschiede in ihrer Funktionalität und Verwendung.

=== C-Arrays:

    C-Arrays sind eine grundlegende Form der Datenspeicherung in C++. Sie sind eine Sammlung von Elementen des gleichen Datentyps, die in einem zusammenhängenden Speicherbereich gespeichert werden. C-Arrays haben eine feste Größe, die bei ihrer Deklaration angegeben werden muss. Einmal deklariert, kann die Größe des Arrays nicht geändert werden. Die Größe eines C-Arrays ist zur Kompilierzeit festgelegt.

    Beispiel für ein C-Array:

    #boxed(```cpp

#include <iostream>

int main() {
    int myArray[5] = {1, 2, 3, 4, 5};

    for (int i = 0; i < 5; ++i) {
        std::cout << myArray[i] << " ";
    }

    return 0;
}```)

C-Arrays haben einige Einschränkungen, wie zum Beispiel das Fehlen von Methoden zur Größenänderung oder zur einfachen Verwaltung. Es liegt in der Verantwortung des Entwicklers, sicherzustellen, dass C-Arrays nicht über ihre Grenzen hinaus zugreifen.

=== Vektoren (std::vector):

Vektoren sind ein Teil der Standard Template Library (STL) in C++. Sie bieten eine dynamische Sammlung von Elementen des gleichen Datentyps und können während der Laufzeit ihre Größe ändern. Im Gegensatz zu C-Arrays sind Vektoren flexibel und ermöglichen das Hinzufügen und Entfernen von Elementen, ohne dass man sich um Speichermanagement kümmern muss. Die Größe eines Vektors kann zur Laufzeit geändert werden.

Beispiel für einen Vector:

#boxed(```cpp

#include <iostream>
#include <vector>

int main() {
    std::vector<int> myVector = {1, 2, 3, 4, 5};
    myVector.push_back(6); // Element am Ende hinzufügen

    for (int num : myVector) {
        std::cout << num << " ";
    }

    return 0;
}
```)
Vektoren bieten auch viele nützliche Methoden zur Datenmanipulation, wie push_back(), pop_back(), size(), empty() und andere. Die Verwendung von Vektoren wird allgemein empfohlen, da sie sicherer und flexibler sind als C-Arrays.

=== Andere Elemente der STL:

Neben Vektoren bietet die STL viele andere nützliche Container-Typen und Funktionen. Einige der wichtigsten sind:

    std::list: Doppelt verkettete Listen für effizientes Einfügen und Löschen von Elementen.
    std::map: Assoziative Container für eindeutige Zuordnung von Schlüsseln zu Werten.
    std::set: Ein Set von eindeutigen Elementen ohne Duplikate.
    std::unordered_map und std::unordered_set: Ähnlich wie std::map und std::set, aber mit schnellerem Zugriff durch Hashing.
    std::stack und std::queue: Container-Adapter für Stapel und Warteschlangen.
    std::algorithm: Eine Reihe von nützlichen Algorithmen wie std::sort, std::find, std::reverse usw.

Beispiel für die Verwendung von std::map:

#boxed(```cpp

    #include <iostream>
    #include <map>

    int main() {
        std::map<std::string, int> myMap = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 27}};

        for (auto entry : myMap) {
            std::cout << entry.first << ": " << entry.second << std::endl;
        }

        return 0;
    }
```)
    Die STL bietet eine reichhaltige Sammlung von Containern und Funktionen, die die Entwicklung von C++-Programmen vereinfachen und die Produktivität steigern.

Die Entscheidung, ob man C-Arrays oder Vektoren verwendet, hängt von den Anforderungen des Programms ab. In den meisten Fällen sind Vektoren aufgrund ihrer Flexibilität und Sicherheit die bevorzugte Wahl in modernen C++-Programmen. Die STL-Container bieten außerdem eine leistungsfähige und gut getestete Alternative zur Verwaltung von Datenstrukturen und -sammlungen in C++.

== Iteratoren in C++
Iteratoren sind ein leistungsfähiges Konzept in C++, das es ermöglicht, durch die Elemente von Containern wie Vektoren, Listen und Maps zu iterieren. Ein Iterator kann als Zeiger auf ein Element in einem Container betrachtet werden. Er ermöglicht den Zugriff auf das Element, auf das er zeigt, und bietet die Möglichkeit, innerhalb des Containers zu navigieren.

=== Iteratoren in Vektoren:

Vektoren sind dynamische Arrays, die in der STL implementiert sind und eine flexible Möglichkeit bieten, Elemente zu speichern und zu verwalten. Iteratoren für Vektoren ermöglichen es, die Elemente im Vektor zu durchlaufen, und sie sind eine sicherere Alternative zum Zugriff über den Index.

Beim Zugriff auf Vektoren können zwei Arten von Iteratoren verwendet werden:
- begin(): Gibt einen Iterator zurück, der auf das erste Element im Vektor zeigt.
- end(): Gibt einen Iterator zurück, der auf ein Element nach dem letzten Element im Vektor zeigt. Dieser Iterator dient als Marker, der angibt, dass die Schleife beendet werden sollte.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> myVector = {1, 2, 3, 4, 5};

    // Durchlaufen des Vektors mit einem Iterator
    for (std::vector<int>::iterator it = myVector.begin(); it != myVector.end(); ++it) {
        std::cout << *it << " ";
    }

    return 0;
}```)
In modernen C++-Versionen kann die Verwendung von Iteratoren durch die Verwendung von auto vereinfacht werden:
#boxed(```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> myVector = {1, 2, 3, 4, 5};

    // Durchlaufen des Vektors mit einem Iterator und 'auto'
    for (auto it = myVector.begin(); it != myVector.end(); ++it) {
        std::cout << *it << " ";
    }

    return 0;
}
```)
=== Iteratoren in Listen:
Listen sind doppelt verkettete Listen in der STL, die Einfügen und Löschen von Elementen effizient unterstützen. Ähnlich wie bei Vektoren können Iteratoren verwendet werden, um durch die Elemente der Liste zu iterieren.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <list>

int main() {
    std::list<int> myList = {1, 2, 3, 4, 5};

    // Durchlaufen der Liste mit einem Iterator
    for (std::list<int>::iterator it = myList.begin(); it != myList.end(); ++it) {
        std::cout << *it << " ";
    }

    return 0;
}
```)
Wie bei Vektoren kann auch hier die moderne Syntax mit auto verwendet werden:
#boxed(```cpp
#include <iostream>
#include <list>

int main() {
    std::list<int> myList = {1, 2, 3, 4, 5};

    // Durchlaufen der Liste mit einem Iterator und 'auto'
    for (auto it = myList.begin(); it != myList.end(); ++it) {
        std::cout << *it << " ";
    }

    return 0;
}
```)
=== Iteratoren in Maps:
Maps sind assoziative Container in der STL, die eine eindeutige Zuordnung zwischen Schlüsseln und Werten bieten. Iteratoren in Maps sind auf ein Paar von Schlüssel-Wert-Paaren ausgerichtet.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <map>

int main() {
    std::map<std::string, int> myMap = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 27}};

    // Durchlaufen der Map mit einem Iterator
    for (std::map<std::string, int>::iterator it = myMap.begin(); it != myMap.end(); ++it) {
        std::cout << it->first << ": " << it->second << std::endl;
    }

    return 0;
}
```)
Die moderne Syntax mit auto kann auch hier verwendet werden:
#boxed(```cpp
#include <iostream>
#include <map>

int main() {
  std::map<std::string, int> myMap = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 27}};

 // Durchlaufen der Map mit einem Iterator und 'auto'
 for (auto it = myMap.begin(); it != myMap.end(); ++it) {
   std::cout << it->first << ": " << it->second << std::endl;
 }

 return 0;
}
```)
Iteratoren ermöglichen eine effiziente und sichere Möglichkeit, auf die Elemente in Containern zuzugreifen und sie zu durchlaufen. Sie sind in vielen Situationen nützlich, wenn es darum geht, mit Datenstrukturen zu arbeiten und ihre Elemente zu verwalten. Iteratoren sind ein wesentlicher Bestandteil der C++-Programmierung und erleichtern die Manipulation von Containern erheblich.
== Listen in C++
Listen sind eine wichtige Datenstruktur in C++, die in der Standard Template Library (STL) implementiert ist. Eine Liste ist eine doppelt verkettete Liste, bei der jedes Element auf das vorherige und das nächste Element verweist. Listen bieten effiziente Einfüge- und Löschoperationen und eignen sich gut für Szenarien, in denen häufiges Einfügen oder Löschen von Elementen erforderlich ist.
=== Erstellen einer Liste:
Um eine Liste in C++ zu erstellen, müssen wir die <list> Header-Datei inkludieren und den Container-Typ std::list verwenden. Der Typ der Elemente, die in der Liste gespeichert werden, muss ebenfalls angegeben werden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <list>

int main() {
    std::list<int> myList; // Eine leere Liste von Ganzzahlen

    // Elemente zur Liste hinzufügen
    myList.push_back(10);
    myList.push_back(20);
    myList.push_back(30);
    myList.push_front(5);

    // Durchlaufen der Liste mit einem Iterator und Ausgabe der Elemente
    for (std::list<int>::iterator it = myList.begin(); it != myList.end(); ++it) {
        std::cout << *it << " ";
    }

    return 0;
}```)
=== Einfügen von Elementen in eine Liste:
Listen unterstützen zwei grundlegende Möglichkeiten zum Einfügen von Elementen: push_back() und push_front(). push_back() fügt ein Element am Ende der Liste ein, während push_front() ein Element am Anfang der Liste einfügt.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <list>

int main() {
    std::list<std::string> myList;

    myList.push_back("Alice");
    myList.push_back("Bob");
    myList.push_front("Charlie");

    for (const std::string& name : myList) {
        std::cout << name << " ";
    }

    return 0;
}
```)
=== Löschen von Elementen aus einer Liste:
Das Löschen von Elementen aus einer Liste kann mit den Methoden pop_back() und pop_front() erfolgen. pop_back() entfernt das letzte Element der Liste, während pop_front() das erste Element der Liste entfernt.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <list>

int main() {
    std::list<int> myList = {10, 20, 30, 40, 50};

    myList.pop_back();
    myList.pop_front();

    for (int num : myList) {
        std::cout << num << " ";
    }

    return 0;
}
```)
=== Suchen in einer Liste:
Um ein bestimmtes Element in einer Liste zu suchen, können wir eine Schleife mit einem Iterator verwenden, um durch die Liste zu iterieren und das gewünschte Element zu finden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <list>

int main() {
    std::list<std::string> myList = {"Alice", "Bob", "Charlie", "Alice"};

    // Suchen nach dem ersten Vorkommen von "Alice"
    for (std::list<std::string>::iterator it = myList.begin(); it != myList.end(); ++it) {
        if (*it == "Alice") {
            std::cout << "Alice gefunden!" << std::endl;
            break;
        }
    }

    return 0;
}
```)
Listen bieten eine effiziente Möglichkeit, Elemente hinzuzufügen und zu löschen, insbesondere wenn die Elemente häufig in der Mitte der Liste eingefügt oder entfernt werden müssen. Die doppelt verkettete Struktur der Liste ermöglicht es, auf die vorherigen und nächsten Elemente effizient zuzugreifen. Listen sind in vielen Szenarien nützlich, wie z.B. wenn Elemente in der Reihenfolge ihrer Einfügung gespeichert werden müssen und häufige Einfüge- und Löschoperationen erforderlich sind.
== Arrays aus der STL (std::array)
Ein "std::array" ist ein Container-Typ aus der Standard Template Library (STL) in C++, der eine feste Größe hat und zur Kompilierzeit dimensioniert wird. Es bietet eine moderne und sichere Alternative zu herkömmlichen C-Arrays, da es die Größe des Arrays während der Laufzeit überwacht und sicherstellt, dass keine Zugriffsverletzungen auftreten.
=== Erstellen eines std::array:
Um ein "std::array" zu erstellen, müssen wir die <array>-Header-Datei inkludieren und den Container-Typ std::array verwenden. Der Typ der Elemente, die im Array gespeichert werden, muss ebenfalls angegeben werden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <array>

int main() {
    std::array<int, 5> myArray = {1, 2, 3, 4, 5};

    for (int num : myArray) {
        std::cout << num << " ";
    }

    return 0;
}```)

In diesem Beispiel haben wir ein "std::array" mit dem Namen "myArray" erstellt, das fünf Ganzzahlen enthält.

=== Zugriff auf Elemente eines std::array:
Der Zugriff auf die Elemente eines "std::array" erfolgt ähnlich wie bei C-Arrays über den Index. Beachten Sie jedoch, dass "std::array" bei Verwendung des Index-Operators ([]) die Grenzen überprüft und einen Laufzeitfehler (Out-of-Bounds-Exception) auslöst, wenn versucht wird, auf ein ungültiges Element zuzugreifen.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <array>

int main() {
    std::array<int, 5> myArray = {1, 2, 3, 4, 5};

    // Zugriff auf Elemente über den Index-Operator
    std::cout << myArray[0] << std::endl; // 1
    std::cout << myArray[3] << std::endl; // 4
    // std::cout << myArray[6] << std::endl; // Fehler: Index 6 liegt außerhalb des gültigen Bereichs

    return 0;
}
```)
=== Größe eines std::array:
Die Größe eines "std::array" kann zur Kompilierzeit mithilfe der Methode size() ermittelt werden. Da die Größe zur Kompilierzeit festgelegt wird, kann sie nicht während der Laufzeit geändert werden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <array>

int main() {
    std::array<int, 5> myArray = {1, 2, 3, 4, 5};

    std::cout << "Größe des Arrays: " << myArray.size() << std::endl; // 5

    return 0;
}
```)
"std::array" bietet eine sicherere Alternative zu herkömmlichen C-Arrays, da es die Größe des Arrays zur Kompilierzeit kennt und sicherstellt, dass der Zugriff auf gültige Elemente erfolgt. Es ist in modernen C++-Programmen beliebt und wird empfohlen, wenn eine feste Größe und eine sicherere Datenstruktur erforderlich sind. "std::array" kann in vielen Situationen verwendet werden, in denen die Größe des Arrays zur Kompilierzeit bekannt ist und keine dynamische Größenänderung erforderlich ist.
== Sets in C++
Ein Set ist eine Container-Klasse in C++, die eine geordnete Sammlung einzigartiger Elemente enthält. In einem Set können keine Duplikate von Elementen vorkommen, und die Elemente werden in aufsteigender Reihenfolge gespeichert. Das Thema "Sets" ist wichtig, um eindeutige Elemente zu speichern und effizient auf sie zuzugreifen. 
=== Erstellen eines Sets:
Um ein Set in C++ zu verwenden, müssen wir die <set>-Header-Datei inkludieren und den Container-Typ std::set verwenden. Der Typ der Elemente, die im Set gespeichert werden, muss ebenfalls angegeben werden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<int> mySet = {5, 2, 8, 3, 1};

    for (int num : mySet) {
        std::cout << num << " ";
    }

    return 0;
}```)
In diesem Beispiel haben wir ein Set mit dem Namen "mySet" erstellt und mit einigen Ganzzahlen initialisiert.
=== Einfügen von Elementen in ein Set:
Das Einfügen von Elementen in ein Set kann mit der Methode insert() erfolgen. Da Sets keine Duplikate zulassen, wird ein bereits vorhandenes Element nicht erneut hinzugefügt.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<std::string> mySet;

    mySet.insert("Apple");
    mySet.insert("Banana");
    mySet.insert("Orange");
    mySet.insert("Apple"); // Wird ignoriert, da "Apple" bereits im Set vorhanden ist

    for (const std::string& fruit : mySet) {
        std::cout << fruit << " ";
    }

    return 0;
}
```)
=== Löschen von Elementen aus einem Set:

Das Löschen von Elementen aus einem Set kann mit der Methode erase() erfolgen, indem das Element angegeben wird, das gelöscht werden soll.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<int> mySet = {1, 2, 3, 4, 5};

    mySet.erase(3); // Löscht das Element mit dem Wert 3

    for (int num : mySet) {
        std::cout << num << " ";
    }

    return 0;
}
```)
=== Suchen in einem Set:
Um nach einem bestimmten Element in einem Set zu suchen, können wir die Methode find() verwenden. Diese Methode gibt einen Iterator zurück, der auf das gesuchte Element zeigt. Wenn das Element nicht gefunden wird, gibt find() den Iterator, der auf das Ende des Sets zeigt (mySet.end()), zurück.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<int> mySet = {1, 2, 3, 4, 5};

    std::set<int>::iterator it = mySet.find(3);
    if (it != mySet.end()) {
        std::cout << "Element gefunden: " << *it << std::endl;
    } else {
        std::cout << "Element nicht gefunden." << std::endl;
    }
    return 0;
    }
```)
Sets sind nützlich, wenn eine geordnete Sammlung von eindeutigen Elementen benötigt wird. Sie eignen sich gut für Aufgaben wie das Entfernen von Duplikaten aus einer Liste von Elementen oder das schnelle Suchen nach bestimmten Werten. Die Verwendung eines Sets erfordert in der Regel ein gewisses Verständnis der Sortierung der Elemente und ihrer Einzigartigkeit. Sets sind eine wertvolle Ergänzung der C++-Standardbibliothek und bieten eine effiziente Implementierung, um eindeutige Daten zu verwalten.