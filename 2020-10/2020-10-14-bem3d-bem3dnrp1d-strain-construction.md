---
title: "ylic133 and ylic136 transformation with bem3d::NAT  "
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

# Title : ylic133 and ylic136 transformation with bem3d::NAT 

## Date

14102020-

## Objective

- To construct the bem3d strain to measure in SATAY. 
- To construct the bem3dnrp1d strain to measure in SATAY.
- To be able to measure how bem1 interactors change with the genetic environment.
    - e=f(dbem3dnrp1**dbem1**)-f(**dbem1**)|dbem3f(**dnrp1**)|dbem3
- To test in satay if the fitness of nrp1 in dbem3 background is equal to fitness of bem3 in dnrp1 background. 

## Method
- Extract the DNA from yll138a: bem3::NAT W303 
  - 15102020 (at 10:30) Inoculate some colonies from a plate in YPD+NAT media (it also has 6xADE).
  - 16102020: DNA extraction 
    - 2mL used of dense culture
- Do a PCR with primerset: bem3-upstream/bem3-downstream
  - Use 1ul of DNA for PCR (due to extremely low concentration of DNA , the PCR product was really faint, I used effectively 0.8ng as template.)
- Transform ylic133 and ylic136 with the PCR product. 


## Results

![](../images/16102020-extremely-low-DNA-and-PCR-product.png)

### DNA Quantification on gel, using ImageLab software from BioRad

- reference band: 20ng 
- Lane2= 0.15 x reference band=3ng band

- DNA concentration = 3ng/5uL=0.8ng/ul **extremely low**

## Conclusion
