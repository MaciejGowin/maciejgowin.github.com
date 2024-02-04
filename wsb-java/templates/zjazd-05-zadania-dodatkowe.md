![WSB](https://maciejgowin.github.io/assets/img/wsb-merito-logo.png)

# Programowanie aplikacji Java

## Maciej Gowin

### Zjazd 5 - zadania dodatkowe

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
# **Programowanie: zadanie dodatkowe**

Stwórz bazę danych, pełną strukturę tabel oraz kluczów obcych dla następującego problemu.

System do zapisywania struktury lokalizacji, w której definiujemy państwa, regiony, miasta, lotniska oraz połączenia (ścieżki) pomiędzy lotniskami.
Zakładamy, że każdy region jest powiązany tylko z jednym państwem, każde miasto z jednym regionem, każde lotnisko z jednym miastem.

Elementy te identyfikowane są po kodzie, dla przykładu: państwo - Polska (pl), region - Śląsk (slask), miasto - Wrocław (wroclaw), lotnisko - Wrocław (wro).
Ścieżki definiowane są na podstawie pary lotniska wylotu i przylotu.

---

Zdefiniuj zapytania do bazy danych, pozwalające na wyszukanie następujących danych:
- ilość unikatowych lotniska, do których można dolecieć z konkretnego lotniska
- ilość unikatowych lotniska, do których można dolecieć z konkretnego miasta
- ilość unikatowych lotniska, do których można dolecieć z konkretnego regionu
- ilość unikatowych lotniska, do których można dolecieć z konkretnego kraju
- wszystkie lotniska, do których można dolecieć z Polski
- wszystkie lotniska, do których można dolecieć z zadanego lotniska z 1 przesiadką
- wszystkie pary miast, pomiędzy którymi istnieje połączenie
- wszystkie pary regionów, pomiędzy którymi istnieje połączenie
- wszystkie pary krajów, pomiędzy którymi istnieje połączenie
- ilość lotnisk w danym kraju, dla których istnieje połączenie dla każdego z krajów

---
# **Programowanie: zadanie dodatkowe**

Stwórz bazę danych, pełną strukturę tabel oraz kluczów obcych dla następującego problemu.

System do przechowywania składników przepisów kucharskich wraz z gramaturami, listą produktów oraz ich cen.

---

Zdefiniuj zapytania do bazy danych, pozwalające na wyszukanie następujących danych:
- listę przepisów, w których występuje dany produkt
- listę unikalnych produktów, konieczną do realizacji przepisu
- lista zakupów dla danego przepisu
- cenę realizacji danego przepisu

---
# **Programowanie: zadanie dodatkowe**

Stwórz bazę danych, pełną strukturę tabel oraz kluczów obcych dla następującego problemu.

Rozszerzony system rezerwacji biletów, w którym definiujemy klientów oraz umożliwiamy przypisywanie rezerwacji do klientów.

---

Zdefiniuj zapytania do bazy danych, pozwalające na wyszukanie następujących danych:
- całkowity kosz rezerwacji dla danego klienta
- całkowity kosze rezerwacji na każdą ze ścieżek dla danego klienta
- uszeregowaną listę klientów, którzy wydali więcej niż 100 e w każdym miesiącu
- listę klientów, którzy zakupili choć jeden bilet każdego roku w zadanym przedziale
- uszeregowaną listę klientów, na podstawie średniej ceny ich rezerwacji
- uszeregowaną listę klientów, na podstawie różnorodności ścieżek rezerwacji
- uszeregowaną listę klientów, na podstawie maksymalnej częstotliwości rezerwacji dla unikatowej ścieżki
