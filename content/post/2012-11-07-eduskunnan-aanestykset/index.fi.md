---
title: "Eduskunnan äänestysten hakurutiinit R-kielelle"
slug: "eduskunnan_aanestysten_hakurutiinit_r_kielelle"
date: 2012-11-07
author: Juuso Haapanen
categories:
  - R
  - sorvi
  - tiedonlouhinta
tags:
  - Datavaalit
  - data
  - Eduskunta
output:
  blogdown::html_page:
    highlight: tango
---

Eduskunnan äänestysdatan sujuva saatavuus mahdollistaa eduskunnassa tehtävien päätösten automaattisen seurannan ja edistää läpinäkyvyyttä. Mikko Heikkisen aiemmin julkaisema [biomi.orgin](https://www.biomi.org/web/eduskunnan_aanestykset/) eduskunta-APIn kautta on saatavilla osa eduskunnan äänestysdatoista.

Lisäsimme nyt R-kieliset hakurutiinit eduskunnan äänestysdatalle [sorviin](http://louhos.github.com/sorvi) osana Datavaalit-hanketta. Näiden avulla löytyvät kaikki [biomi.org](https://www.biomi.org/web/eduskunnan_aanestykset/)-rajapinnan kautta saatavilla olevat eduskunnan äänestystiedot sekä äänestys- että edustajakohtaisesti. Yksityiskohtaisia hakuesimerkkejä löydät Louhoksen [Datawikistä](https://github.com/louhos/sorvi/wiki/Eduskunta).

Ääkkösten ja muiden erikoismerkkien käsittely on vielä osin ratkaisematta; pull requestejä otetaan vastaan. Toinen, vakavampi ongelma liittyy eduskunnan äänestysdatan tämä hetkiseen saatavuuteen: eduskunnan äänestysdata on saatavilla koneluettavassa muodossa vain biomi.orgin kautta, jonka nykyinen päivitystiheys ei salli äänestysten reaaliaikaista seurantaa. Äänestysdatan jakaminen koneluettavassa muodossa suoraan eduskunnan palvelimilta edistäisi päätöksenteon seurantaa ja läpinäkyvyyttä ja olisi hyvää palvelua kansalaisten suuntaan – tältä osin heitämme pallon eduskunnalle.

PÄIVITYS 24.11.2020: Poistettu suora linkki vedonlyöntiyhtiön kaappaamalle datavaalit.fi-sivustolle; Päivitetty biomi.org-linkki

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2012/11/07/eduskunnan-aanestysten-hakurutiinit-r-kielelle/
