## Generazione datasette

```
csvs-to-sqlite \
  ./csv/bilancio-dello-stato \
  ./sqlite/bilancio-dello-stato.db \
  -s ';' \
  --replace-tables
```

## Esecuzione datasette

```
docker run -p 8001:8001 -v `pwd`:/mnt \
    datasetteproject/datasette \
    datasette -p 8001 -h 0.0.0.0 \
    --config allow_download:off \
    /mnt/sqlite/bilancio-dello-stato.db \
    --metadata /mnt/metadata.json \
    --template-dir /mnt/templates/ \
    --static static:/mnt/static
```

## Bilancio dello stato

Tutti i dati sono originati dal [Ministero dell'Economia e Finanze](http://www.mef.gov.it/) ed hanno licenza [CC-BY](http://creativecommons.org/licenses/by/4.0/)

### Serie Storiche

#### Disegno Legge di Bilancio Presentato - Serie storica - Spese per Amministrazione Missione Programma Macroaggregato

Prodotto contenente la serie storica dei dati della spesa relativi al Disegno Legge di Bilancio Presentato aggregati per l'esercizio finanziario di riferimento

**sorgente**: https://bdap-opendata.mef.gov.it/content/disegno-legge-di-bilancio-presentato-serie-storica-spese-aggregato-amministrazione-missione
**CSV**: [`csv/bilancio-dello-stato/serie/dlb.csv`](csv/bilancio-dello-stato/serie/dlb.csv)

#### Legge di Bilancio Pubblicata - Serie storica - Spese per Amministrazione Missione Programma Macroaggregato

Prodotto contenente la serie storica dei dati della spesa relativi alla Legge di Bilancio aggregati per Amministrazione Missione Programma Macroaggregato

**sorgente**: https://bdap-opendata.mef.gov.it/content/legge-di-bilancio-cruscotto-spese-amministrazione-missione-programma-macroaggregato
**CSV**: [`csv/bilancio-dello-stato/serie/lbp.csv`](csv/bilancio-dello-stato/serie/lbp.csv)

#### Rendiconto Pubblicato - Serie storica - Saldi

Dati di Saldi relativi al Rendiconto Pubblicato per l'esercizio finanziario di riferimento

**sorgente**: https://bdap-opendata.mef.gov.it/content/rendiconto-pubblicato-serie-storica-saldiold
**CSV**: [`csv/bilancio-dello-stato/serie/rend_saldi.csv`](csv/bilancio-dello-stato/serie/rend_saldi.csv)

### Bilancio 2019

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/content/2019-disegno-legge-di-bilancio-presentato-elaborabile-spese-capitolo
**CSV**: [`csv/bilancio-dello-stato/2019/dlb.csv`](csv/bilancio-dello-stato/2019/dlb.csv)

### Bilancio 2018

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2018
**CSV**: [`csv/bilancio-dello-stato/2018/dlb.csv`](csv/bilancio-dello-stato/2018/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2018
**CSV**: [`csv/bilancio-dello-stato/2018/lbnv1.csv`](csv/bilancio-dello-stato/2018/lbnv1.csv)

#### Seconda Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv2_spe_elb_cap_01_2018
**CSV**: [`csv/bilancio-dello-stato/2018/lbnv2.csv`](csv/bilancio-dello-stato/2018/lbnv2.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2018
**CSV**: [`csv/bilancio-dello-stato/2018/lbp.csv`](csv/bilancio-dello-stato/2018/lbp.csv)

### Bilancio 2017

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2017
**CSV**: [`csv/bilancio-dello-stato/2017/dlb.csv`](csv/bilancio-dello-stato/2017/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2017
**CSV**: [`csv/bilancio-dello-stato/2017/lbnv1.csv`](csv/bilancio-dello-stato/2017/lbnv1.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2017
**CSV**: [`csv/bilancio-dello-stato/2017/lbp.csv`](csv/bilancio-dello-stato/2017/lbp.csv)

#### Rendiconto Pubblicato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/content/2017-rendiconto-pubblicato-elaborabile-spese-capitolo
**CSV**: [`csv/bilancio-dello-stato/2017/rend.csv`](csv/bilancio-dello-stato/2017/rend.csv)

### Bilancio 2016

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2016
**CSV**: [`csv/bilancio-dello-stato/2016/dlb.csv`](csv/bilancio-dello-stato/2016/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2016
**CSV**: [`csv/bilancio-dello-stato/2016/lbnv1.csv`](csv/bilancio-dello-stato/2016/lbnv1.csv)

#### Seconda Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv2_spe_elb_cap_01_2016
**CSV**: [`csv/bilancio-dello-stato/2016/lbnv2.csv`](csv/bilancio-dello-stato/2016/lbnv2.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2016
**CSV**: [`csv/bilancio-dello-stato/2016/lbp.csv`](csv/bilancio-dello-stato/2016/lbp.csv)

### Bilancio 2015

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2015
**CSV**: [`csv/bilancio-dello-stato/2015/dlb.csv`](csv/bilancio-dello-stato/2015/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2015
**CSV**: [`csv/bilancio-dello-stato/2015/lbnv1.csv`](csv/bilancio-dello-stato/2015/lbnv1.csv)

#### Seconda Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv2_spe_elb_cap_01_2015
**CSV**: [`csv/bilancio-dello-stato/2015/lbnv2.csv`](csv/bilancio-dello-stato/2015/lbnv2.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2015
**CSV**: [`csv/bilancio-dello-stato/2015/lbp.csv`](csv/bilancio-dello-stato/2015/lbp.csv)

### Bilancio 2014

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2014
**CSV**: [`csv/bilancio-dello-stato/2014/dlb.csv`](csv/bilancio-dello-stato/2014/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2014
**CSV**: [`csv/bilancio-dello-stato/2014/lbnv1.csv`](csv/bilancio-dello-stato/2014/lbnv1.csv)

#### Seconda Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv2_spe_elb_cap_01_2014
**CSV**: [`csv/bilancio-dello-stato/2014/lbnv2.csv`](csv/bilancio-dello-stato/2014/lbnv2.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2014
**CSV**: [`csv/bilancio-dello-stato/2014/lbp.csv`](csv/bilancio-dello-stato/2014/lbp.csv)

### Bilancio 2013

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2013
**CSV**: [`csv/bilancio-dello-stato/2013/dlb.csv`](csv/bilancio-dello-stato/2013/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2013
**CSV**: [`csv/bilancio-dello-stato/2013/lbnv1.csv`](csv/bilancio-dello-stato/2013/lbnv1.csv)

#### Seconda Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv2_spe_elb_cap_01_2013
**CSV**: [`csv/bilancio-dello-stato/2013/lbnv2.csv`](csv/bilancio-dello-stato/2013/lbnv2.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2013
**CSV**: [`csv/bilancio-dello-stato/2013/lbp.csv`](csv/bilancio-dello-stato/2013/lbp.csv)

### Bilancio 2012

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2012
**CSV**: [`csv/bilancio-dello-stato/2012/dlb.csv`](csv/bilancio-dello-stato/2017/2012.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2012
**CSV**: [`csv/bilancio-dello-stato/2012/lbnv1.csv`](csv/bilancio-dello-stato/2012/lbnv1.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2012
**CSV**: [`csv/bilancio-dello-stato/2012/lbp.csv`](csv/bilancio-dello-stato/2012/lbp.csv)

### Bilancio 2011

#### Disegno Legge di Bilancio Presentato Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_dlb_spe_elb_cap_01_2011
**CSV**: [`csv/bilancio-dello-stato/2011/dlb.csv`](csv/bilancio-dello-stato/2011/dlb.csv)

#### Prima Nota di Variazione Approvata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_nv1_spe_elb_cap_01_2011
**CSV**: [`csv/bilancio-dello-stato/2011/lbnv1.csv`](csv/bilancio-dello-stato/2011/lbnv1.csv)

#### Legge di Bilancio Pubblicata Elaborabile Spese Capitolo

**sorgente**: https://bdap-opendata.mef.gov.it/opendata/spd_lbf_spe_elb_cap_01_2011
**CSV**: [`csv/bilancio-dello-stato/2011/lbp.csv`](csv/bilancio-dello-stato/2011/lbp.csv)
