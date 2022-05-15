![WSB](LOGO)

# Programowanie aplikacji w Java

## Maciej Gowin

### Zjazd 10 - dzień 1

---

# Zawartość

- Wdrażanie aplikacji
- Hosting
- CI/CD
- Zadanie z CI/CD
- Bazy NoSQL

---

# Wdrażanie aplikacji

Do tej pory zajmowaliśmy się implementacją kodu naszej aplikacji w Springu oraz uruchamialiśmy ją lokalnie, na naszych
komputerach. Skończyliśmy właśnie pracę nad jej pierwszą wersją.

Naszym kolejnym zadaniem jest dostarczenie jej do użytkowników. Rozważymy teraz istniejące opcje dostarczenia naszej
aplikacji do użytkowników oraz przejdziemy przez cały proces wdrażania aplikacji.

---

# Hosting

Udostępnienie aplikacji z naszego własnego komputera wymaga dużo wysiłku związanego z administrowaniem serwerem. O ile
nie jesteśmy firmą, która chce poświęcić wiele zasobów na zbudowanie i utrzymywanie własnej serwerowni, najlepszą opcją
będzie skorzystanie z usług firm zewnętrznych.

Powstało, więc wile firm, która posiadają serwerownie złożone z wielu komputerów, które udostępniają swoich klientom moc
obliczeniową potrzebną do uruchomienia aplikacji. Udostępnianie zasobów serwera klientowi nazywamy **hostingiem**.

Istnieje wiele rodzaju hostingu, które różnią się sposobem rozliczania płatności oraz podziałem odpowiedzialności za
poszczególne czynności związane z hostingiem naszej aplikacji,

---

# Rodzaje hostingu

- Serwer dedykowany (eng. dedicated server)
- Hosting współdzielony (eng. shared hosting)
- Serwer VPS (Virtual Private Server)
- Hosting zarządzany (eng. managed hosting)
- Kolokacja (eng. colocation)
- Hosting w chmurze (eng. cloud hosting)

---

# Serwer dedykowany

Serwer dedykowany jest dostępny tylko dla nas i nasza aplikacja jest jedyną uruchomioną na nim.

W przypadku hostingu na serwerze dedykowanym mamy największą kontrolę nad serwerem, na którym uruchomiona jest nasza
aplikacja. Mamy pełen dostęp administratora do wszystkich zasobów serwera.

Serwer dedykowany wymaga najwięcej wysiłku i wiedzy z zakresu instalacji i zarządzania serwerem.

---

# Hosting współdzielony

W przypadku hostingu współdzielonego mamy bardzo ograniczone możliwości interakcji z serwerem, ponieważ na jednym
serwerze uruchomione jest wiele aplikacji różnych klientów.

Serwery współdzielone pozwalają na lepsze wykorzystanie zasobów poprzez uruchamianie wielu aplikacji na jednej maszynie.
Są znacznie tańsza

Oprócz ograniczonej kontroli nad serwerem, wadą tego typu hostingu jest możliwy wzajemny wpływ na wydajność aplikacji
uruchomionych na tym samym serwerze.

---

# Serwer VPS

Serwer VPS jest rozwiązaniem pomiędzy serwerem dedykowanym i hostingiem współdzielonym. Na jednej maszynie uruchomione
jest wiele aplikacji, ale każda z nich jest uruchomiona w odizolowanej przestrzeni (maszynie wirtualnej).

Dzięki temu możliwa jest zbliżona kontrola nad środowiskiem, w którym uruchomiona jest nasza aplikacja jak w przypadku
serwera dedykowanego, przy wykorzystaniu zasobów podobnym do hostingu współdzielonego.

Maszyna wirtualna pozwala na uruchomienie więcej niż jednego systemu operacyjnego na tym samym komputerze, jednak
oznacza to również konieczność alokacji oddzielnych zasobów na każdy z nich.

---

# Hosting zarządzany

W przypadku hostingu zarządzanego oprócz serwera otrzymujemy również wsparcie techniczne związane z konfiguracją sprzętu
oraz oprogramowania. Przykładami takiej czynności jest np. monitorowanie oraz instalacja aktualizacji poprawiających
bezpieczeństwo serwera.

W zależności od dostawcy pakiety usług wchodzących w skład hostingu zarządzanego mogą się znacznie różnić.

---

# Kolokacja

Kolokacja polega na wynajęciu przestrzeni na serwery.

Dzięki temu możemy sami zdecydować jaki rodzaj sprzętu chcemy umieścić w naszym serwerze, a rola firmy zewnętrznej
ogranicza się do utrzymania dostępu do energii, internetu oraz chłodzenia dla naszego serwera.

---

# Hosting w chmurze

Hosting w chmurze charakteryzuje się możliwością uruchomienia aplikacji z użyciem połączonych zasobów wielu komputerów.

Dzięki niemu ułatwione jest budowanie i zarządzanie infrastruktury dla naszej aplikacji. Pozwala ono również poprawić
niezawodność naszej aplikacji. Dostawcy chmury dostarczają narzędzia developerskie oraz usługi takie jak np. bazy
danych, które mogą zostać wdrożone bez konieczności ręcznej instalacji oraz utrzymania w późniejszym czasie.

