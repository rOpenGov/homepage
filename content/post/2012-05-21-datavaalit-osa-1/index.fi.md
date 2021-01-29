---
title: "Datavaalit osa 1 – vaali- ja kuntadatan kokoaminen ja paketointi"
slug: "datavaalit-osa-1"
date: 2012-05-21
author: Leo Lahti
categories:
  - R
  - tiedonlouhinta
  - paikkatieto
  - uutinen
  - sorvi
tags:
  - Datavaalit
  - github
  - kunnat
  - PC Axis
output:
  blogdown::html_page:
    highlight: tango
---

**Datavaalit** Syksyn kunnallisvaalien yhteydessä on mahdollisuus kokeilla vaaleihin ja päätöksentekoon liittyvän tiedonlouhinnan mahdollisuuksia ja tuoda esiin kehityskohteita päätöksentekoon kytkeytyvien tietoaineistojen saatavuuden ja yhteiskunnan läpinäkyvyyden lisäämiseksi. Aiheen tiimoilta on käynnistynyt ruohonjuuritason Datavaalit-tempaus, jossa eri toimijat keräävät, pöyhivät, ja julkaisevat vaaleihin liittyvää dataa ja sen pohjalta tehtäviä havaintoja. Datavaalit-tempauksella ei ole muodollista organisaatiota, vaan aiheesta kiinnostuneet ovat tervetulleita liittymään mukaan itselleen sopivalla tavalla. Ideoita ja tietolähteitä on koottuna [täällä](http://www.slideshare.net/apoikola/20120521-datavaalit). Jos aihepiiri kiinnostaa, nyt on hyvä aika hypätä kelkkaan. [Louhos](http://louhos.github.com/)-tiimimme on mukana Datavaalit-tempauksessa kehittämällä yhteisövetoista [soRvi](http://louhos.github.com/sorvi/)-ohjelmakirjastoa yhteiskunnan tietovirtojen seulontaan.

**Vaalitilastojen kokoaminen** Aloitimme kunnallisvaaleihin valmistautumisen keräämällä Helsingin Sanomien pyynnöstä [kattavan paketin kuntatason sosioekonomista dataa ja aiempiin vaaleihin liittyviä tilastoja](http://blogit.hs.fi/hsnext/iso-paketti-kuntadataa-ja-vaalidataa-hs-openiin) valmiiksi esikäsitellyssä taulukkomuodossa yhdistämällä Tilastokeskuksen ja Maanmittauslaitoksen avoimia kuntatason aineistoja. Data sisältää kuntatason tietoja väestöstä, koulutuksesta, työttömyydestä, ja muista indikaattoreista yhdistettynä kunnallisvaalien tuloksiin vuosilta 2000, 2004 ja 20008 sekä eduskuntavaalien tuloksiin vuosilta 2007 ja 2011. Aineistoja hyödynnetään mm. maanantain 21.5.2012 [HS Open](http://blogit.hs.fi/hsnext/ilmoittaudu-hs-open-5een-datavaalit-2012)-tapahtumassa, jossa koodaajien, graafikoiden ja toimittajien muodostamat tiimit pöyhivät tätä ja [muita kunnallisvaaleihin liittyviä datoja](http://blogit.hs.fi/hsnext/yhteenveto-hs-openiin-julkaistuista-datoista). Jäämme mielenkiinnolla odottamaan, mitä tapahtuman osallistujat löytävät näiden tietoaineistojen kätköistä.

**Hakurutiinit soRviin** Esikäsitellyt kuntatason tietoaineistot ovat ladattavissa yllä olevan linkin kautta HS:n palvelimelta, mutta tämän blogipostauksen lopussa olevalla soRvi-kirjastoon pohjautuvalla koodilla niiden automaattinen luku onnistuu myös suoraan alkuperäislähteistä. Koodissa käytetyt hakurutiinit ovat toistaiseksi saatavilla vain soRvin [GitHub-kehitysversion](http://louhos.github.com/sorvi/asennus.html) kautta. Tiedot on nyt koostettu kaksiulotteisiksi taulukoiksi, sillä näiden käsittely ja yhdistely muihin tietoihin onnistuu helposti tavanomaisilla taulukko-ohjelmilla. Haittana on, että taulukon metatietoja joudutaan kokoamaan tekstimuotoon otsikkoriville. Automatisoidun analyysin kannalta moniulotteiset taulukot ja tietokantapohjaiset esitysmuodot olisivat optimaalisempia. Pyrimme jatkossa kehittämään soRvi-kirjastoa myös tältä osin ja uudet ehdotukset ja kontribuutiot ovat tervetulleita.

**Ongelmia Tilastokeskuksen aineistoilla** Aineistoja kootessamme havaitsimme, että Tilastokeskuksen avointen aineistojen luku vaatii pelkästään Windowsilla toimivaa ja suljetusti lisensoitua [PX-Edit](http://tilastokeskus.fi/tup/pcaxis/lataus_tyokalut_en.html)-ohjelmaa. Tämä muodostaa merkittävän pullonkaulan Tilastokeskuksen avointen aineistojen automatisoidulle saatavuudelle ja käytölle: 2621 [avoimesta datataulukosta](http://pxweb2.stat.fi/database/StatFin/databasetree_fi.asp) vain 29% (761 tiedostoa) oli automatisoidusti luettavissa verkon yli R-kielen valmiilla hakurutiineilla. Toistaiseksi PX-Edit näyttää olevan ainoa loppuun viilattu ohjelma Tilastokeskuksen käyttämän dataformaatin lukuun, mutta ohjelma toimii vain Windowsilla, sen käyttöä verkon yli ei saa kohtuullisella työmäärällä automatisoitua, ja lisenssiehdot hankaloittavat vaihtoehtoisten lukurutiinien tuottamista. Toivommekin Tilastokeskuksen jakavan avoimet aineistonsa jatkossa myös XML-tiedostoina tai muussa standardimuodossa, jolloin niiden luku ja automatisoitu yhdistely muihin tietoaineistoihin sujuvoituisi merkittävässä määrin kasvattaen entisestään tämän laadukkaan datakokoelman merkitystä ja arvoa.

Alla vielä lähdekoodi, jolla Tilastokeskuksen vaali- ja kunta-aineistojen haku ja yhdistely alkuperäislähteistä onnistuu soRvin kehitysversiolla >0.1.70.

Muokattu 7.4.2013 Esimerkkikoodit löytyvät nyt Louhoksen [takomo-reposta](https://github.com/louhos/takomo/blob/master/examples/20120521-Kuntadata.R)

PÄIVITYS 24.11.2020: Poistettu suora linkki domain squattereiden kaappaamalle datajournalismi.fi-sivustolle

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2012/05/21/datavaalit-osa-1-vaali-ja-kuntadatan-kokoaminen-ja-paketointi/
