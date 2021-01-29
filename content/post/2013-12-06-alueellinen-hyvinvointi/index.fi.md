---
title: "Alueellinen hyvinvointi – vuorovaikutteinen visualisointi Sotkanetin datasta"
slug: "alueellinen-hyvinvointi"
date: "2013-12-06"
author: "Leo Lahti"
categories:
  - uutinen
  - R
  - tiedonlouhinta
  - visualisointi
tags:
  - sorvi
  - Apps4Finland
  - Demos Helsinki
output:
  blogdown::html_page:
    highlight: tango
---

Louhoksen ja [Demos Helsingin](http://www.demoshelsinki.fi/) yhteistyönä tehty [vuorovaikutteinen visualisointi](https://ouzor.shinyapps.io/sotkanet/) alueellisesta hyvinvoinnista sijoittui Apps4Finland 2013 -kilpailun Hahmota-sarjassa hienosti [kolmanneksi](http://www.apps4finland.fi/palkitut-tyot/). Visualisointi mahdollistaa [Sotkanetin](http://uusi.sotkanet.fi/portal/page/portal/etusivu) hyvinvointi-indikaattoreiden havainnollisen tarkastelun ja mielenkiintoisten ilmiöiden löytämisen. Demos [blogasi](http://www.demoshelsinki.fi/kasi-ylos-jos-yhteiskunta-ja-data-kiinnostavat/) aiheesta aiemmin tällä viikolla, ja avaan tässä sitä lisää Louhoksen näkökulmasta.

![Apps4Finland_2013](/post/2013-12-06-alueellinen-hyvinvointi.fi_files/apps4finland_2013-001.jpg)

Louhoksen toiminta on toistaiseksi keskittynyt lähinnä avointen datasettien esikäsittelyyn ja hakurutiinien kehittämiseen [sorvi](http://louhos.github.io/sorvi/)-paketissa. Lisäksi olemme tehneet avatuista datoista yksinkertaisia visualisointeja ja bloganneet niistä. Tavoitteena on tehdä myös syvällisempiä analyysejä, mutta toistaiseksi niihin ei ole aika riittänyt päivätöiden ohella. Meillä ei myöskään ole kokemusta yhteiskuntatutkimuksesta, mikä vaikeuttaa mielenkiintoisten tutkimuskysymysten löytämistä.

Vuoden 2013 keväällä tarjoutui mahdollisuus kokeilla yhteistyötä ajatushautomo Demos Helsingin tutkijoiden kanssa. Demos tekee monipuolista yhteiskunnallista tutkimusta, ja heidän käsittelemänsä aiheet kuten demokratia ja energiakysymykset ovat erittäin kiinnostavia. Avoimen datan myötä tällaiseen yhteiskunnalliseen tutkimukseen on mahdollista tuoda myös määrällisiä komponentteja.

Alustavien tunnustelujen jälkeen päädyimme tutkimaan yhdessä Sotkanetin hyvinvointi-indikaattoreita, jotka [lisäsimme](http://www.hri.fi/fi/ajankohtaista/sotkanet-indikaattoripankki-mukaan-sorvi-tyokalupakkiin/) sorviin aiemmin tänä vuonna. Demoksen Juha Leppänen ja Satu Korhonen valitsivat Sotkanetista joukon mielenkiintoisia indikaattoreita erilaisista alueelliseen hyvinvointiin liittyvistä aiheista. Näiden pohjalta teimme vuorovaikutteisen visualisoinnin (ruutukaappaus alla), jota näpräämällä tutkijat pääsivät tulkitsemaan dataa.

![indikaattorivertailu](/post/2013-12-06-alueellinen-hyvinvointi.fi_files/indikaattorivertailu.png)

Tämä yhteistyökokeilu valoi uskoa tulevaisuuden yhteiskuntatutkimukseen jossa avoin data sekä avoimet datan käsittely- ja visualisointityökalut yhdistyvät tutkijoiden asiantuntemukseen. Vuoropuhelu, jossa tutkijat pääsevät vaikuttamaan data-analyysin kaikkiin vaiheisiin esittämällä kysymyksiä ja lopuksi tulkitsemaan dataa, mahdollistaa vaikeidenkin yhteiskunnallisten kysymysten lähestymisen uudella tavalla.

### Visualisoinnin teknisestä toteutuksesta

Vuorovaikutteinen visualisointi on toteutettu RStudion mahtavalla [Shiny-työkalulla](http://www.rstudio.com/shiny/), joka mahdollistaa visualisointien todella helpon toteuttamisen ja pystyttämisen RStudion tarjoamalle serverille. Itse visualisoinnit on tehty [Google Charts](https://developers.google.com/chart/)-työkaluilla käyttäen R:n [googleVis](http://cran.r-project.org/web/packages/googleVis/index.html)-pakettia ja lisäksi [ggmap](http://cran.r-project.org/web/packages/ggmap/index.html)-paketilla. Koodit datan käsittelyyn ja Shiny-visualisaatioon löytyvät [Githubista](https://github.com/ouzor/sotkanet-shiny).

Tämä oli ensimmäinen Shiny-härpäke jonka tein, joten kehitettävää on vielä paljon sekä käytettävyydessä että visuaalisella puolella. Kokemus oli kuitenkin erittäin lupaava ja uskon että Shinylle tulee paljon käyttöä tulevaisuudessa!

PÄIVITYS 10.10.2014: Päivitetty uudet linkit visualisointiin ja lähdekoodiin.

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2013/12/06/alueellinen-hyvinvointi/
