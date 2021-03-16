---
title: "Supp controls on sfgFP influence on the bulk growth"
output: pdf_document
documentclass: article
classoption: onecolumn
pdf_document:
latex_engine: xelatex
toc: true
lof: true
numberSections: true
highlight: tango
sectionsDepth: 3
chapters: True
figPrefix:
  - "Fig."
  - "Figs."
secPrefix:
  - "Section"
  - "Sections"
fontsize: 12pt
geometry: margin=1in
mainfont: DejaVu Serif
autoEqnLabels: true
crossref: true
cref: true
---



# Title: Supp controls on sfgFP influence on the bulk growth

## Date
25012021-

## Objective

- To discard the influence of the sfGFP on the Cdc42 dependency for growth

## Method

- Strains:
  
| Strain 	| Name 	|
|-	|-	|
| *BEM1 BEM3 CDC42* 	| YWKD062(2) 	|
| *BEM1 BEM3 GAL1-CDC42* 	| YWKD071aI,YWKD071aII 	|
| *BEM1 BEM3 GAL1-sfGFP-CDC42* 	| YWKD065a,YWKD065b,YIdB003 	|
| *$\Delta$bem1 BEM3 CDC42* 	| YWKD063a,YWKD068a,YWKD063 	|
| *$\Delta$bem1 BEM3 GAL1-CDC42* 	| YIdB005(2) 	|
| *$\Delta$bem1 BEM3 GAL1-sfGFP-CDC42* 	| YWKD069a(2) 	|
| *$\Delta$bem1 $\Delta$bem3 CDC42* 	| YWKD067a(2),YWKD067b 	|
| *$\Delta$bem1 $\Delta$bem3 GAL1-CDC42* 	| YWKD073aI,YWKD073aII 	|
| *$\Delta$bem1 $\Delta$ bem3 GAL1-sfGFP-CDC42* 	| YWKD070a,YWKD070c 	|
- Measure in 0,0.06% and 0.1% Galactose concentrations in 36C , using two technical replicates per plate . (If possible do two plates)
- Booking of the plate reader Biotek on 10022021
  - [x] Incubation on 08022021
  - [x] Layout modified in the moment (because a pipette mistake):
  ![](../images/08022021-layout.png)
  - [x] Experiment started at 11:30 
    - [x] Linear 3 mins:30 secs and  orbital 3 mins:30 secs shaking before each measurement at 36C
  

### Protocol

- Growth assay protocol (p.66 Werner PhD Thesis)
  - First, a 96 well plate is inoculated with about 5 μl of cells into 100 μl medium per well in a predefined layout. In addition, sterile MiliQ is put in the four reservoirs in the perimeter (4 times 2 mL) and 77 times 100 μl in the reservoirs between wells. The wells are then covered by a sticker and with the lid on, it is placed shaking slowly (100-150 rpm) for 2 days at 30 ºC..
  - Then, using a multi-pipette, 10 μl of cells of this plate are transferred to a new plate which has 90 μl of media in the same layout, which dilutes the cells a factor of ten. This is then repeated for a new plate, where 5 μl of cells are transferred to 95 μl media, to ultimately accomplish a 200x dilution compared to the original plate. When making the dilution, wells are gently mixed before dilution by pipetting up and down. The 200x diluted plate is then sealed by a transparent sticker, and covered with the lid to minimize evaporation (and water is placed in the reservoirs as before).
- Measurement protocol:
  - The first 1000s linearly pre-shakes (amplitude 1 mm) the plate, before shaking just before each measurement round in a 380 second interval. These rounds start with 90” linear shaking (amplitude 2 mm), 90” orbital shaking (amplitude 1.5 mm), 90” linear shaking (amplitude 1 mm), waiting 10” and then OD-600 +/-9 nm measurements (25 flashes, 5ms settle time). Rounds were executed in two consecutive loops of 24 hours, after which OD values were documented in a excel sheet.
- Layout per plate: 
  ![](../images/03022021-layout-plate.png)
  
## Results

![](../images/12022021-sfGFP-controls-Biotek-overview-growth-curves.png)

### Plate layout to check all WT+pGal biological replicates and mutants+pGal+sfGFP
![](../images/17022021-plate-layout.png)

- Observations from the incubation 
  - 2uL of melted glycerol stocks per well
  - started at 10:30
  - Media base: 4xCSM-NF+2%Raff
  - ![Screenshot of the incubation after 48h](../images/19022021-screenshot-incubation-curves.png)
 
- Measuring at 36C at 11:00
  - 1uL of cells from incubation to 100uL media (easier to pipette)~100X dilution


## Conclusion