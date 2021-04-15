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

### New PCR with more DNA :( 😭

- PCR with 2uL, 5uL and 10uL of DNA template. 

![Highly inefficient PCR](../images/17102020-EMPTY-GEL-testing-different-dna-concentrations.png)

### Try lowering the annealing temperature😭

- PCR with 2uL, 5uL and 10uL of DNA template, using T=55C as annealing temperature. 
- The used primers have a melting temperature of: 57C and 61C respectively. From [this website](https://www.biocompare.com/Bench-Tips/133581-Primers-by-Design-Tips-for-Optimal-DNA-Primer-Design/#:~:text=Temperature%20boundaries,starting%20range%20when%20designing%20primers.) : they say that *The optimal annealing temperature should be determined empirically, but it is typically lower than the primers’ Tm by approximately 5°C to 10°C.*

![No product again](../images/19102020-EMPTY-GEL-testing-different-dna-concentrations-55C-annealing.png)

### Try a positive control in yll3a to test the primers😭

- PCR with yll3a and 36.5uL of yll138 DNA template. 

![](../images/19102020-EMPTY-GEL-testing-yll3a-36.5DNA-yll138.png)

### Try different primers (oLL401/oLL402)😭

- New DNA extraction using 10mL of cell culture
![](../images/20102020-yll138-DNA-extraction.png)
- Concentration given by BioRad taking the 20ng band as reference : ~ 9ng. The loaded DNA was 5X diluted. I got 0.09* I(20ng) *5=9ng/uL

### Try Wessel PCR protocol with oLL primers 😭

Protocol:

- 3mins in 98C
- 30X(30s in 98C, 30s in 65C, 1min in 72C)
- 12 mins in 72C
- 4C on hold

In my previous protocol I used
- 3mins in 95C
- 35X(30s in 95C, 30s in 55C, 1min in 72C)
- 12 mins in 72C
- 12C on hold

![So sad, is a sad situation 😭](../images/21102020-wesel-protocol-pcr-empty-gel.png){width=50%}

### Try different set of primers that have worked for me before

- From [this experiment](../2020-07/2020-07-06-Preparation-for-PCR-check-of-BEM2-bem2.md) I to check the presence and deletion of bem2 in different strains , I can use:
  - primers 41/47 that will bind to bem2 gene and upstream from it. 

- Check on yll3a and yll138 template 

![Right product super low efficiency](../images/21102020-138-3a-41-47-primers-positive-test.png)

- Next time , I need to MIX , VORTEX THE GENOMIC DNA BECAUSE IT WILL SEDIMENT MOST OF IT. So maybe I was taking very low amount , that is why I have this low efficiency. 

### Try mixing the gDNA before PCR 

- PCR with primer 41/47 and 51/52 and vortexing first the DNA from yll3a and yll138a

![](../images/22102020-138-3a-after-vortexing-the-dna_EMPTY-AGAIN.png)

## Conclusion

- Unsuccessful PCR attempts with the gDNA from yll138 and those primers. This is the PCR product I would need for transforming my ylic133 strain. 
- Next steps: Extract more gDNA and repeat with more details all these steps . 