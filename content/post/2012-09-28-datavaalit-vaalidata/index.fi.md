---
title: "Datavaalit: Oikeusministeriön vaalidatat sorvattu auki"
slug: "datavaalit_oikeusministerion_vaalidatat_sorvattu_auki"
date: 2012-09-28
author: Leo Lahti
categories:
  - R
  - sorvi
  - uutinen
tags:
  - Datavaalit
output:
  blogdown::html_page:
    highlight: tango
---

![Datavaalit-logo](/images/datavaalit_logo_final_small.png#floatright)

Oikeusministeriö julkaisi eilen illalla (to 27.1.2012) koko maan kattavat tiedot [kunnallisvaalien ehdokkaista ja puolueista](http://192.49.229.35/K2012/s/ehd_listat/kokomaa.htm#ladattavat). Mukana vuoden 2012 kunnallisvaaleissa on kaikkiaan 36305 ehdokasta. Yhdistelemällä aineistoa esimerkiksi viime kunnallis- ja eduskuntavaalien tuloksiin sekä kuntatason indikaattoreihin voidaan tuoda esiin uusia näkökulmia suomalaiseen kunnallispolitiikkaan.

### Datavaalit edistää helppokäyttöisen vaalidatan saatavuutta

[Louhos](http://louhos.github.com/) ja sorvi ovat aktiivisesti mukana viikko sitten [Open Knowledge-festivaaleilla lanseeratussa](http://okfestival.org/datavaalit-data-elections-launch/) Datavaalit-hankkeessa, jonka tavoitteena on tukea vaalidatan avaamista ja laajaa hyödyntämistä. Helppokäyttöisessä muodossa olevan päätöksentekodatan heikko saatavuus on keskeinen pullonkaula yhteiskunnallisesti vaikuttavassa datajournalismissa sekä läpinäkyvyyttä edistävien verkkopalveluiden yleistymisessä. Datavaalit-hanke kokoaa tietoja ehdokkaista, puolueista ja vaaleista kaikkien ulottuville. Datavaalit on sitoutumaton ja yhteisövetoinen hanke, jonka käynnistymistä Suomen itsenäisyyden juhlarahasto Sitra on tukenut Uusi Demokratia -kiihdytysrahoituksella.

### R-kieliset rutiinit vaalidatan putsaamiseksi

[Oikeusministeriön julkaisema vaalidata](http://192.49.229.35/K2012/s/ehd_listat/kokomaa.htm#ladattavat) on sellaisenaan hankalasti käytettävää, koska aineisto on jaettu useisiin erillisiin tiedostoihin, kenttien otsikot puuttuvat, ja tiedostojen sisältö vaatii putsaamista. Edistääksemme vaalidatan mahdollisimman laajaa ja sujuvaa hyödyntämistä loimme [sorviin](http://louhos.github.com/sorvi) hakurutiinit, jolla koko aineiston voi hakea helposti R-ympäristöön ilman hankalia esikäsittelyvaiheita. Rutiinit lukevat vaalipiirikohtaiset taulut, yhdistävät ne koko maan kattavaksi yhtenäiseksi taulukoksi, ja lisäävät sarakeotsikot sekä selkokieliset nimet koodinimellä ilmoitettujen kenttien oheen. Hakurutiinit löytyvät sorvi-paketin [develop-haaran](https://github.com/louhos/sorvi/tree/develop) versiosta 0.1.88, ja esimerkkikoodi niiden käyttöön on Louhoksen [takomo-repossa](https://github.com/louhos/takomo/blob/master/datavaalit/election.results.R).

### Lataa siistitty vaalidata-CSV

Tuloksena on kaksi selkeää koko maan kattavaa vaalidata-taulukkoa, yksi ehdokkaille ja toinen puolueille. Päätimme pistää ensimmäiset CSV-muotoiset datat jakoon datavaalit.fi-palvelimelle samalla, kun sivuston kattavampi ja helppokäyttöinen tietokantaratkaisu on työn alla. Voit ladata CSV-tiedostot (tai tiiviimmät gzipatut versiot) seuraavista linkeistä:

Ehdokasdata: CSV (linkki poistettu)
Puoluedata: CSV (linkki poistettu)

Välineet Oikeusministeriön tarjoaman vaalidatan siistimiseksi helppokäyttöiseen muotoon ovat vielä kehitysvaiheessa, emmekä takaa aineistojen virheettömyyttä. Ilmoitukset mahdollisista puutteista ovat erittäin [tervetulleita](http://louhos.github.com/contact.html). Ilmoitamme päivityksistä tässä blogissa ja datavaalit.fi-sivustolla.

### Kehitysehdotukset Oikeusministeriölle

Oikeusministeriölle kiitokset aineistojen julkaisemisesta. Hyvää palvelua kansalaisten suuntaan olisi tarjota taulukot jatkossa suoraan selkokielisessä muodossa, jonka koneluettavuus säilyy. Ehdotamme OM:lle tuleviin versioihin seuraavia parannuksia, jotka on mahdollista lisätä nopeasti ja automatisoidusti, ja jotka edistäisivät aineiston käytettävyyttä merkittävästi:

1. Aineistot tulisi tarjota vaalipiirikohtaisten taulukoiden sijasta tai lisäksi koko maan kattavana kokoomataulukkona
2. Sukupuolen, kunnan, vaalipiirin ja vaalityypin osalta koostetaulukkoon tulisi lisätä tietokantakoodin ohelle myös selkokieliset nimet
3. CSV-tiedostoista tulisi tarjota versio, jonka kentät on otsikoitu valmiiksi. Kenttien tulkitsemiseen tarvittaviin PDF-muotoisiin kuvaustietoihin ei löydy linkkiä tiedostojen jakelusivulta; tiedostojen tulkinta vaatii nyt erillisten kuvaustiedostojen löytämistä ja kenttien otsikkotietojen lisäämistä käsin. Tämä vie aikaa ja sisältää mahdollisuuden virhetulkintoihin.
4. [Tiedostojen jakelusivulta](http://192.49.229.35/K2012/s/ehd_listat/kokomaa.htm#ladattavat) löytyvät PDF-yhteenvetotaulukot [ehdokkaista](http://192.49.229.35/K2012/s/ehd_listat/Ehdokastilasto.pdf) ja [puolueista](http://192.49.229.35/K2012/s/ehd_listat/Puoluetilasto.pdf) voisi tarjota jakoon myös CSV-muodossa, jolloin niitä voisi tulkita suoraan koneellisesti.
5. Olisi tärkeää lisensoida aineistot avoimesti, esimerkiksi [CC0](http://wiki.creativecommons.org/CC0_use_for_data)-lisenssillä. Tämä takaisi selkeät juridiset pelisäännöt aineistojen jatkokäytölle ja edistäisi niitten vapaata käyttöä.

PÄIVITYS 24.11.2020: Poistettu suora linkki vedonlyöntiyhtiön kaappaamalle datavaalit.fi-sivustolle.

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2012/09/28/datavaalit-oikeusministerion-vaalitulosdata-sorvattu-auki/
