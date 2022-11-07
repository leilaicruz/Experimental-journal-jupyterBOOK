---
title: "do yeast cells show multinuclei upon CDC42 depletion?"
output: pdf_document
documentclass: article
classoption: onecolumn
pdf_document:
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

# Title :  do yeast cells show multinuclei upon CDC42 depletion? (experiment)

## Date

11102022 (Tuesday)- 17102022 (Monday)

## Objective

- Proof that CDC42 depletion causes multinuclei in yeast cells.

## Method

- Perform population growth measurements in 0,0.06,0.1  % galactose for the following strains: WT+sfGFP+pGal-CDC42(ywkd065a),dbem1+sfGFP+pGal-CDC42(ywkd069b),dbem1dbem3+sfGFP+pGal-CDC42(ywkd070a),WT(yll3a Control).
- In saturation, stain the cells with DAPI (follow this [protocol](../Protocols/DAPI-staining-fixed-cells.md))and take some fluorescence images.The images have to be taken with freash staining , meaning with less than 30 mins after staining, otherwise the cells will be fully broght because there is no washing step of the DAPI.
- Check for multinuclei, and quantify the ratio of multiclei cells across the different conditions.
    - We expect an increase in multiclei cells in the dbem1 mutants compared to dbem1dbem3 mutants, and compared to WT.


## Results

- 11102022: Incubation in 30C at 10:30am

![Plate layout](../Images/11102022-DAPI_plate-layout.png)

![End of incubation curves](../Images/13102022_end_of_incubation_30C.png)

- 17102022: End of measuring in 36C + 48h incubating in the biotek 

![End of measuring curves](../Images/17102022_end_of_measuring_36C.png)

### DAPI staining

- 50ul in 100ul EtOH for 1h at room temperature 
- Spin dpwn at 2500 rpm for 1 min
- Resuspend in 1ml 1xPBS
- Spin down at 2500 rpm for 1 min
- Remove the supernatant 

- Prepare a DAPI mixture: 0.5ul DAPI in 1ml 1xPBS (1:2000 dilution)

- Bring all the eppies from all the cultures to the microscope and prepare the slides on demand for imaging due to the quick time of absortion and bleaching of the DAPI.

- I had an issue in the microscope with the settings of the Z stack acquisition, since I using the "Multipoint acquisition tab" which was measuring in random locations that I did not select. I had to use the "ND acquisition tab" instead.

## Data analysis 

- The data analaysis was performed with the Image J plugin the Cell Counter[^1]. Each cell was labelled to count the total number of cells in each frame and then each cell with two , three and dead cell was labelled as a different type. 
- The resulst were exported to a csv and analyzed in python. 

[^1]: https://imagej.nih.gov/ij/plugins/cell-counter.html

![](../Images/24102022_stacked_bar_plot_DAPI_ratio_cells.png)

### Examples

- Two nuclei cells

![Two nuclei cells](../Images/two_nuclei_17102022_ywkd069_0.06gal003-MaxIP.nd2 (series 1)-1.png)
![Two nuclei cells](../Images/two_nuclei_17102022_ywkd069_0.06gal003-MaxIP.nd2 (series 1)-BF.png)

<!-- ![](../Images/two_nuclei_17102022_ywkd069_0.06gal003-MaxIP.nd2 (series 2)-1.png)
![](../Images/two_nuclei_17102022_ywkd069_0.06gal003-MaxIP.nd2 (series 2)-1_BF.png) -->

- Three nuclei cells

![Three nuclei cells](../Images/three_nuclei_ywkd069_0.06Gal2analysis-1.png)
![Three nuclei cells](../Images/three_nuclei_ywkd069_0.06Gal2analysis-BF.png)

- Dead cells

![](../Images/deade_Cell_ywkd069_0.06Gal2analysis-1.png)
![](../Images/deade_Cell_ywkd069_0.06Gal2analysis-BF.png)