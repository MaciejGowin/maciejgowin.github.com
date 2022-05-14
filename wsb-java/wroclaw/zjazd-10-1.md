![WSB](https://maciejgowin.github.io/assets/img/wsb-logo-wroclaw.png)

# Programowanie aplikacji w Java

## Maciej Gowin

### Zjazd 10 - dzień 1

---
# Zawartość

- CI/CD
- Jenkins
- Serwery aplikacji a chmura
- Bazy NoSQL
- Typy testów
- JUnit5 i testy jednostkowe
- JUnit5 oraz umiejscowienie testów Maven
- Cykl Maven dla testów
- AssertJ
- Zadania z testów

---
# Zawartość

- Mockito i mockowanie zależności
- Testy Spring
- Testy integracyjne
- Zadania z testów
- Automatyzacja testów: Selenium/Robot Framework, Cucumber/Gherkin (prosty opis)
- Automatyzacja testów: Gatling (przyład)

---
# CZĘŚĆ

---
# Testowanie aplikacji
- **Ręczne**
  - Łatwe w przypadku małych aplikacji
  - Przy częstych zmianach kodu staje się uciążliwe
  - Bardzo wolne
  - Łatwo popełnić błąd
- **Automatyczne**
  - Wymaga stworzenia kodu testującego kod
  - Pomaga w programowaniu
  - Szybkie (w uruchomieniu / otrzymaniu wyników)
  - Rzetelne

---
# Rodzaje testowania
- Testowanie statyczne  
    Analiza napisanego kodu poprzez **code review** albo użycie aplikacji do statycznej analizy kodu, np. **Sonar**
- Testowanie dynamiczne  
    Testy uruchamiane na działającej aplikacji. Sprawdzają czy program działa tak jak się tego spodziewamy

---
# Rodzaje testowania
- **Testy funkcjonalne** (ang. black-box testing)  
    Tester wie tyle jak program ma się zachować, nie zna szczegółów implementacji.


- **Testy strukturalne** (ang. while-box testing)  
    Testy skupiające się na wewnętrznej pracy pojedynczego modułu.

---
# Poziomy testowania
- **Testy jednostkowe**  
  Jest to najniższy poziom testów.
  Ich zadaniem jest sprawdzenie poszczególnych funkcjonalności aplikacji.
  Testowane są zwykle małe fragmenty kodu, po czym wynik porównywany jest z wartością oczekiwaną.
  Najcześciej pisane są przez programistę w trakcie tworzenia implementacji.


- **Testy integracyjne**  
    Testy sprawdzające działanie poszczególnych interface'ów aplikacji i ich wzajemne oddziaływanie.


- **Testy end-to-end**  
    Testy sprawdzające działanie aplikacji jako całości od początku do końca (stąd nazwa end-to-end).
    Mają na celu znalezienie błędów wpływających na użytkownika.

---
# Mockowanie
Uruchomienie aplikacji wiąże się z dostarczeniem wszystkich wymaganych zależności do klasy poddawanej testowi.  
Zamiast używać rzeczywistych implementacji obiektów (np. repozytorium) można zastąpić je obiektami imitującymi ich działanie.  
Taki sposób ułatwia pisanie testów oraz umożliwia skupienie się na testowaniu funkcjonalności danej klasy.

---
# Mockowanie
- **Dummy** to obiekt w teście, który jest nam potrzebny jako wypełnienie. Najczęściej w formie pustej klasy.

- **Stub** to obiekt mający minimalną implementację interfejsu, bez skomplikowanej logiki.

- **Mock** to obiekt, któremu wskazujemy dokładne zachowania dla określonych metod. 
Najlepiej skorzystać już z dostępnych wchodzących w skład bibliotek (Mockito)

---
# Junit 5

**Junit** - framework służący do pisania testów w języku Java. Wspomaga nas w pisaniu oraz uruchamianiu testów 
jednostkowych.

Biblioteka dostarcza:
* adnotacje wspomagające pisanie testów 
* mechanizmy do uruchamiania testów
* mechanizmy do grupowania testów
* raportowanie

---
# Junit 5
```xml
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-engine</artifactId>
    <version>5.8.1</version>
    <scope>test</scope>
</dependency>
```
---
# Junit 5 - adnotacje
Podstawowe adnotacje dostarczone przez bibliotekę:
* `@Test` - oznaczenie metody testującej
* `@BeforeAll` – oznaczenie metody uruchamianej przed wszystkimi metodami testującymi.
* `@AfterAll` – oznaczenie metody uruchamianej po wszystkich metodach testujących.
* `@BeforeEach` – oznaczenie metody uruchamianej przed każdym testem.
* `@AfterEach` – oznaczenie metody uruchamianej po każdym teście.
* `@Disabled` – oznaczona metoda tą adnotacją nie zostanie wywołana.

Wyżej wymienione adnotacje różnią się nieco między poprzednią wersją biblioteki (junit4) a obecną (junit5)

---
# Junit 5 - przykład testu
```java
import org.junit.jupiter.api.Test;
import org.springframework.util.StringUtils;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class ExampleTest {

    @Test
    void shouldCapitalizeWord() {
        // given
        String lowercase = "wsb";

        // when
        String result = StringUtils.capitalize(lowercase);

        // then
        assertEquals("Wsb", result);
    }
}
```
---
# Junit 5 - podstawowe zasady
1. Każda metoda testująca opatrzona jest adnotacją `@Test`
2. Metoda testująca nic nie zwraca (void)
3. Klasa testowa powinna nazywać się tak jak klasa, dla której pisany jest test z suffixem `Test`
4. Klasa testowa może zawierać wiele testów (dotyczących jednej bądź wielu metod dostępnych w klasie głównej)

---
# Test jednostkowy - podział
### given
Część ustawiająca wartości na potrzeby danego testu.   
Inicjalizacja obiektów przekazywanych jako argumenty metody, która jest poddana testowi.

### when
Wywołanie metody poddawanej testowi  
Najczęściej w tej części znajduje się jedna linijka kodu - wywołanie metody

### then
Asercje, sprawdzenie czy wartości oczekiwane odpowiadają tym otrzymanym podczas wykonywania testu

---
# Asercje
- Asercje są to warunki, których spełnienie jest wymagane do zaliczenia testu.
- Porównują wartość otrzymaną w wyniku wykonania kawałka kodu z wartością oczekiwaną
- Pojedynczy test zawiera **co najmniej** jedną asercję.
- Niepowodzenie którejkolwiek z asercji powoduje przerwanie testu z wynikiem negatywnym.

### Przykłady:
```java
assertEquals(expected, actual);         // org.junit.jupiter.api.Assertions
assertThat(actual).isEqualTo(expected); // org.assertj.core.api.Assertions
```

---
# Testy + Maven
```
src
  |- main
  |  |- java
  |  |  |- pl.wsb
  |  |  |  |- ExampleClass
  |  |- resources
  |- test
  |  |- java
  |  |  |- pl.wsb
  |  |  |  |- ExampleClassTest
  |  |- resources
```
- Wszystkie testy należy umieszczać w katalogu `src/test/java`
- Uruchomienie testów - `mvn test`

---
# Maven
Wykonanie komendy `mvn test` spowoduje uruchomienie testów programu.   

Przykładowy rezultat:
```shell
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 1.106 s - in pl.wsb.tests.TestsApplicationTests
[INFO] 
[INFO] Results:
[INFO] 
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  3.045 s
[INFO] Finished at: 2022-05-14T09:57:35+02:00
[INFO] ------------------------------------------------------------------------
```

---
# Cykl Maven dla testów
[Lifecycle Reference](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html)

W lifecycle Maven (default) istnieją 2 fazy, które umożliwiają uruchomienie testów.
- test
- integration-test

Istnieje możliwość pogrupowania testów (separacji testów unitowych oraz integracyjnych), np.
 - poprzez użycie innych suffixów - *Test oraz *IntegrationTest
 - poprzez oznaczenie poszczególnych testów poprzez adnotację `@Tag`

---
# Cykl Maven dla testów
Wybór grupowania testów należy skonfigurować w opisie plugina w `pom.xml` np.

`@Tag(junit5)`
```shell
<build>
    <plugins>
        <plugin>
            <artifactId>maven-surefire-plugin</artifactId>
            <configuration>
                <properties>
                    <includeTags>junit5</includeTags>
                </properties>
            </configuration>
        </plugin>
    </plugins>
</build>
```

---
# Junit - ciekawe linki
* [A Guide to JUnit 5](https://www.baeldung.com/junit-5)
* [Intellij IDEA - uruchamianie testów](https://www.jetbrains.com/help/idea/performing-tests.html)
* [Running a Single Test or Method With Maven](https://www.baeldung.com/maven-run-single-test)
