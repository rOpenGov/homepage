---
title: "R-paketti avoimen Suomi-datan louhintaan"
slug: "r_paketti_avoimen_suomi_datan_louhintaan"
date: "2011-10-09"
author: Leo Lahti
categories:
  - R
  - sorvi
  - tiedonlouhinta
  - uutinen
  - visualisointi
---

On tullut aika yhdistää voimavarat ja koota kattava kokoelma eri tahoilla kehitettyjä ratkaisuja avoimen datan käsittelyyn yhteen pakettiin. Kehitteillä oleva avoimen lähdekoodin [sorvi-paketti](http://sorvi.r-forge.r-project.org/) on suunnattu palvelemaan erityisesti suomalaista avoimen datan yhteisöä ja kokoamaan yleiskäyttöisiä välineitä tietoaineistojen hakuun, putsaamiseen, yhdistelyyn, louhintaan ja visualisointiin.  Esimerkkejä paketin käytöstä Suomi-datan penkomiseen tullaan julkaisemaan lisää tässä blogissa.

Paketti on kehitysvaiheessa, ja uudet tekijät ja lisäykset ovat tervetulleita. Ensimmäisenä esimerkkinä sorvin käytöstä hain kuntien asukasluvut [Väestörekisterikeskuksen sivulta](http://vrk.fi/default.aspx?docid=5127&site=3&id=0) ja visualisoin kuntien sukupuolijakauman Suomen kartalla. Miesvaltaiset kunnat on merkitty sinisellä ja naisvaltaiset punaisella.

{{< img src="/post/2011-10-09-sorvi.fi/suomen-kuntien-miehitys.png" caption="Suomen kuntien sukupuolijakauma" alt="Teemakartta, jossa väreillä kuvattu Suomen kuntien sukupuolijakaumaa" width="500" link="/post/2011-10-09-sorvi.fi/suomen-kuntien-miehitys.png" align="center" >}}

Matkan varrella ilmeni seuraavia teknisiä ongelmia: 1) [gadm-muotoinen](http://gadm.org/) Suomen kuntajako on vanhentunut versio, esimerkiksi Rovaniemen ja Rovaniemen maalaiskunnan yhdistyminen ei ole näytä olevan mukana tässä versiossa. Alueet, joille asutustietoja ei ollut saatavilla, on merkitty karttaan valkoisella. Kertokaa, jos tiedätte mistä ajantasaisempi kuntajako on saatavilla R:lle. 2) En onnistunut käsittelemään skandeja R-paketin käännössä, joten ne piti ensin poistaa kuntien nimistä. Tämä tuskin vaikuttanee tuloksiin. Osaako joku kertoa, miten skandit jotenkin mukaan R-pakettiin? 3) Väestörekisterikeskuksen tiedot piti hakea parsimalla keskuksen verkkosivun taulukkoa XML-paketin työkaluilla. Kätevämpi tapa (kuten Juuso aiemmin mainitsi) olisi hyödyntää aineistoa suoraan [PC Axis-muodosta](http://www.r-ohjelmointi.org/?p=876) esim. [Tilastokeskuksen sivuilta](http://pxweb2.stat.fi/Dialog/varval.asp?ma=020_vaerak_tau_101_fi&ti=Kansalaisuus+i%E4n+ja+sukupuolen+mukaan+maakunnittain+1990+%2D+2010&path=../Database/StatFin/vrm/vaerak/&lang=3&multilang=fi), vinkkejä otetaan vastaan.

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20111009-kuntien-sukupuolijakauma.R).

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2011/10/09/r-paketti-avoimen-suomi-datan-louhintaan/
