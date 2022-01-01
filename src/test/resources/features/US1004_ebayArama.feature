
Feature: US 1004 ebay sayfasinda kelime arama

  Scenario: TC 08 kullanici ebay da istedigi kelimeyi aratip test eder
    # bu test CALİSMAZ
    Given kullanici "ebayURl" sayfasina gider
    Then "nutella"icin arama yapar
    And sonucun "nutella" icerdigini test eder
    Then sayfayi kapatir

    # burada tum stepdefiniton lar tanimli gibi gorunsede testimiz calismaz
   # cunku arama yapar ve sonucu test eder stepdefinitionlari amazon sayfasina gore locate edilmisti
   # burada yeniden locate etmemiz gerekirken ayni cumleyi yazdigimiz icin
   # bizden yeni stepdefiniton istemedi
   # bu yuzden gherkin ile yazdigimiz cumlelerin tam tanimlayici olmasi onemlidir !!