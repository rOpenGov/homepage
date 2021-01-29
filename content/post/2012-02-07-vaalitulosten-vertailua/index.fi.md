---
title: "Vaalitulosten vertailua vuorovaikutteisena visualisaationa"
slug: "vaalitulosten_vertailua_vuorovaikutteisena_visualisaationa"
date: 2012-02-07
author: Juuso Parkkinen
categories:
  - R
  - sorvi
  - tiedonlouhinta
  - paikkatieto
  - visualisointi
tags:
  - Datavaalit
  - googleVis
  - kunnat
  - vaalit
  - vuorovaikutteisuus
output:
  blogdown::html_page:
    highlight: tango
---

Vaalihumu alkaa onneksi jo laantua, mutta innokkaimmille tarjotaan tässä vielä osana Datavaalit2012-projektia mahdollisuus vertailla äänestystuloksia ensimmäisen ja toisen kierroksen välillä. Vertailu onnistuu kuntatasolla sekä pääkaupunkiseudun sisällä äänestysalueiden kesken.

[VISUALISOINTI: VAALITULOSTEN VERTAILU KUNNITTAIN](http://dl.dropbox.com/u/792906/figures/Presidentti2012_MotionChart_Kunnat_20120207.html). Tässä voi esimerkiksi tarkastella [kuinka aktiivisesti Soinia ja Väyrystä ensimmäisellä kierroksella äänestäneet äänestivät toisella kierroksella](http://www.hs.fi/politiikka/Väyrysen+kannattajat+jättivät+äänestämättä+Soinin+eivät/a1305555204413), ja toisaalta äänestivätkö he Niinistöä vai Haavistoa.

[VISUALISOINTI: VAALITULOSTEN VERTAILU PÄÄKAUPUNKISEUDULLA](http://dl.dropbox.com/u/792906/figures/Presidentti2012_MotionChart_PKS_20120207.html). Tässä voi tarkastella äänestyskäyttäytymistä yksityiskohtaisesti pääkaupunkiseudun sisällä äänestysalueittain. PÄIVITYS 8.2. kaupungit korjattu, kiitos Martille kommentista.

Tässä esimerkkinä ruutukaappaus interaktiivisesta visualisoinnista.

{{< img src="/post/2012-02-07-vaalitulosten-vertailua.fi_files/motionchart_screenshot.png" caption="Esimerkkivertailu. Väyrysen ensimmäisen kierroksen kannatuksen ja toisen kierroksen äänestysprosentin välillä näyttää olevan yhteys." width="500" alt="Kuva interaktiivisesta visualisoinnista" link="/post/2012-02-07-vaalitulosten-vertailua.fi_files/motionchart_screenshot.png" align="center" >}}

Aiemmat Louhoksessa julkaisut visualisaatiot ovat kaikki olleet staattisia, sillä R:ssä on toistaiseksi melko huonosti tarjolla työkaluja interaktiivisten visualisointien tekoon. Tähän tuli kuitenkin hiljattain muutos [googleVis](http://cran.r-project.org/web/packages/googleVis/index.html) R-paketin myötä. Paketti tarjoaa helppokäyttöisen rajapinnan [Google Chart Tools](http://code.google.com/apis/chart/):iin, joilla kuka tahansa voi tuottaa esimerkiksi [Hans Rosling](http://www.ted.com/talks/hans_rosling_shows_the_best_stats_you_ve_ever_seen.html) -tyyppisen [Motion Chartin](http://code.google.com/apis/chart/interactive/docs/gallery/motionchart.html) hetkessä.

Vaalien ensimmäisen kierroksen tuloksista julkaistiinkin jo [hieno Motion Chart -visualisointi](https://sites.google.com/site/tiedonlouhintaa/), jossa oli lisäksi yhdistetty muuta Tilastokeskukselta löytyvää kuntadataa. Näytämme nyt kuinka sama tehdään R:llä yhdistäen ensimmäisen ja toisen kierroksen vaalidatat, koodi löytyy alta.

HS Next tarjoaa [ensimmäisen](http://blogit.hs.fi/hsnext/hs-julkaisee-presidentinvaalien-tuloksen-avoimena-tietona) ja [toisen kierroksen](http://blogit.hs.fi/hsnext/presidentinvaalien-toisen-kierroksen-tulos-avoimena-datana) äänestystulokset, ja lisäksi Tilastokeskukselta löytyi [lista kunnista vaalipiireittäin](http://www.stat.fi/meta/luokitukset/vaalipiiri/001-2012/luokitusavain_kunta.html), mikä helpottaa datan työstämistä yhteensopivaan muotoon. Tulokset löytyvät aluksi linkitettyinä Dropboxin kautta, kunnes keksin kuinka ne saa sisällytettyä WordPressiin. PÄIVITYS: Tämä ei taidakaan onnistua eli noilla Dropbox-linkeillä mennään.

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20120207-Presidentti2012_MotionCharts.R).

PÄIVITYS 24.11.2020: Poistettu suora linkki domain squattereiden kaappaamalle datajournalismi.fi-sivustolle

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2012/02/07/vaalitulosten-vertailua-vuorovaikutteisena-visualisaationa/
