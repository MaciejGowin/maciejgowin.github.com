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
# Test jednostkowy

Jest to najniższy poziom testów.   
Ich zadaniem jest sprawdzenie poszczególnych funkcjonalności aplikacji.  
Testowane są zwykle małe fragmenty kodu, po czym wynik porównywany jest z wartością oczekiwaną.  
Najcześciej pisane są przez programistę w trakcie tworzenia implementacji.

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
# Junit - ciekawe linki
* [A Guide to JUnit 5](https://www.baeldung.com/junit-5)
* [Intellij IDEA - uruchamianie testów](https://www.jetbrains.com/help/idea/performing-tests.html)
