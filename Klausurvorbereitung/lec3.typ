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
== Mehrfache Elemente und Element-Identität in Sets
Sets in C++ sind Container-Klassen, die eine geordnete Sammlung eindeutiger Elemente speichern. Wenn Elemente zu einem Set hinzugefügt werden, werden Duplikate automatisch entfernt, da ein Set keine doppelten Elemente zulässt. Elemente werden in aufsteigender Reihenfolge gespeichert, um eine schnelle Suche und den Zugriff zu ermöglichen.
=== Hinzufügen von Elementen in ein Set:
Wenn wir Elemente zu einem Set hinzufügen, wird automatisch geprüft, ob das Element bereits im Set vorhanden ist. Falls ja, wird das Element nicht erneut hinzugefügt. Dadurch wird sichergestellt, dass das Set immer nur eindeutige Elemente enthält.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<int> mySet;

    mySet.insert(10);
    mySet.insert(20);
    mySet.insert(10); // Wird ignoriert, da 10 bereits im Set vorhanden ist

    for (int num : mySet) {
        std::cout << num << " ";
    }

    return 0;
}```)

Die Ausgabe dieses Beispiels wird sein: 10 20, da das doppelte Hinzufügen des Elements "10" ignoriert wird.
=== Suchen nach Elementen in einem Set:
Bei der Suche nach Elementen in einem Set können wir die Methode find() verwenden, um nach einem bestimmten Wert zu suchen. Wenn das Element im Set vorhanden ist, gibt find() einen Iterator zurück, der auf das gesuchte Element zeigt. Wenn das Element nicht gefunden wird, gibt find() den Iterator, der auf das Ende des Sets zeigt (mySet.end()), zurück.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<std::string> mySet = {"Apple", "Banana", "Orange"};

    std::set<std::string>::iterator it = mySet.find("Banana");
    if (it != mySet.end()) {
        std::cout << "Element gefunden: " << *it << std::endl;
    } else {
        std::cout << "Element nicht gefunden." << std::endl;
    }

    return 0;
}
```)
Die Ausgabe dieses Beispiels wird sein: Element gefunden: Banana, da "Banana" im Set vorhanden ist.
=== Element-Identität und Sortierung in einem Set:
Sets in C++ werden in aufsteigender Reihenfolge gespeichert, um eine schnelle Suche und den Zugriff zu ermöglichen. Die Sortierung basiert auf dem kleiner-als-Vergleichsoperator (<), den die Elemente unterstützen müssen, damit sie im Set verwendet werden können.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <set>

int main() {
    std::set<std::string> mySet = {"Orange", "Banana", "Apple"};

    for (const std::string& fruit : mySet) {
        std::cout << fruit << " ";
    }

    return 0;
}
```)
Die Ausgabe dieses Beispiels wird sein: Apple Banana Orange, da die Elemente in aufsteigender Reihenfolge gespeichert werden.

Sets bieten eine effiziente Möglichkeit, eine eindeutige Sammlung von Elementen zu speichern und darauf zuzugreifen. Sie entfernen automatisch Duplikate und stellen sicher, dass die Elemente in einer geordneten Reihenfolge gespeichert werden. Sets sind nützlich, wenn Sie eine eindeutige Liste von Elementen benötigen und deren Reihenfolge bei der Speicherung beibehalten möchten.
== Maps in C++
Maps in C++ sind Container-Klassen, die eine Menge von Schlüssel-Wert-Paaren speichern. Jeder Schlüssel in einer Map muss eindeutig sein, und die Elemente werden nach den Schlüsseln sortiert, um eine schnelle Suche und den Zugriff zu ermöglichen. Maps sind ähnlich wie Sets, jedoch speichern sie nicht nur eindeutige Werte, sondern verknüpfen diese auch mit bestimmten Schlüsseln.
=== Erstellen einer Map
Um eine Map in C++ zu verwenden, müssen wir die <map>-Header-Datei inkludieren und den Container-Typ std::map verwenden. Der Typ des Schlüssels und der Wert müssen ebenfalls angegeben werden.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <map>

int main() {
    std::map<std::string, int> myMap;

    // Schlüssel-Wert-Paare hinzufügen
    myMap["Alice"] = 25;
    myMap["Bob"] = 30;
    myMap["Charlie"] = 22;

    for (const auto& entry : myMap) {
        std::cout << entry.first << ": " << entry.second << std::endl;
    }

    return 0;
}```)
Die Ausgabe dieses Beispiels wird sein:

