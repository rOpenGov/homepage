---
title: "Kunnallisvaalien vertailukelpoiset ehdokasdatat CSV-taulukkoina: 2004 / 2008 / 2012"
date: 2012-10-05
author: Leo Lahti
categories:
  - R
  - sorvi
tags:
  - Datavaalit
  - data
  - kunnallisvaalit
  - Oikeusministeriö
  - Tilastokeskus
output:
  blogdown::html_page:
    highlight: tango
---

![Datavaalit-logo](/images/datavaalit_logo_final_small.png#floatright)

Vuoden 2012 kunnallisvaaliehdokkaiden vertailu aiempien kunnallisvaalien ehdokastietoihin on nyt ajankohtainen aihe. Ensimmäisiä vertailuja on julkaistu muun muassa [Jyväskylän ylioppilaslehdessä](http://www.jylkkari.fi/2012/10/valtakunnallinen-ehdokasdata-tarjolla-tassa/) ja Helsingin vaalipiirille on laadittu alustava [puolueloikkaritaulukko](http://www.facebook.com/groups/datavaalit/permalink/276939669090920/).

Käyttövalmiissa muodossa olevien aineistojen puute kunnallisvaaleista 2004-2008 on kuitenkin jälleen osoittautunut merkittäväksi pullonkaulaksi koko maan kattaville vertailuille sen jälkeen, kun julkaisimme edellisessä blogipostauksessa OM:n koneluettavista raakadatoista koostetun käyttövalmiin CSV-tiedoston 2012 kunnallisvaalien ehdokasdatasta.

Datavaalit työstää keskitettyä tietokantaa vaalidatan tarjoilulle helppokäyttöisessä muodossa, mutta työn edetessä julkaisemme alustavaa dataa käyttövalmiina CSV-taulukkoina Linus Torvaldsin tunnetuksi tekemää ”release early – release often”-taktiikkaa noudattaen. Nyt vuorossa vertailukelpoiset 2004-2012 ehdokasdatat.

### Lataa kunnallisvaalien ehdokasdata 2004-2012

Taulukot on laadittu mahdollisimman vertailukelpoisiksi siten, että informaatiota ei katoa. Aineistot löytyvät nyt [GitHub-sivuilta](https://github.com/avoindata/datavaalit-ehdokas-ja-tulostiedot) ja Datavaalit-palvelimelta (linkki poistettu).

Vuosien 2004-2008 aineistot on esitetty äänestysalueen tarkkuudella, lisäksi saatavilla on kuntatason yhteenvedot pienempinä erillistaulukoina. Vuoden 2012 osalta aineistot ovat kuntatasolla. Vuoden 2012 osalta mukana on joitakin lisätietokenttiä, lisäksi osa vuoden 2004-2008 kentistä puuttuu vuoden 2012 aineistoista. Yhteisten kenttien nimet ovat suoraan vertailukelpoisia taulukkojen välillä. Esikäsittely on tehty läpinäkyvästi alla linkatulla lähdekoodilla. Emme takaa aineiston virheettömyyttä. Pyydämme [raportoimaan mahdollisista puutteista](http://louhos.github.com/contact.html). Ehdokasaineistojen vertailuja edistäisi entisestään, mikäli OM yksilöisi ehdokkaat uniikilla tunnuksella; samassakin kunnassa voi olla ehdolla saman nimisiä ehdokkaita.

### Aineistolähteet ja lähdekoodi

Aineistot on haettu [Oikeusministeriön palvelimelta](http://192.49.229.35/K2012/s/ehd_listat/kokomaa.htm#ladattavat) (2012; (C) OM 2012) ja [Tilastokeskukselta](http://pxweb2.stat.fi/database/StatFin/databasetree_fi.asp) (2004/2008, (C) Tilastokeskus 2012). Kuntakoodimuunnoksissa on lisäksi hyödynnetty [Maanmittauslaitoksen aineistoja](http://www.maanmittauslaitos.fi/avoindata) ((C) MML 2011-2012). Yhtenäistimme esim. kenttien nimiä taulukoiden välillä, lisäsimme selkokielisiä kenttiä koodinimien oheen, eriytimme etu- ja sukunimet, kunnat ja äänestysaluenimet omiin kenttiinsä ja järjestimme taulukkojen yhteiset kentät samaan järjestykseen. Lähdekoodi esikäsittelyyn on tehty [sorvi-paketin kehitysversiolla 0.1.92](https://github.com/louhos/sorvi/tree/develop) käyttäen alla olevaa lähdekoodia. Mahdolliset päivitykset alla olevaan lähdekoodiin tehdään suoraan [takomo-repoon](https://github.com/louhos/takomo/blob/master/datavaalit/MunicipalElectionData.R).

PÄIVITYS 24.11.2020: Poistettu suora linkki vedonlyöntiyhtiön kaappaamalle datavaalit.fi-sivustolle.

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2012/10/05/kunnallisvaalien-vertailukelpoiset-ehdokasdatat-csv-taulukkoina-2004-2008-2012/