![WSB](LOGO)

# Programowanie aplikacji w Java

## Maciej Gowin

### Zjazd 1 - zadania dodatkowe

---

# Linki

#### Opis
https://maciejgowin.github.io/wsb-java/

#### Kod źródłowy przykładów oraz zadań
https://github.com/MaciejGowin/wsb-programowanie-aplikacji-java

---
# Zadania dodatkowe

Wszystkie zadanie dodatkowe zostały stworzone z myślą utrwalenia materiału przerobionego na zjeździe. Chociaż mogą one zostać rozwiązane na wiele sposobów, zostały skonstruowane w sposób umożliwiający ukończenie ich jedynie przy użyciu poznanych już technik.

---
# **Programowanie: zadanie dodatkowe 01**

Stwórz klasę `Person` zawierającą własności `String firstName` oraz `String lastName`. Klasa ta powinna posiadać metody:
- `String getFullName()` pobierającą pełne imię i nazwisko osoby przedzielonego spacją
  - w przypadku braku danej wartości powinna ona zostać pominięta
  - dla przykładu: `Maciej Gowin`, `Gowin`
- statyczną `Person constructPerson(String firstName, String lastName)` tworzącą nową instancję `Person`

W metodzie `main` zainicjalizuj tablicę osób przy pomocy `constructPerson`. Zdefiniuj metodę statyczną: `familyMembers(String lastName, Person[] persons)` wypisującą osoby o danym nazwisku.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 02**

Zdefiniuj statyczną metodę `String[] reverse(String[] items)` odwracającą kolejność elementów w tablicy. Dodatkowe zdefiniuj metodę statyczną `void print(String[] items)` wypisującą elementy w tablicy w formacie `Table: element1 element2 element3`.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 03**

Zdefiniuj statyczną metodę `int max(int[] items)` wyszukującą największą wartości w tablicy. Dla pustej tablicy zwróć wartość `0`.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 04**

Zdefiniuj klasę `DynamicTable` imitującą zachowanie dynamicznej tabeli wartości typu `double` zmieniającej swój rozmiar. Klasa powinna posiadać następujące metody:
- `void addItem(double newItem)` dodającą nową wartość na koniec tabeli
- `void deleteItem(int deleteIndex)` usuwającą element pod danym indeksem, w przypadku indeksów poza zakresem operacja powinna zostać pominięta
- `String toString()` zwracającą tekstową reprezentację tablicy, dla przykładu: `[1.0, 2.0, 3.0]`

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 05**

Zdefiniuj klasę `UniqueTable` imitującą zachowanie dynamicznej tabeli z unikatowymi wartościami typu `double` zmieniającej swój rozmiar. Klasa powinna posiadać następujące metody:
- `void addItem(double newItem)` dodającą nową wartość na koniec tabeli, jeżeli wartość ta jeszcze nie istnieje
- `void deleteItem(double deleteItem)` usuwającą element o danej wartości, jeżeli istnieje
- `String toString()` zwracającą tekstową reprezentację tablicy, dla przykładu: `[1.0, 2.0, 3.0]`

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe**

Napisz program pozwalający na zliczenie ilości wystąpień każdego ze znaków w zadanym ciągu znaków. Załóż, że każdy ciąg może składać się jedynie z małych liter od `a` do `z`.

Przykład: dla ciągu znaków `mamakota` powinniśmy otrzymać wynik:
`m = 2, a = 3, k = 1 , o = 1, t = 1`

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe**

Napisz metodę pozwalającą na porównanie ciągu znaków względem kolejności alfabetycznej na podstawie tablicy znaków. Tablicę tą można uzyskać przy pomocy metody `String.toCharArray`.
Sygnatura metody powinna być następująca:
`int compareTo(String left, String right)`

Wartość zwrócona powinna być równa:
- `-1`, gdy alfabetyczne `left` znajduje się przed `right`
- `1`, gdy alfabetyczne`right` znajduje się przed `left`
- `0`, gdy są `left` oraz `right` są takie same

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe**

Dla tablicy liczb całkowitych znajdź medianę. Dla pustej tablicy zwróć 0;

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe**

Stwórz klasę `Decimal` pozwalającą na dokładne operacje na liczbach dziesiętnych. Do przechowywania wartości liczb dziesiętnych w klasie użyj dwóch liczna całkowitych. Odpowiednio dla części całkowitej oraz ułamkowej.

Zdefiniuj metody:
- `Decimal add(Decimal value)` dodającą drugą liczbę oraz zwracającą wynik
- `Decimal multiply(Decimal value)` mnożącą przez drugą liczbę oraz zwracającą wynik
- `String toString()` zwracającą tekstową reprezentację tablicy, dla przykładu: `111.222`

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe**

Napisz metodę statyczną sprawdzającą, czy dany rok jest rokiem przestępnym.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe**

Napisz metodę statyczną sprawdzającą dzień tygodnia dla zadanej daty. Datę przekaż do metody za pomocą 2 liczb całkowitych reprezentujących kolejno: rok, miesiąc oraz dzień.

Przetestuj działanie w metodzie `main`.
