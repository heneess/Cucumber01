@toplu
Feature: US1003 kullanici istedigi kelime icin arama yapip sonucu test eder

  Scenario: TC07 istenen kelimenin oldugunu test etme
    Given kullanici "amazonUrl" sayfasina gider
    And "nutella"icin arama yapar
    Then sonucun "nutella" icerdigini test eder
    And sayfayi kapatir

    #parametre olarak yazdigimiz kelimeyi stepdefinition da String olarak
    #kullanacaksa ne yazdigimiz onemli degil "nutella" gibi

  # ancak eger paramtere olarak yazdiginiz kelimeyi configuration.properties
  # den alacaksak burada yazdigimiz parametrenin configuration.properties deki
  # yazim ile ayni oolmasi gerekir amazonURL gibi
  # eger yazi farkli olursa nullPointer Excepiton verir

  # buradaki parametre ile configuration.properties deki key ayni olduktan sonra
  # stepdefinition da parametre adi olarak yazdigimizin bir onemi olmaz
