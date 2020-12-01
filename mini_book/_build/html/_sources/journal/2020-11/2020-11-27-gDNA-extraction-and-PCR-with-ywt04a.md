---
title: "gDNA extraction from yWT04a"
output: pdf_document
documentclass: article
classoption: onecolumn
pdf_document:
latex_engine: pdflatex
toc: false
lof: false
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
geometry: margin=0.2in
autoEqnLabels: true
cref: true
crossref: true
colorlinks: true

---

# Title : gDNA extraction from yWT04a 

## Date

27112020

## Objective

- To have the DNA template bem3$\Delta$::NAT to make the PCR for transformation on ylic133 and ylic136.

## Method

- Genomic extraction Kit with the Roboclon KIT.
- Pellet from 2mL of culture in each eppi. I had 6 eppies. 
- 30uL of elution.
- concentration from the Nanodrop: 36ng/uL , much higher than before because of the activation of the column with Buffer BG that previously I was overlooking. 

### PCR

- 1ul of the DNA from ywt04a and yll3a reference 
- Primers 51/52 and oLL401/402
- 60C annealing temperature and 2mins 72C extension. 
- Gel 120V, 30 mins. 5ul loaded 

## Results

![](../images/27112020-dna-and-pcr-oll401-402-and-51-52-primers.png)

### Next steps

- Two PCRs protocol with 1ul and 10ul ywt04a template with oLL401/402 primers using **Wessel PCR protocol** with 1min in the annealing temperature, instead of 30secs which is how he originally used (no reason). The differences between the two protocols is the extension time, in one is 1min and the other one 2mins. 
  - 3mins in 98C
  - 30X(30s in 98C, 1min in 65C, 1min in 72C)
  - 12 mins in 72C
  - 4C on hold

![](../images/30112020-dna-and-pcr-oll401-402-10ultemplate-2mins-extension-SUCCESFUL.png){width=50%}

- Repeating the PCR with 34X cycles , 10uL template and 2mins 72C extension. (8X) for transformation. (I used the pCR machine from downstairs)

  - It did not give any product (super weird!)

  - I pulled everything together with the previous PCR and purify it (10uL elution) and I got still very low yield ~8ng/uL. 

  ![](../images/01122020-pure-PCR-10ul-elution-very-low-not-enough-for-transformation.png){width=50%}

- Repeat the PCR with the same PCR machine as the one that worked. 
  - I reduced the time in the annealing temperature from 1min to 30secs. This actually does not make any influence on that. 
- Repeat the genomic extraction (I ran out of DNA) 
  - I cultured 2 tubes of 10mL to do completely. 

## Conclusion