---

# Rodzaje hostingu w chmurze

- Chmura publiczna (eng. public cloud) - zasoby chmury wspóldzielone przez użytkowników chmury
    - IaaS (Infrastructure as a Service) - otrzymujemy serwer wirtualny, ale jesteśmy odpowiedzialni za jego
      konfigurację oraz zarządzanie środowiskiem dla naszej aplikacji, przykład: AWS EC2
    - PaaS (Platform as a Service) - oprócz serwera wirtualnego otrzymujemy gotowe środowisko dla uruchomienia naszej
      aplikacji, przykład: AWS Elastic Beanstalk
    - FaaS (Function as a Service) - pozwala uruchomić nasz kod na żądanie, nie rezerwujemy żadnego serwera (serverless)
      i płacimy tylko za zużyte zasoby na naszą operację, przykład: AWS Lambda
    - SaaS (Software as a Service) - otrzymujemy gotowe do użycia oprogramowanie, przykład: Dropbox
- Chmura prywatna (eng. private cloud) - korzytsanie z usług chmurowych na sprzęcie na własnośc
- Chmura hybrydowa - zasoby składają się zarówno z chmury publicznej jak i prywatnej
- Multi cloud - zasoby składają się z więcej niż jednego dostawcy chmury

---

# Podejścia do chmury

- Cloud native - używamy usług specyficznych dla danej chmury
    - Trudniejsza zmiana dostawcy chmury (eng. vendor locking)
    - Lepsze wykorzystanie zasobów chmury poprzez wykorzytsywanie zoptymalizownych dla niej serwisów
- Cloud agnostic - używamy usług, które mogą zostać wdrożone na każdej platformie
    - Łatwiejsza zmiana dostawcy chmury
    - Niekorzystanie z zoptymalizowanych przez dostawcę usług, zazwyczaj gorsza wydajność i koszt rozwiązania

---

# Udziały w rynku

