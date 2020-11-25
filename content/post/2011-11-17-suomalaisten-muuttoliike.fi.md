---
title: "Suomalaisten muuttoliike Maailmanpankin datoista maailmankartalla visualisoituna"
date: "2011-11-17"
author: Juuso Parkkinen
categories:
  - paikkatieto
  - R
  - sorvi
  - tiedonlouhinta
  - visualisointi
tags:
  - Maailmanpankki
---

Mistä maasta ihmiset muuttavat Suomeen ja mihin Suomesta muutetaan? Vastausta voi etsiä [Maailmanpankin Migration-datasta](http://econ.worldbank.org/WBSITE/EXTERNAL/EXTDEC/EXTDECPROSPECTS/0,,contentMDK:22803131~pagePK:64165401~piPK:64165026~theSitePK:476883,00.html). Kiinnostuin aiheesta [tämän mielenkiintoisen mutta loppupeleissä mielestäni erittäin vaikeaselkoisen visualisoinnin](http://flowingdata.com/2011/08/10/people-moving/) takia. Yritettyäni aikani tutkia Suomen muuttovirtoja turhauduin ja päätin visualisoida datan itse kartalle (vaihteeksi). Maailmankarttavisualisointeja ei tästä blogista vielä löydykään, joten tulee sekin samalla tutuksi. Lisäksi [R-ohjelmointi -blogissa oli jokin aika sitten koodinpätkä jolla R tuottaa interaktiivisen karttapallon](http://www.r-ohjelmointi.org/?p=906), jota oli tietysti pakko kokeilla itse uuden datan kanssa!

Idea on simppeli: ladataan Maailmanpankin data ja haetaan Suomen tiedot eli kuinka monta ihmistä on muuttanut Suomesta kuhunkin maahan ja päin vastoin vuonna 2010. Muuttoliike yhteen suuntaan on helppo värikoodata kartalle, mutta halusin tehdä nimenomaan yhden kartan josta näkyisi sekä muuttoliikkeen suunta että muuttajien määrä. Testailin eri vaihtoehtoja ja päädyin lopulta näyttämään Suomeen kohdistuvan muuttoliikkeen punaisella värillä ja Suomesta poispäin kulkevan liikkeen sinisellä värillä, jolloin jos jostakin maasta on muuttoliikettä molempiin suuntiin, näkyisi se violettina. Lisäksi värin voimakkuus (alpha-kanava) näyttää muuttajien määrän. Lopputuloksesta pystyy vertailemaan liikenteen suuntaa ja voimakkuutta eri maiden välillä, mutta varsinaisia arvoja siitä ei pysty tulkitsemaan.

{{< img src="/post/2011-11-17-suomalaisten-muuttoliike.fi/finland_migration_20111116.png" 
caption="Muuttoliike Suomesta ja Suomeen. Sinisen väri kertoo Suomesta muihin maihin kohdistuvan muuttoliikkeen suhteellisen osuuden koko muuttoliikkeestä, ja punainen vastaavasti Suomeen suhtautuvan liikkeen osuuden. Värien voimakkuus kertoo muuttajien määrästä." 
width="800" 
alt="Teemakartta koko maapallosta, jossa värein kuvattu Suomesta muihin maihin kohdistuvan muuttoliikkeen voimakkuutta" 
link="/post/2011-11-17-suomalaisten-muuttoliike.fi/finland_migration_20111116.png" 
align="center" >}}

Visualisoinnista näkyy todella selkeästi muuttoliikkeen suunta: Suomeen muutetaan pääasiassa alemman kehitystason maista Aasiasta, Afrikasta, Etelä-Amerikasta ja Itä-Euroopasta, kun taas Suomesta muutetaan lähinnä muihin kehittyneisiin maihin Eurooppaan, Pohjois-Amerikkaan, Australiaan ja Länsi-Eurooppaan. Tätä olisi mielenkiintoista verrata tarkemmin elintasosta kertoviin datoihin, mutta jätetään se myöhemmäksi.

Alla jälleen R-lähdekoodi. Jos et vielä ole kokeillut Louhoksen esimerkkejä, nyt kannattaa viimeistään kokeilla sillä tuo interaktiivinen karttapallovisualisointi vaatii R-koodin ajamisen mutta on ehdottomasti näkemisen arvoinen!

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20111117-muuttoliike.R).

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2011/11/17/suomalaisten-muuttoliike-maailmanpankin-datoista-maailmankartalla-visualisoituna/