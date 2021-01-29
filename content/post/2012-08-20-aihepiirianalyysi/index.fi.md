---
title: "Aihepiirianalyysi kansanedustajien puheista"
slug: "aihepiirianalyysi_kansanedustajien_puheista"
date: "2012-08-20"
author: Juuso Parkkinen
categories:
  - koneoppiminen
  - R
  - tiedonlouhinta
  - visualisointi
tags:
  - Eduskunta
  - Processing
  - topicmodels
---

Hesari ja [Kansan muisti](http://kansanmuisti.fi/) julkaisivat keväällä mielenkiintoisen kansanedustajien puheista koostetun [datasetin](http://blogit.hs.fi/hsnext/avodataa-kansanedustajien-puheet-muutettuna-perusmuotoon). Datan perusteella syntyikin useita mielenkiintoisia [visualisointeja](http://blogit.hs.fi/hsnext/tallaista-datajournalismia-syntyi-hs-open-4ssa) osana HS Open 4  -tapahtumaa.  Näin laaja aineisto tarjoaa myös mainion mahdollisuuden kokeilla aihepiirianalyysiä (engl. [*topic model*](http://en.wikipedia.org/wiki/Topic_model)). Se on tilastollinen koneoppimismenetelmä, jolla laajoista tekstidokumenttikokoelmista voidaan etsiä toistuvia aihepiirejä (topic). Esimerkiksi kansanedustajien puheista voidaan automaattisesti tunnistaa eduskunnassa käsiteltyjä aiheita, ja mitata edustajien verbaalista aktiivisuutta kunkin aiheen tiimoilta.

Aihepiirianalyysissä kukin aihepiiri koostuu joukosta sanoja, jotka esiintyvät usein aihepiirin keskusteluissa. Vastaavasti kukin dokumentti, tässä tapauksessa tietyn kansanedustajan puheet, sisältää joukon aihepiirejä. Esimerkiksi viisi todennäköisintä sanaa aihepiirille 7 ovat koulutus, ammattikorkeakoulu, aloituspaikka, opiskelija, ja esillä, ja aihepiirille 19:lle puolustusvoima, suomi, sopimus, jalkaväkimiina, ja Afganistan. Näiden sanojen perusteella esimerkkiaihepiirit on helppo nimetä koulutusta ja maanpuolustusta käsitteleviksi. On tärkeää huomata, että kukin sana voi esiintyä useammassa kuin yhdessä aihepiirissä, esimerkiksi sanaa suomi käytetään kansanedustajien puheissa monessa yhteydessä.

Aihepiirianalyysin tulokset voisi esittää listaamalla annettujen esimerkkien tyyliin kullekin aihepiirille todennäköisimmät sanat ja vastaavasti kullekin kansanedustajalle todennäköisimmät aihepiirit. Erityinen [*eye diagram* -visualisointi](http://research.ics.aalto.fi/mi/software/ismb09/) tiivistää mallin löytämät yhteydet yhteen kuvaan:

{{< img src="/post/2012-08-20-aihepiirianalyysi.fi/eyediagram_speech_20120820.png" 
caption="Eye diagram -visualisointi kansanedustajien puheiden aihepiirianalyysista" 
width="800" 
alt="Ns. eye diagram -visualisointi, jossa vasemmalla puolella kansanedustajat ja oikealla puolella heidän käyttämissään puheenvuoroissa esiintyvät sanat" 
link="/post/2012-08-20-aihepiirianalyysi.fi/eyediagram_speech_20120820.png" 
align="center" >}}

[Esimerkkiaineistomme eye diagram-visualisoinnissa (PDF-versio)](http://ouzor.github.com/files/figures/EyeDiagram_Speech_20120813.pdf) kansanedustajat ovat vasemmalla, aihepiirit keskellä ja sanat oikealla. Viivojen leveydet kuvaavat mallin määrittämiä todennäköisyyksiä kansanedustajien ja aihepiirien ja vastaavasti aihepiirien ja sanojen välillä. Kunkin aihepiirin yhteydet on esitetty omalla värillään ja lisäksi kuhunkin aihepiiriin liittyvät kansanedustajat ja sanat on tulkinnan helpottamiseksi pyritty listaamaan peräkkäin. Pienen tutustumisen jälkeen visualisoinnista löytyy selkeitä aihepiirejä. [Tässä esimerkiksi-visualisointi](http://ouzor.github.com/files/figures/EyeDiagram_Speech_Topic18_20120813.pdf), jossa on korostettu selvästi eurokriisiin liittyvän aihepiirin yhteydet.

Esimerkki valaisee aihepiirianalyysin tarjoamia mahdollisuuksia tekstidatan analysoinnissa. Tuloksia olisi mahdollista tulkita tarkemminkin puheiden ajankohdan ja puolueen mukaan. Lisäksi vuorovaikutteinen versio eye diagram -visualisoinnista helpottaisi tulkintaa entisestään. Aihepiirianalyysi antaa nopean yleiskuvan eduskunnan ajankohtaisista keskustelunaiheista ja toimijoista.

***Teknisiä yksityiskohtia***

R-koodit analyysin toistamiseen löytyvät alta sekä Louhos-projektin [Takomo-reposta](https://github.com/louhos/takomo/tree/master/examples). Visualisointi on toteutettu [Processing](http://processing.org/):lla, ja lisäksi tarjolla on yksinkertainen R-rajapinta.

Hesarin julkaisemassa datasetissä Eduskunnan puheet olikin jo [Kansan muistin](http://kansanmuisti.fi/) toimesta muutettu perusmuotoon, mikä on käytännössä edellytyksenä suomenkielisen datan analysoinnissa. Osa mallin löytämistä aihepiireistä on yleisempiä, kuten topic 15 (myös, asia, pitää, sitten ja aika), jota käyttävät suurin osa kansanedustajista. Tällaiset aihepiirit eivät ole erityisen mielenkiintoisia, ja visualisoinnista onkin selvyyden vuoksi poistettu aihepiirit 3, 11, ja 15. Toinen höydyllinen esikäsittelyvaihe tekstidatan analyysissä on erilaisten yleisten sanojen, kuten ja, tai ei poistaminen. Tässä analyysissä poistin [joukon](http://ouzor.github.com/files/data/misc/finnish_stop_edit_20120305.txt) ns. sulkusanoja (engl. [*stop word*](http://en.wikipedia.org/wiki/Stop_words)), mutta enemmänkin vastaavia sanoja voisi poistaa, kuten aihepiiri 15 osoittaa.

Aihepiirianalyysi ajettiin R:n [topicmodels](http://cran.r-project.org/web/packages/topicmodels/index.html)-paketilla, mutta R:ssä olisi tarjolla muitakin toteutuksia topic-mallille. Mallin ajaminen vaatii erinäisten parametrien asettamisen, niistä tärkeimpänä aihepiirien määrä. Tässä analyysissä määräksi asetettiin 20 sen kummemmin validoimatta. Lisätietoa aihepiirien määrän oikeaoppisesta validoinnista ja muista parametreista löytyy esimerkiksi topicmodels-paketin [oheismateriaalissa](http://cran.r-project.org/web/packages/topicmodels/vignettes/topicmodels.pdf). Eye diagram -visualisointikoodi on saatavilla [githubissa](https://github.com/ouzor/eyediagram).

PÄIVITYS 6.1.2013: Blogin R-skriptejä ylläpidetään jatkossa Githubissa. Tämän artikkelin koodit löytyvät [täältä](https://github.com/louhos/takomo/blob/master/examples/20120820-aihepiirianalyysi.R).

Alkuperäinen kirjoitus Louhos-blogissa: https://louhos.wordpress.com/2012/08/20/aihepiirianalyysi-kansanedustajien-puheista/