![Udział w rynku](https://www.idc.com/getfile.dyn?containerId=prUS47279621&attachmentId=47407552)

---

# CI/CD

Do tej pory zaimplementowaliśmy naszą aplikację, wybraliśmy hosting i dostarczyliśmy jej pierwszą wersję dla naszych
użytkowników. Jako zespół pracujący nad tą aplikacją planujemy teraz dodanie nowych funkcjonalności do jej kolejnej
wersji.

Aby oszczędzić nasz czas, chcemy zautomatyzować process wdrażania kolejnych wersji aplikacji. W tym celu zamierzamy
stworzyć nasz process CI/CD.

Skrót CI/CD oznacza:

- CI (Continuous Integration) - przez CI rozumiemy regularne budowanie i testowanie zmian w kodzie różnych członków
  zespołu pracujących nad daną aplikacją.
- CD (Continuous Delivery) - zmiany są automatycznie wdrażane i testowane na środowisku testowym. Przed dostarczeniem
  nowej wersji dla użytkownika konieczna jest manualne potwierdzenie.
- CD (Continuous Deployment) - w porównaniu do Continuous Delivery, po przejściu przez środowisko testowe zmiany są
  automatycznie dostarczane do użytkownika aplikacji,

---

# CI/CD - Continuous Integration vs Continuous Delivery vs Continuous Deployment

![CI/CD](https://maciejgowin.github.io/assets/img/zjazd-10-1/ci-cd.png)

---

# Strategie integracji kodu

Najpopularniejsze strategie integracji kodu to:

- Trunk-based development
- Git-flow

---

# Trunk-based development

![Trunk-based development](https://maciejgowin.github.io/assets/img/zjazd-10-1/trunk-based-development.png)

---

# Git-flow

![Git-flow](https://maciejgowin.github.io/assets/img/zjazd-10-1/git-flow.png)

---

# Strategie wdrażanie kolejnych wersji aplikacji

Najczęściej używanymi strategiami dostarczania nowych wersji aplikacji do użytkownika są:

- Basic Deployment
- Rolling update
- Blue-Green deployment
- Canary deployment
- A/B Testing

---

# Basic deployment

![Basic development](https://maciejgowin.github.io/assets/img/zjazd-10-1/basic-deployment.png)

---

# Rolling update

![Rolling deployment](https://maciejgowin.github.io/assets/img/zjazd-10-1/rolling-update.png)

---

# Blue-Green deployment

![Blue-Green deployment](https://maciejgowin.github.io/assets/img/zjazd-10-1/blue-green.png)

---

# Canary deployment

![Canary-Deployment](https://maciejgowin.github.io/assets/img/zjazd-10-1/canary-deployment.png)

---

# A/B Testing

![A/B testing](https://maciejgowin.github.io/assets/img/zjazd-10-1/a-b-testy.png)

---

# Narzędzia

Do implementacji naszego procesu CI/CD możemy użyć jednego z popularnych narzędzi, np.

- Gitlab CI/CD
- Jenkins
- Atlassian Bamboo
- Circle CI
- Buddy
- AWS CodePipeline

---

# Zadanie

Zaimplementuj uproszczoną wersję procesu CI/CD z użyciem Gitlab CI/CD. Proces ten powinien pobrać najnowszą wersję kodu
aplikacji napisanej w Javie, zbudować ją oraz uruchomić testy.

1. Utwórz konto na platformie Gitlab - https://gitlab.com/users/sign_up
2. Utwórz fork z repozytorium: TODO
3. Uruchom process CI/CD

---

# Bazy NoSQL

Nadszedł czas rozpoczęcia kolejnego projektu. Z wymagań firmy wynika, że musimy być przygotowani na obsługę dużego ruchu
w przyszłości oraz przechowywanie bardzo dużej ilości danych.

Bazy danych SQL, które poznaliśmy do tej pory, oferują pewne możliwości skalowania w celu obsługi większego ruchu i
ilości danych, jednak są one dosyć ograniczone i wymagają dodatkowych czynności w celu jej zapewnienia.

Dla takich zastosowań powstały właśnie bazy NoSQL. Dostarczają znacznie lepsze możliwości skalowania bez podejmowania
dodatkowych czynności w porównaniu do baz NoSQL. Ponadto w wielu przypadkach znacznie ułatwiają modelowanie danych
przechowywanych w bazie danych.

---

# Typy baz NoSQL

Najpopularniejsze typy baz NoSQL to:

- Klucz-wartość - klucz jest zanany, ale wartości nie. Sprawdzają się w przychowywaniu nieustrukturyzowanych danych.
- Dokumentowe - rozszerzenie baz klucz-wartość, oferują możliwość zagnieżdżania par klucz-wartość i używania ich w
  zapytaniach.
- Rodziny kolumn - dane przechowywane w postaci rodziny kolumn. Pozwalaja na szybkie przeszkuiwanie dużej ilości danych,
  ale wymaga to dobrze przemyślanego schematu bazy.
- Grafowe - bazy reprezentowane w postaci grafu. Węzły grafu reprezentują dane, a krawędzie relacje między nimi.

---

# Bazy klucz wartość i dokumentowe

```json
{
  "id": "1",
  "nazwa": "Hotel WSB",
  "adres": {
    "ulica": "Sportowa 12",
    "miasto": "Warszawa",
    "kraj": "Polska"
  },
  "pokoje": [
    {
      "numer": 1,
      "liczbaPokoi": 2
    },
    {
      "numer": 2,
      "liczbaPokoi": 3
    }
  ]
}
```

---

# Rodziny kolumn

Klucz składający się z wielu kolumn posortowanych rosnąco.

Przykład:
Klucz = Firma/Linia Autobusowa/Czas/Numer rejestracyjny

| Klucz                                     | Lokalizacja            |
|-------------------------------------------|------------------------|
| MTA/M86-SBS/2020-01-01T13:01:00/NYCT_5824 | (40.781212,-73.961942) |
| MTA/M86-SBS/2020-01-01T13:02:00/NYCT_5840 | (40.780664,-73.958357) |
| MTA/M86-SBS/2020-01-01T13:03:00/NYCT_5867 | (40.780281,-73.946890) |

Przykład wydajnego zapytania:

- Lokalizacje konkretnego busa w danym zakresie czasu

- Niewydajne zapytania:
- Nazwy busów w znajdujących się w prostokącie pomiędzy P1(40, -73), P2(41, -74)

---

# Bazy grafowe

![Bazy grafowe](https://maciejgowin.github.io/assets/img/zjazd-10-1/graf.png)

---

# Skalowanie wertykalne (w górę), a skalowanie horyzontalne (wszerz)

![Skalowanie wertykalne, a skalowanie horyzontalne](https://maciejgowin.github.io/assets/img/zjazd-10-1/skalowanie.png)

---

# ACID - przypomnienie

- (A)tomicity - Niepodzielność
- (C)onsistency - Spójność
- (I)solation - Izolacja
- (D)urability - Trwałość

# Twierdzenie CAP

![CAP](https://maciejgowin.github.io/assets/img/zjazd-10-1/cap.png)

- (C)onsistency - każda część rozproszonego systemu zwraca dane w najnowszej wersji.
- (A)vailability - system rozproszonego zwróci zawsze dane, pomimo problemu z jego częścią, jednak nie gwarantuje, że
  będą one w najnowszej wersji.
- (P)artition-tolerance - system rozproszony działa poprawnie pomimo problemów z jego częścią.

Rozproszone bazy danych mogą mieć tylko 2 z 3 cech.

---

# Zadanie

1. Utwórz konto na platformie mLab: https://mlab.com/
2. Utwórz nową bazę danych
3. Dodaj nowy dokument
4. Wyszukaj dokument

5. CAP vs ACID, jak sie skaluje (vertical vs horiznotal) - https://www.thorntech.com/sql-vs-nosql/
6. Optimistic locking, eventual consistency