Alice: 25
Bob: 30
Charlie: 22

=== Elemente in einer Map suchen und zugreifen
Das Suchen nach Elementen in einer Map kann mithilfe des Schlüssels erfolgen. Die Methode find() gibt einen Iterator zurück, der auf das gesuchte Schlüssel-Wert-Paar zeigt. Wenn das Element nicht gefunden wird, gibt find() den Iterator, der auf das Ende der Map zeigt (myMap.end()), zurück.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <map>

int main() {
    std::map<std::string, int> myMap;

    myMap["Alice"] = 25;
    myMap["Bob"] = 30;
    myMap["Charlie"] = 22;

    std::map<std::string, int>::iterator it = myMap.find("Bob");
    if (it != myMap.end()) {
        std::cout << "Alter von Bob: " << it->second << std::endl;
    } else {
        std::cout << "Bob nicht gefunden." << std::endl;
    }

    return 0;
}
```)
Die Ausgabe dieses Beispiels wird sein:

Alter von Bob: 30

=== Elemente in einer Map löschen
Das Löschen von Elementen aus einer Map kann mit der Methode erase() erfolgen, indem der Schlüssel angegeben wird, der gelöscht werden soll.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <map>

int main() {
    std::map<std::string, int> myMap;

    myMap["Alice"] = 25;
    myMap["Bob"] = 30;
    myMap["Charlie"] = 22;

    myMap.erase("Bob");

    for (const auto& entry : myMap) {
        std::cout << entry.first << ": " << entry.second << std::endl;
    }

    return 0;
}
```)
Die Ausgabe dieses Beispiels wird sein:

Alice: 25
Charlie: 22

=== Überprüfen, ob ein Schlüssel in der Map vorhanden ist
Wir können mit der Methode count() überprüfen, ob ein bestimmter Schlüssel in der Map vorhanden ist. Diese Methode gibt 1 zurück, wenn der Schlüssel gefunden wird, oder 0, wenn der Schlüssel nicht gefunden wird.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <map>

