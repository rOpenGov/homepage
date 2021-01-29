---
title: "HS Open 3 lämmittely: Asuntojen myyntihinnat Helsingin kartalla"
slug: "hs-open-3-asuntojen-myyntihinnat"
date: "2011-10-05"
author: Juuso Parkkinen
categories:
  - paikkatieto
  - R
  - tiedonlouhinta
  - visualisointi
tags:
  - asunnot
  - ggplot2
  - GoogleMaps
  - HS open
---

Päivitys: [Uudempi postaus tästä aiheesta!](https://louhos.wordpress.com/2011/10/23/oikotien-myyntihinnat-ja-lukioiden-paremmuus-paakaupunkiseudulla/)

[Kolmannessa HS Openissa](http://blogit.hs.fi/hsnext/ilmoittaudu-hs-openiin-10-10-pengotaan-kaupunkia) yhtenä avattuna datana on [Asuntojen vuokrat ja hintapyynnöt Oikotiellä](http://blogit.hs.fi/hsnext/asuntojen-vuokrat-ja-hintapyynnot-oikotiella-2010-2011). Talosen Jaakko ehtikin jo tehdän vuokrahinnoista [mainion visualisoinnin](http://www.facebook.com/l.php?u=http%3A%2F%2Fdl.dropbox.com%2Fu%2F43933057%2Foikotie%2Fvuokrat.html&h=7AQBHULoMAQA6KYL2j8xcfWlnMKU_awfgaJ7NX9-r3zdUAA). Itse olen jo pidempään fiilistellyt mahdollisuutta [käyttää GoogleMapsin karttoja R-visualisoinnin pohjana](https://github.com/hadley/ggplot2/wiki/Crime-in-Downtown-Houston,-Texas-:-Combining-ggplot2-and-Google-Maps), ja tässähän tarjoutui loistava tilaisuus kokeilla tuota käytännössä.

Ideana on siis näyttää Oikotiedatan perusteella asuntojen hintapyynnöt kartalla, käytännössä keskimääräiset neliöhinnat postinumeroa kohden. Helpommin sanottu kuin tehty. Tämä vaatii nimittäin maantieteelliseti koordinaatit kullekin postinumerolle. [Geonames](http://www.geonames.org/) tarjoaa tällaista tietoa, mutta itse en ainakaan onnistunut saamaan sieltä Helsingin kaupunginosien postinumerotietoja ulos. Kertokaa jos onnistutte paremmin.

Helsinki Region Infosharesta löytyy [pääkaupunkiseudun aluejakokartat](http://www.hri.fi/fi/data/paakaupunkiseudun-aluejakokartat/), jossa kaupunginosille on annettu koordinaatit parilla eri tarkkuustasolla. Tämä data on mm. GoogleMapsin käyttämässä KML-formaatissa, minkä takia jouduin vähän kikkailemaan jotta sain datan R:n ymmärtämään muotoon. Lopulta päädyin käyttämään erillistä [kmlcsv-konvertteria](http://choonchernlim.com/kmlcsv/), jolla sain alueiden pistetiedot käännettyä csv:ksi.

Seuraavaksi tarvittaisiin sitten tiedot postinumerojen ja kaupunginosien yhteyksistä. Postilla on [hakupalvelu](http://www.posti.fi/postipalvelee/postinumerohaku/) joka antaa katujen nimet postinumeroiden perusteella, mutta siitä ei ole tässä apua. Lisäksi Itella tarjoaa koko maan kattavaa [postinumerotiedostoa](http://www.itella.fi/palvelutjatuotteet/osoitepalvelut/postinumerotuotteet/postinumerotiedosto.html), muttei sentään ilmaisena ja avoimena datana, olisi liian helppoa… Yksi mahdollisuus olisi yhdistää postinumerot ja alueiden nimet käsin, mutta se ei oikein istu avoimen datan ideaan. Pienen kaivelun jälkeen löysin [vanhempaa asuntohintatietoa Helsingistä](http://www.hri.fi/fi/data/vanhojen-asunto-osakehuoneistojen-kauppahinnat-varainsiirtoveroaineiston-mukaan-helsingin-postinumeroalueilla-vuosina-2000–2008/), HRI:stä jälleen. Tätä dataa voisi toki visualisoida suoraankin, ja myös verrata Oikotien tarjoamiin uudempiin hintatietoihin. Tässä tiedostossa on hintatietojen lisäksi useimmille Helsingin postinumeroalueille myös nimi, joten sillä päästään eteenpäin. Alueiden nimet eivät edelleenkään osu täysin yksiin aluejakokarttojen nimien kanssa, mutta pienellä korjailulla saadaan melko kattava aineisto aikaan.

Sitten vain yhdistetään kaikki yllä oleva data ja visualisoidaan. Oikotien myyntihintadata sisältää muuten vielä jonkun verran virheitä, ja lisäksi mukana on epäoleellista dataa kuten myytäviä tehdashalleja ja hevostiloja, ja lisäksi asumisoikeusasuntoja, jotka vääristävät keskimääräisiä hintoja. Päädyin alustavasti suodattamaan datan yksinkertaisesti asuntojen koon ja hinnan mukaan, ja lopputulos näyttää melko järkevältä.

Tuloksena näin aluksi hyvin yksinkertainen karttavisualisointi, jossa datapisteiden koko kertoo keskimääräiset neliöhinnan kyseisellä alueella. Lisäksi kartalla näkyy kutakin pistettä vastaavan paikannimi, niiden avulla voidaan arvioida kuinka hyvin aluejakokarttojen koordinaatit osuvat kohdilleen. Osa nimistä tosin peittyy datapisteiden alle, pitää korjata tämä tulevaisuudessa. Data näyttää suunnilleen siltä mitä odotinkin, eli Helsingin ytimen hinnat ovat korkealla ja muualla on halvempaa.

{{< img src="/post/2011-10-05-hs-open-3.fi/helsinki_prices2_20111005.png" 
caption="Asuntojen keskimääräiset neliöpyyntihinnat Helsingissä" 
width="700" 
alt="Helsingin kartta, jonka alueiden päälle merkittyjen pisteiden koko kuvastaa alueen neliöhintaa" 
link="/post/2011-10-05-hs-open-3.fi/helsinki_prices2_20111005.png" align="center" >}}

Tässä siis vähän esimakua mitä HS Open 3:n datoilla voidaan saada aikaan. Tarvittavien datojen pyörittely aiheuttaa kyllä päänvaivaa ja työtä. Seuraavaksi olisi mielenkiintoista laajentaa visualisointi koko pääkaupunkiseudulle, mutta se vaatii postinumeroiden ja alueiden yhdistämistä käsin tai jotenkin muuten, ideoita otetaan vastaan. Lisäksi visualisoinnista saa helpostikin paljon paremman näköisen.

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20111005-HSOpen3_lammittely.R).

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2011/10/05/hs-open-3-lammittely-asuntojen-myyntihinnat-helsingin-kartalla/
