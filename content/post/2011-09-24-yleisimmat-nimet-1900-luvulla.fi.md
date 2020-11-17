---
title: "Yleisimmät nimet 1900-luvulla"
date: "2011-09-24"
author: Juuso Parkkinen
categories:
  - R
  - tiedonlouhinta
  - visualisointi
tags:
  - ggplot2
---

Idea tähän artikkeliin tuli hauskasta [Name Voyager](http://www.bewitched.com/namevoyager.html)-visualisointipalvelusta, joka näyttää suosituimpien lasten nimet vuosiluvun mukaan (olettetavasti Jenkeissä). Vastaavaa dataa suomalaisten nimien määristä löytyy Väestörekisterikeskuksen [tilastoista](http://www.vrk.fi/default.aspx?id=279) ja [Nimipalvelusta](http://verkkopalvelu.vrk.fi/Nimipalvelu/default.asp?L=1). Ensimmäisessä on kattavat tilastot 2000-luvulta, kun taas jälkimmäisessä on luvut pienelle osalle yleisimpiä nimiä koko 1900-luvulta. Käytän tässä jälkimmäistä dataa yksinkertaisiin visualisointeihin. Tulevaisuudessa olisi mielenkiintoista kokeilla jotain alkuperäisen Name Voyagerin tapaista interaktiivista visualisointia tarkemmista 2000-luvun tilastoista.

Nimipalvelun data on tarjolla vain html-taulukkona, mutta pieni googlaus [näytti miten XML-pakettia käytetään html-taulukon lataamiseen R:ään](http://stackoverflow.com/questions/1395528/scraping-html-tables-into-r-data-frames-using-the-xml-package). Pienellä esikäsittelyllä ja ggplot2:n area-plotilla datasta saadaan alkuperäistä ideaa mukaileva visualisointi.

![Yleisimmät poikien nimet 1900-luvulla (geom_area)](/post/2011-09-24-yleisimmat-nimet-1900-luvulla.fi/pojat_top10_area_20110919.png)
*Yleisimmät poikien nimet 1900-luvulla (geom_area)*

Matti ei näytäkään olevan yhtä suosittu nimi kuin olin ymmärtänyt. Kuvaajasta näkyy suurten ikäluokkien vaikutus selvästi.

Jos edellisen kuvaajan kulmikkuus häiritsee, pehmeämpää jälkeä saadaan geom_density:llä, joka sovittaa dataan jatkuvan tiheysjakauman. Tällöin tosin y-akselin tulkinta hankaloituu.

![Yleisimmät poikien nimet 1900-luvulla (geom_density)](/post/2011-09-24-yleisimmat-nimet-1900-luvulla.fi/pojat_top10_density_20110919.png)
*Yleisimmät poikien nimet 1900-luvulla (geom_density)*

Tässä vielä area-plotti tyttöjen nimistä. Maria näyttää tulleen uudestaan muotiin sotavuosien jälkeen, kun taas Marjatta on ollut erityisesti sota-ajan suosikkinimi.

![Yleisimmät tyttöjen nimet 1900-luvulla](/post/2011-09-24-yleisimmat-nimet-1900-luvulla.fi/tytc3b6t_top10_area_20110919.png)
*Yleisimmät tyttöjen nimet 1900-luvulla*

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20110924-nimet.R).

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2011/09/24/yleisimmat-nimet-1900-luvulla/