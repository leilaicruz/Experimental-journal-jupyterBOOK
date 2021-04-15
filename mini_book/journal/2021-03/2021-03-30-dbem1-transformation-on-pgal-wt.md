---
title: " Transformation on WT+pGal to get dbem1::KanMx + pgal-cdc42"
output: pdf_document
documentclass: article
classoption: onecolumn
pdf_document:
    pandoc_args: ["--filter = pandoc-fignos"]
latex_engine: pdflatex
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
geometry: margin=0.5in
autoEqnLabels: true
cref: true
crossref: true
colorlinks: true
---

# Title : bem1::KanMX transformation in WT+pGal-CDC42

## Date

06042021- 

## Objective

-  To have this strain for the growth controls measurements needed for the paper with Fridtjof. 
- The strain we had yIdb005a,b are completely contaminated with WT. See the last results from [2021-01-25-Supp-controls-sfgFP-influence-to-paper](../2021-01/2021-01-25-Supp-controls-sfgFP-influence-to-paper.md)

## Method

- Yeast Transformation Protocol
- 06042021: Incubation of ywkd071a in SC-URA+2%Gal+2% Raff 
- 07042021: Culture not in log phase, only at late afternoon , around 15:00. I transfered the culture to room temperature to do the transformation on the next day. 
- 08042021: OD measurement

| strain   | OD 10x dilution | Real OD | Dilution to OD=0.5  | Real OD after dilution |
|----------|-----------------|---------|---------------------|------------------------|
| ywkd071a | 0.7             | ~7      | 10x                 | 0.4                    |

  - Incubation started at 9:00 

  - Start of transformation at 13:00 , with OD=1.3
  - 10ul of DNA from PCR bem1:KANmx (~200ng/uL) = 2ug DNA
  - 2h recovery step in SC-URA+2% Gal+2% Raff
  - Plate in selection plates (Sc-URA+2%gal+2%raff +G418)
    - 100ul 0x dilution (positive control) 
    - 100ul 50x dilution (positive control)  
    - 100ul 100X dilution (positive control)
    - 100uL 0X dilution (negative control) 
  - Plate in normal plates (SC-URA+2%gal+2%raff )
    - 100uL 100X dilution (positive control) 
    - 100uL 100X dilution (negative control) 
    
## Results

- Selection plates 

![Selection plates ](../Images/15042021-selection-plates.svg.png){#fig:selection-plates}

- Colony PCR with 4 from small to medium size colonies 
  - Primer sets: olic56/oll60, olic57/oll61, olic56/olic57
  - Colonies dissolved in 25ul MiliQ
  - 1uL for PCR 
  - PCR with Leila_LL_60 protocol : 60C annealing temperature, 2min in 72C and 30secs in 98C

![Colony PCR Gel](../Images/13042021-colony-PCR-succesful-external-primers.png){#fig:colony-pcr}

  - We can not say anything from Figure [@fig:colony-pcr] because it seems the primers oll60/61 dont work. It seems that colony 4 could had a band size for the external primers similar to the positive control, but it did not grow in plate. 

- Colony PCR of more colonies , one of them a big colony from the 100X selection plate. 
  - Primer sets: olic56/oll30, olic57/oll29, olic56/olic57
  - Colonies dissolved in 10ul MiliQ
  - Take 1ul for PCR 
  - PCR with Leila_LL_60 protocol : 60C annealing temperature, 2min in 72C and 30secs in 98C

![Colony PCR with Liedewij primers  ](../Images/15042021-colony-pcr-LL-primers-one-clone-good-colony-9.svg.png){#fig:colony-pcr-colony-9}

From Figure [@fig:colony-pcr-colony-9] we can see that colony 9 shows all the exected  band sizes. Though it is very vague for the edge selection. 

  - [x] Put all the colonies to grow in SC-URA+2%GAL+2%Raff+G418. 

- Colony PCR with two more big colonies from the 100x selection plate and two more from the a re-streak plate. 


## Conclusion