int main() {
    std::map<std::string, int> myMap;

    myMap["Alice"] = 25;
    myMap["Bob"] = 30;
    myMap["Charlie"] = 22;

    if (myMap.count("Alice") > 0) {
        std::cout << "Alice ist in der Map." << std::endl;
    } else {
        std::cout << "Alice ist nicht in der Map." << std::endl;
    }

    if (myMap.count("David") > 0) {
        std::cout << "David ist in der Map." << std::endl;
    } else {
        std::cout << "David ist nicht in der Map." << std::endl;
    }

    return 0;
}
```)
Die Ausgabe dieses Beispiels wird sein:

Alice ist in der Map.
David ist nicht in der Map.

Maps sind nützlich, um Schlüssel-Wert-Paare zu speichern und effizient darauf zuzugreifen. Sie bieten eine schnelle Suche nach einem bestimmten Schlüssel und sind ideal, wenn Sie Elemente basierend auf einem Schlüssel verknüpfen müssen. Maps sind eine wichtige Komponente der C++-Standardbibliothek und finden in vielen Anwendungsfällen Anwendung, bei denen die Daten nach dem Schlüssel organisiert und verwaltet werden müssen.
= Zusammenfassung
== C++-Arrays vs. Vector und andere Elemente der STL
C++-Arrays sind statische Container, deren Größe zur Compile-Zeit festgelegt wird. Sie bieten schnellen Zugriff, aber sie sind nicht so flexibel in der Größenänderung.

Vektoren (std::vector) sind dynamische Container, deren Größe zur Laufzeit verändert werden kann. Sie sind vielseitiger als C++-Arrays und bieten ähnliche Funktionen. Um Vektoren zu verwenden, muss der <vector>-Header inkludiert werden.

Die Standard Template Library (STL) enthält viele nützliche Container und Algorithmen, die die Arbeit mit Daten in C++ erleichtern. Dazu gehören Vektoren, Listen, Sets, Maps und mehr.

== Iteratoren

Iteratoren sind Objekte, die es ermöglichen, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen. Sie sind nützlich, um auf die Elemente zuzugreifen, sie zu bearbeiten oder nach bestimmten Werten zu suchen.

Iteratoren können verwendet werden, um den Inhalt eines Containers zu durchlaufen, indem sie auf die Anfangs- und Endposition des Containers verweisen. Diese sind als begin() und end() Methoden im Container verfügbar.

Mit dem Iterator it können wir auf den Wert eines Elements zugreifen, auf das it zeigt, indem wir `*it` verwenden.

== Listen

Listen (std::list) sind doppelt verkettete Listen, die eine effiziente Einfügung und Löschung von Elementen am Anfang, am Ende oder irgendwo innerhalb der Liste ermöglichen. Um Listen zu verwenden, muss der <list>-Header inkludiert werden.

== Arrays aus der STL

Arrays (std::array) in der STL sind statische Container, deren Größe zur Compile-Zeit festgelegt wird und die ähnliche Funktionen wie C++-Arrays bieten. Sie ermöglichen jedoch eine sicherere Nutzung und Interoperabilität mit STL-Algorithmen. Um Arrays zu verwenden, muss der <array>-Header inkludiert werden.

== Sets

Sets (std::set) sind Container, die eine geordnete Sammlung eindeutiger Elemente speichern. Wenn Elemente zu einem Set hinzugefügt werden, werden Duplikate automatisch entfernt, da ein Set keine doppelten Elemente zulässt. Elemente werden in aufsteigender Reihenfolge gespeichert, um eine schnelle Suche und den Zugriff zu ermöglichen.

Wir können Elemente zu einem Set hinzufügen, nach einem bestimmten Wert suchen, Elemente aus einem Set löschen und überprüfen, ob ein bestimmtes Element in einem Set vorhanden ist.

== Mehrfache Elemente und Element-Identität in Sets

Wenn wir Elemente zu einem Set hinzufügen, wird automatisch geprüft, ob das Element bereits im Set vorhanden ist. Falls ja, wird das Element nicht erneut hinzugefügt. Dadurch wird sichergestellt, dass das Set immer nur eindeutige Elemente enthält.

Bei der Suche nach Elementen in einem Set können wir die Methode find() verwenden, um nach einem bestimmten Wert zu suchen. Wenn das Element im Set vorhanden ist, gibt find() einen Iterator zurück, der auf das gesuchte Element zeigt. Wenn das Element nicht gefunden wird, gibt find() den Iterator, der auf das Ende des Sets zeigt (mySet.end()), zurück.

== Maps

Maps (std::map) sind Container-Klassen, die eine Menge von Schlüssel-Wert-Paaren speichern. Jeder Schlüssel in einer Map muss eindeutig sein, und die Elemente werden nach den Schlüsseln sortiert, um eine schnelle Suche und den Zugriff zu ermöglichen.

Wir können Schlüssel-Wert-Paare zu einer Map hinzufügen, nach einem bestimmten Schlüssel suchen, Schlüssel-Wert-Paare aus einer Map löschen und überprüfen, ob ein bestimmter Schlüssel in einer Map vorhanden ist.

Die in Lektion 3 behandelten Themen bieten eine solide Grundlage für das Arbeiten mit Container-Klassen und Iteratoren in C++. Sie ermöglichen eine effiziente Verwaltung und Organisation von Daten in Programmen und bieten vielfältige Möglichkeiten zur Durchführung von Operationen auf den enthaltenen Elementen.
= Fragen
== Multiple Choice
*Frage 1*: Was ist der Hauptunterschied zwischen C++-Arrays und Vektoren in der STL?
+ C++-Arrays können zur Laufzeit ihre Größe ändern, während Vektoren eine feste Größe haben.
+ Vektoren können Duplikate von Elementen speichern, während C++-Arrays nur eindeutige Elemente erlauben.
+ C++-Arrays sind statische Container, während Vektoren dynamische Container sind.
+ Vektoren können nur Elemente vom Typ int speichern, während C++-Arrays verschiedene Datentypen unterstützen.

*Frage 2*: Welche Header-Datei muss in C++ inkludiert werden, um Vektoren zu verwenden?
+ <vector>
+ <array>
+ <list>
+ <set>

*Frage 3*: Was ist ein Iterator in C++?
+ Ein Iterator ist ein Zeiger auf ein Element in einem C++-Array.
+ Ein Iterator ist ein Zeiger auf eine Funktion in einem C++-Programm.
+ Ein Iterator ist ein Objekt, das es ermöglicht, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen.
+ Ein Iterator ist eine Art Schleife in C++, die durch eine Bedingung gesteuert wird.

*Frage 4*: Wie kann auf den Wert eines Elements, auf das ein Iterator zeigt, zugegriffen werden?
+ Durch die Verwendung von (`*it`)
+ Durch die Verwendung von it.value()
+ Durch die Verwendung von it.element()
d) Durch die Verwendung von it->value

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
+ <vector>
+ <map>
+ <set>
+ <array>

*Frage 11*: Welche der folgenden Aussagen über C++-Arrays und Vektoren in der STL ist korrekt?
a) C++-Arrays sind dynamische Container, während Vektoren eine feste Größe haben.
b) C++-Arrays bieten eine effiziente Möglichkeit, Elemente einzufügen und zu löschen, während Vektoren dafür weniger geeignet sind.
c) Vektoren können verschiedene Datentypen speichern, während C++-Arrays nur einen Datentyp unterstützen.
d) C++-Arrays und Vektoren sind im Grunde genommen gleich und können in den meisten Fällen austauschbar verwendet werden.

*Frage 12*: Welche der folgenden Aussagen über Iteratoren in C++ ist falsch?
a) Iteratoren bieten eine Möglichkeit, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen.
b) Ein Iterator ist im Wesentlichen ein Zeiger auf ein Element im Container.
c) Es ist sicher, auf einen Iterator zuzugreifen, der über das Ende des Containers hinauszeigt.
d) Iteratoren ermöglichen es, auf den Wert eines Elements zuzugreifen, indem `*it` verwendet wird.

*Frage 13*: Welche Container-Klasse in der STL ist am besten geeignet, wenn häufige Einfügungen und Löschungen von Elementen am Anfang und Ende des Containers vorkommen?
a) Vector
b) Map
c) List
d) Set

*Frage 14*: Welche der folgenden Aussagen über Sets in der STL ist korrekt?
a) Sets sind Container, die doppelte Elemente erlauben, da sie keine Duplikate entfernen.
b) Die Methode find() in einem Set gibt immer den Iterator zurück, der auf das gesuchte Element zeigt.
c) Sets sind nicht geordnete Container, und ihre Elemente werden zufällig angeordnet.
d) Ein Set kann auch Null-Elemente enthalten, wenn sie explizit hinzugefügt wurden.

*Frage 15*: Welche Methode in einer Map in der STL ermöglicht es, den Wert eines bestimmten Schlüssels zu ändern?
a) modify()
b) update()
c) set()
d) operator[]

*Frage 16*: Was passiert, wenn wir ein Element zu einer Map in der STL hinzufügen und das Element bereits mit demselben Schlüssel vorhanden ist?
a) Das Element wird durch das neue Element ersetzt.
b) Das Element wird ignoriert, und die ursprüngliche Zuordnung bleibt unverändert.
c) Das Element wird gelöscht, und das neue Element wird am Ende der Map hinzugefügt.
d) Das Element wird an den Anfang der Map verschoben.

*Frage 17*: Welche Methode in einem Set in der STL überprüft, ob ein bestimmtes Element vorhanden ist, und gibt eine Anzahl zurück, wie oft es im Set vorkommt?
a) exists()
b) count()
c) size()
d) contains()

=== Übersicht der richtigen Antworten:
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
== Erklärungen
*Frage 1*: Erläutere den Unterschied zwischen einem C++-Array und einem Vector in der STL. Wann sollte man jeweils einen Array oder einen Vector verwenden und warum?

*Frage 2*: Beschreibe den Zweck und die Funktionsweise von Iteratoren in C++. Welche Vorteile bieten Iteratoren gegenüber herkömmlichen Schleifen wie for und while?

*Frage 3*: Erkläre, was eine Liste (std::list) in der STL ist und wie sie intern implementiert ist. Nenne mindestens zwei Szenarien, in denen der Einsatz einer Liste gegenüber einem Vector sinnvoll wäre.

*Frage 4*: Stelle die Unterschiede zwischen einem Array aus der STL (std::array) und einem C++-Array dar. Welche Vorteile bietet std::array gegenüber C++-Arrays und in welchen Situationen wäre die Verwendung von C++-Arrays angemessen?

*Frage 5*: Beschreibe die Funktionsweise eines Sets in der STL. Nenne mindestens zwei Eigenschaften von Sets, die sie von anderen Containern in der STL unterscheiden.

=== Antworten:
*Frage 1*: C++-Arrays sind statische Container mit fester Größe, während Vektoren dynamische Container sind und ihre Größe zur Laufzeit ändern können. Arrays sind geeignet, wenn die Größe zur Compile-Zeit bekannt ist und schnelleren Zugriff ermöglichen. Vektoren sind flexibler, wenn Größenänderungen erforderlich sind.

*Frage 2*: Iteratoren sind Objekte, die es ermöglichen, durch die Elemente eines Containers zu iterieren, ohne die interne Implementierung des Containers zu kennen. Sie bieten eine abstrahierte Schnittstelle, um auf Elemente zuzugreifen und erleichtern die Arbeit mit verschiedenen Containertypen. Im Gegensatz zu herkömmlichen Schleifen erlauben Iteratoren einen allgemeineren Zugriff auf Containerdaten und sind weniger fehleranfällig.

*Frage 3*: Eine Liste in der STL ist eine doppelt verkettete Liste, bei der jedes Element einen Zeiger auf das vorherige und das nächste Element enthält. Sie ermöglicht effiziente Einfügung und Löschung von Elementen am Anfang, am Ende und überall innerhalb der Liste. Listen eignen sich gut, wenn häufige Einfügungen und Löschungen in der Mitte des Containers vorkommen und wenn Iterator-Invalidierungen minimiert werden müssen.

*Frage 4*: Ein Array aus der STL (std::array) ist ein statischer Container mit fester Größe, dessen Größe zur Compile-Zeit festgelegt wird. Im Gegensatz dazu sind C++-Arrays dynamische Container, deren Größe zur Laufzeit festgelegt werden kann. std::array bietet mehr Sicherheit und Kompatibilität mit STL-Algorithmen, während C++-Arrays für spezifische Größen oder situationsbedingte Größenänderungen verwendet werden können.

*Frage 5*: Sets in der STL sind Container, die eine geordnete Sammlung eindeutiger Elemente speichern. Sie sortieren die Elemente aufsteigend, um schnellen Zugriff und Suche zu ermöglichen. Sets erlauben keine Duplikate, sodass jedes Element im Set eindeutig ist. Die Suche nach Elementen in einem Set ist besonders effizient, da die Elemente in einer Baumstruktur organisiert sind.
