Feature: US1005 amazonda liste ile arama

  Scenario Outline: TC09 amazonda verilen bir listeyi aratıp, var olduklarini
    test ediniz

    Given kullanici "amazonUrl" sayfasina gider
    Then "<arananUrun>"icin arama yapar
    And sonucun "<arananUrun>" iceridigini test eder
    Then sayfayi kapatir
    And sonuc sayisini yazdirir




    Examples:
    |arananUrun|
    |nutella   |
    |java      |
    |ipod|
    |armut|
