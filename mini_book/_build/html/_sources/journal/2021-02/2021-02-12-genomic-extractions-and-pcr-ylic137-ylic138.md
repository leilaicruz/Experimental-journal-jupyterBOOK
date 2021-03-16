
---
title: "Genomic extractions and PCR for checking of dbem3 and dbem3dnrp1 new strains"
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

# Title : Genomic extractions,PCR for checking and sequencing of dbem3 and dbem3dnrp1 new strains

## Date
12022021-19022021

## Objective

- To check through PCR using gDNA as template if those strains are correct.

## Method

- Use the same protocol and experience gather from [when I extracted gDNA from ywt04](../2020-11/2020-11-27-gDNA-extraction-and-PCR-with-ywt04a.md)
- 12022021:
  - Inoculation on YPD+6x+NAT
- 15022021:
  - 5 eppies from the tube , pulling 2mL of the culture. 
  - 30uL elution buffer per eppi
  
  ![](../images/15022021-gdna-ylic137.png)

## Results
- PCR at 65C annealing T.
- 16022021: PCR with primers oLL401/402 and SPY1/2 , together with a positive control. THEY ARE ALL GOOD
- 
  - ![](../images/16022020-SUCCESFUL-CHECK-of-dbem3-transformants-glycerol-stocks.png)

- One comment is that for the biological replicate 2 is very faintly shown a band in the size of bem3 , but most of the DNA have NAT in the right location. 
  - [x] Do serial dilution in plate to clean the stock 
    - No growth of ylic137(2) after 48h of growth (??)
- PCR and genomic extraction of ylic138
- 
![](../images/16022021-dubious-PCR-wit-gDNA-ylic138-glycerol-stocks.png)

  - [x] Try a PCR with 60C annealing temperature instead of 65C
    - It worked better the PCR for ylic138 with 60C annealing temperature! 
- [x] Streak glycerol stocks from ylic137_1, 2 , ylci138_1 and 2 in YPD+6x+NAT and YPD+6x+NAT+HYGRO respectively to double check the phenotype of them. 19022021
- [x] PCR of ylic137_1 and 2 and ylci138_1 and 2 to send to sequence
   ![](../images/19022021-succesful-PCR-to-sequencing.png)

   - All PCR products are correct yet still ylic137_2 has this band on BEM3 length. However its concentration is really low compared to the other product (100ng/uL vs 4ng/uL, measured in gel)
   - PCR purification: 20uL elution buffer
- [x] Send samples to sequence (19022021)

![](../images/25022021-ylic137I-sequenced.png)

![](../images/25022021-ylic138I-and-II-sequenced.png)


## Conclusion

- The sequencing for the two biological replicates (I and II) from ylic138 seems to be correct. Also for the case of ylic137I. 
- The sequencing from ylci137_II did not work. For primer oLL402 I got not alignment and for oLL401 is blank. I suspect that could be an error when I was preparing the samples . 
- I will clean the ylic137_II and rerun all the checks again in the new colonies. 