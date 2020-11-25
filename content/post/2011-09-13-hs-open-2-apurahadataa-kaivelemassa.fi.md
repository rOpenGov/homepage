---
title: "HS Open 2: Apurahadataa kaivelemassa"
date: "2011-09-13"
author: Juuso Parkkinen
categories:
  - R
  - tiedonlouhinta
  - visualisointi
tags:
  - ggplot2
  - HS open
---

Ensimmäisen artikkelini aiheena on [HS Open 2](https://www.hs.fi/hsnext/kutsu-hs-open-2-seurataan-rahaa-23-5/) -tapahtumassa analysoitu apurahadata. Data sisältää tietoa vuosina 2005-2009 jaetuista taiteilija-apurahoista. Latasin datan R:ään ja tein muutamia kuvaajia käyttäen ggplot2-pakettia. Tässä muutamia kuvaajia:

{{< img src="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/top20.png" caption="20 eniten apurahaa saanutta taiteilijaa (HS 19.5.2011)" width="700" alt="Palkkikaavio, jossa x-akselilla kuvattu apurahan määrä ja y-akselilla 20 eniten apurahaa saanutta henkilöä" link="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/top20.png" align="center" >}}

{{< img src="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/hakemusluokat.png" caption="Apurahat hakemusluokittain ja vuosittain eroteltuna" width="700" alt="Vuosittain ryhmitelty palkkikaavio, jossa x-akselilla kuvattu apurahan määrä ja y-akselilla hakemusluokka" link="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/hakemusluokat.png" align="center" >}}

{{< img src="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/ikc3a4_sukupuoli.png" caption="Apurahat ikäryhmittäin ja sukupuolen mukaan" width="700" alt="Sukupuolittain jaoteltu palkkikaavio, jossa x-akselilla kuvattu apurahan määrä ja y-akselilla apurahan saajat luokiteltu ikäluokittain" link="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/ikc3a4_sukupuoli.png" align="center" >}}

{{< img src="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/ikc3a4ryhmc3a4_vs_hakemusluokka.png" caption="Apurahat ikäryhmän ja hakemusluokan mukaan" width="700" alt="Ns. balloon plot -tyyppinen kaavio, jossa x-akselilla hakijoiden ikäryhmä, y-akselilla hakemuksen luokka ja pallon koko kuvaa myöntösummaa" link="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/ikc3a4ryhmc3a4_vs_hakemusluokka.png" align="center" >}}

ggplot2:n perusplottien lisäksi data voidaan visualisoida kartalle käyttäen apuna esimerkiksi [sp-pakettia](https://CRAN.R-project.org/package=sp). Suomen kartta löytyy shapefile-muodossa [GADM-tietokannasta](https://gadm.org). Absoluuttisten maakuntakohtaisten apurahasummien sijaan on mielenkiintoisempaa tarkastella apurahojen määrää maakuntien asukaslukuihin suhteutettuna. Tätä varten haemme tiedot maakuntien asukalsuvuista [Tilastokeskuksen Väestötietokannasta](http://pxweb2.stat.fi/Dialog/varval.asp?ma=020_vaerak_tau_101_fi&ti=Kansalaisuus+i%E4n+ja+sukupuolen+mukaan+maakunnittain+1990+%2D+2010&path=../Database/StatFin/vrm/vaerak/&lang=3&multilang=fi). [Data olisi luettavissa suoraan R:ään PC Axis muodossa](http://www.r-ohjelmointi.org/?p=876), mutta tyydymme tässä käsin haettuun ja muokattuun tiedostoon, ja palaamme PC Axis-muotoisen datan lukemiseen myöhemmin.

Seuraava karttavisualisointi näyttää myönnettyjen apurahojen määrän per asukas maakunnittain. Uudellemaalle näyttää menneen edelleen selvästi eniten apurahoja, mikä vaikeuttaa muiden maakuntien summien vertailua. Tämän takia toisesta kuvasta on jätetty Uudenmaan tiedot pois.

{{< img src="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/apurahat_kartalla_maakunnittain1.png" caption="Apurahat per asukas maakunnittain" width="700" alt="Teemakartta Suomesta, jossa väri kuvaa kuhunkin maakuntaan myönnetyn apurahan suuruutta" link="/post/2011-09-13-hs-open-2-apurahadataa-kaivelemassa.fi/apurahat_kartalla_maakunnittain1.png" align="center" >}}

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20110913-apurahat.R).

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2011/09/13/hs-open-2-apurahadataa-kaivelemassa/