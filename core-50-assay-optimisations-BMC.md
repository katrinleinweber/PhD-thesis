
# A semi-automated, KNIME-based workflow for biofilm assays {#assay-opt}
\chaptermark{Semi-automated biofilm assay}

\noindent Katrin Leinweber\corrKL\KoRS-CB\ZuKo\BioKN\ , Silke Müller\SCen\BioKN\ & Peter G. Kroth\BioKN

## Abstract

A current focus of biofilm research is the chemical interaction between microorganisms within the biofilms. 
Prerequisites for this research are bioassay systems which integrate reliable tools for the planning of experiments with robot-assisted measurements and with rapid data processing. 
Here, data structures that are both human- and machine readable may be particularly useful.
In this report, we present several simplification and robotisation options for an assay of bacteria-induced biofilm formation by the freshwater diatom \emph{Achnanthidium~minutissimum}. 
We also tested several proof-of-concept robotisation methods for pipetting, as well as for measuring the biofilm absorbance directly in the multi-well plates. 
Furthermore, we exemplify the implementation of an improved data processing workflow for this assay using the Konstanz Information Miner (KNIME), a free and open source data analysis environment. 
The workflow integrates experiment planning files and absorbance read-out data, towards their automated processing for analysis.
Our workflow lead to a substantial reduction of the measurement and data processing workload, while still reproducing previously obtained results in the \emph{A.~minutissimum} biofilm assay. 
The methods, scripts and files we designed are described here, offering adaptable options for other medium-throughput biofilm screenings.

##### Keywords

\noindent diatom, *Achnanthidium minutissimum*, biofilm, medium throughput, bioassay, diatom-bacteria interactions, KNIME

\clearpage


## Introduction

Diatoms (Bacillariophyceae) are a group of highly productive unicellular photoautotrophs and responsible for roughly one fifth of Earth's primary production [@field_primary_1998; @mann_species_1999]. 
Many diatoms produce and secrete extracellular polymeric substances (EPS) which are a major component of their extracellular polymeric matrices, and which convey motility and substrate adherence [@wetherbee_first_1998; @wang_extracellular_2000]. 
Such aggregates of microbes that are embedded in a matrix of secreted EPS form so called biofilms [@vert_terminology_2012]. 
Biofouling, the colonisation of man-made structures like e.g. ship hulls or underwater constructions by diatoms and other aquatic organisms may causes considerable maintenance costs [@schultz_economic_2010; @wingender_biofilms_2011].

\emph{Achnanthidium~minutissimum} is a benthic pennate diatom that appears cosmopolitically in freshwater habitats which may form biofilms on substrata [@round_four_1996]. 
Carbohydrate secretion and biofilm formation by \emph{A.~minutissimum} can be induced by certain bacteria, but also in the presence of substances secreted by the bacteria, indicating that the bacteria induce or even may control biofilm formation by the diatom [@bruckner_bacteria_2008; @bruckner_growth_2011]. 
In order to quantify biofilm formation as well as to purify and identify bacterial signal substances, a bioassay based on these effects has been established in our laboratory previously [@windler_biofilm_2015]. 
This biofilm assay relies on the staining of diatom cells with crystal violet (CV). 
This compound is also used for staining of Gram-positive bacteria. 
It is binding to organic polymers such as polysaccharides and peptidoglycans (@popescu_gram_1996, \textit{Table 2}). 
Subsequently, the stain can be extracted with ethanol (EtOH), and quantified photometrically. 
However, this protocol is not automated, and thus proved to be difficult to apply to medium-throughput screenings, e.g. for biofilm-inducing, bacterial infochemicals or biofilm-relevant mutants.

Inspired by other biofilm assay approaches which include automated steps [@buhmann_photoautotrophicheterotrophic_2012; @stafslien_combinatorial_2006], we aimed to improve the \emph{A.~minutissimum} bioassay described above with semi-automated pipetting and absorbance read-out methods. 
Additionally, we wanted to improve the preparation of sample metadata and biofilm measurement data for analysis, adopting an already widely used tool in nucleotide sequencing and biochemical screening: the \href{https://www.knime.org/}{Konstanz Information Miner} (KNIME; @sundaramurthy_deducing_2014; @steinmetz_screening_2015). 
The program is an interactive, visual, modular environment and open platform for the design and execution of data analysis workflows [@berthold_knime:_2007]. 
To the best of our knowledge, no diatom- or biofilm-focussed approach so far is based on KNIME-supported data analyses or shares such workflows.
Therefore, the objective of this study is to explain the above-mentioned automation options, and to present compelling evidence for their improvement potential using several examples from a laborious diatom biofilm assay.



## Materials and methods


### Cultivation conditions 

Xenic cultures of *Achnanthidium minutissimum* (Kützing)
@czarnecki_freshwater_1994 were isolated from epilithic biofilms from
the littoral zone of Lake Constance, and axenified as described by
@windler_purification_2012. Both xenic and axenic *A. minutissimum*
stocks were cultivated in modified BM (Bacillariophycean medium) in
ventilated tissue culture flasks (Sarstedt, Newton, NC, USA). These were
stored in a climatised culture room at 16°C, 50% humidity and in a
day-night cycle of 12 h at
20-50 $\frac{\mu \text{mol~photons}}{\text{m}^2 \cdot \text{s}}$ and
12 h of darkness. Cultures were subcultivated monthly by scraping cells
off the flask bases and transferring 1 mL of the resulting suspension
into fresh flasks with ca. 40 mL BM.

Bacteroidetes strain 32 (S32) was cultivated on agar plates prepared
from 50% (v/v) LB [@miller_experiments_1972]. Between monthly transfers
to fresh plates, S32 was grown for 5 days at 22°C in darkness, and was
then stored at 4-8°C. Liquid S32 cultures were prepared by inoculating 50%
LB and shaking at 22°C and 120 rpm for 3-5 days.


### KNIME workflow for data processing {#knime-workflow}

Due to the incubation time of the diatom biofilms, about two weeks usually passed between preparing the plate layout worksheets and obtaining the measurement results as described in sections \emph{\nameref{bioassay-experiments}} and \emph{\nameref{read-out}}. 
In order to link planning documents of an experiment with the final data analyses and results visualisations, we designed a data processing workflow that unifies multiple files for further analysis (Fig.\ \ref{KNIME-wf} and supplemental file `KNIME-workflow.tar`, p.\ \pageref{assay-opt-suppl}). 
The workflow was implemented in the \href{https://www.knime.org/knime}{Konstanz Information Miner (KNIME)} v3.1.1 [@berthold_knime:_2007] using freely available functions and nodes, particularly the \href{https://github.com/knime-mpicbg/HCS-Tools}{HCS-Tools} extension [@moll_cellprofiler_2013]. 

Before execution of this workflow, three manual adjustments have to be made.
Firstly, file path and name of the layout worksheets in \texttt{.xlsx} format (see Fig.\ \ref{BF-assay-wf}A and supplemental file `plate-layout-template.xlsx`, p.\ \pageref{assay-opt-suppl}) were selected for each plate through the respective \texttt{Load~Layout} nodes. 
Secondly, once the corresponding absorbance data files were obtained, they were selected through the respective \texttt{File~Reader} nodes. 
Lastly, the machine-readable export target file has to be defined in \texttt{CSV~Writer}. 

More plates can be accommodated by inserting more groups of \texttt{Load~Layout}, \texttt{File~Reader}, \texttt{Expand~Well~Position}, \texttt{Joiner} and \texttt{Concatenate} nodes into an existing connection between a \texttt{Joiner} and a \texttt{Concatenate} node by copying, pasting and reconnecting the relevant nodes. 
Thus, the researcher can quickly expand the provided minimal example (see Fig.\ \ref{KNIME-wf}) to the desired number of plates, accommodating any number of biological or technical replicates at a time and/or experiment repetitions over time, as long as the tree-like scheme is preserved.

Based on the exported \texttt{.csv}, downstream analysis and visualisation of the KNIME-processed data (Figures\ \ref{Tecan-vs-Ultrospec} to\ \ref{Tecan-wavelengths-SN}) was conducted in a separate work step in \href{https://www.rstudio.com/products/rstudio/}{RStudio v0.99 Desktop Open Source Edition} with the \href{http://ggplot2.org/}{ggplot2} package v\href{https://github.com/hadley/ggplot2/releases/tag/v2.0.0}{2.0.0} [@wickham_ggplot2:_2009] and R v3.2.3 [@r_core_team_r:_2015].


### Bioassay experiments

Bioassays were prepared in 48-well plates (\href{https://shop.gbo.com/de/germany/articles/catalogue/article/0110_0040_0110_0010_0010/13533/}{\#677180, Cellstar}; Greiner Bio-One, Frickenhausen, Germany) by scraping both axenic and xenic \emph{A.~minutissimum} cultures off the flask bottoms and washing the cells once with fresh BM to remove residues of the spent cultivation medium (see supplemental figure \ref{BF-assay-wf-suppl}, p.\ \pageref{BF-assay-wf-suppl}). 
Axenic cells in this stock suspension were counted in a Thoma chamber in order to calculate the cell concentrations. 
After extracting chlorophyll in 5% MeOH and 95% acetone according to @jeffrey_new_1975 from both diatom cultures, their washed suspensions were independently adjusted to $10^6 \frac{\text{cells}}{\text{mL}}$. 
For that purpose, both cultures were assumed to contain equal amounts of chlorophyll per cell. 
This stock suspension of $50~\mu$L (containing $5 \cdot 10^4$ washed cells) was transferred into each well, as pre-recorded in the worksheets discussed in section \emph{\nameref{human--and-machine-readable-data-processing}}.

Treatments were administered within minutes of pipetting the diatom cultures into the multi-well plates. 
For co-culture experiments of the axenic diatom with S32, suspensions of the bacterial cells were prepared by centrifuging the LB liquid cultures at $5-10 \cdot 10^3$\ g for 5-10\ min and washing them with BM supplemented with 10\ mM glucose (glcBM). 
The washed bacterial cells were resuspended in BM to an OD of 0.1 and $5~\mu$L of that suspension was added to the wells with the axenic \emph{A.~minutissimum} cultures. 
For supernatant experiments, different volumes of sterile-filtered bacterial supernatant were added to the wells. 
This supernatant was harvested from S32 cultures in glcBM and filtered through $0.2~\mu$m pores (Sarstedt AG, Nürmbrecht, Germany). 
In either case, each well was filled with fresh BM to a final volume of $500~\mu$L. 
Negative control wells contained untreated axenic \emph{A.~minutissimum}, while xenic cultures served as biofilm-positive controls. 
Bioassay plates were sealed with Parafilm (Bemis, Neenah, WI, USA) and cultivated for 10-12\ d as described for the stock cultures in section \emph{\nameref{cultivation-conditions}}.


### Robotised biofilm quantification {#BF-quant-method}

We evaluated the utility of robotised pipetting for the removal of non-adherent cells and medium, as well as for the staining of the remaining biofilms with crystal violet (CV) as visualised in Fig.\ \ref{BF-assay-wf}C. 
\href{http://www.integra-biosciences.com/sites/vialink.html}{VIALINK Pipette Management Software} was used to program \emph{custom} scripts. 
\emph{Repeat Dispense} scripts were programmed on a $1250~\mu$L \href{http://www.integra-biosciences.com/sites/viaflo_pipettes.html}{Viaflo Electronic Pipette}. 
The latter was used with six $1250~\mu$L pipette tips for all pipetting steps, along the long axis of the 48-well plate. 
We tested using eight tips and pipetting along the short axis of the plate, but found that they did not reliably align with the wells. 
Both script types (see Table\ \ref{Viaflo-scripts}) were executed with the pipette connected to the \href{http://www.integra-biosciences.com/sites/viaflo_assist.html}{Viaflo ASSIST} robot (INTEGRA Biosciences AG, Switzerland).

Table: \label{Viaflo-scripts} **Overview of electronic pipetting scripts executed by the [Viaflo ASSIST robot](http://www.integra-biosciences.com/sites/viaflo_assist.html)**
Please note that \texttt{Height/Z} are linked to their respective modes \texttt{custom} or \texttt{repeat~dispense}, and can not be compared to one another. 
Follow-ups mean the manual removal of residual liquid with the electronic pipette handled manually. 
Scripts for steps 1, 3 and 5 are provided in the supplemental file `Viaflo-scripts.tar`, p. \pageref{assay-opt-suppl}.
Unfortunately, the scripts for the two steps of adding $200~\mu$L crystal violet solution for staining and 1\ mL water for washing can not be shared as well, because the Vialink software did not support downloading scripts which were created on the electronic pipette.

Step | Mode | Script task | Height/Z | Speed | Follow-up
-----|------|-------------|----------|-------|----------
1.   | custom | mix \& remove cells | 54.5 mm | 7 | yes
2.   | repeat disp. | add 200 µL CV | 10 mm | 3 | no
3.   | custom | remove CV | 54.5 mm | 3 | yes
4.   | repeat disp. | add 1 mL H~2~O | 10 mm | 5 | no
5.   | custom | remove H~2~O | 54.5 mm | 8 | yes

The crucial, optimisable step for removing non-adherent cells is the mixing step. 
For our \textit{A.~minutissimum} cultures, mixing was optimised in terms of immersion depth (54.5\ mm; see Table\ \ref{Viaflo-scripts}), mixing volume ($400~\mu$L), speed (7) and cycles (7) at room temperature, so that axenic cultures were resuspended while the xenic biofilms were not disturbed. 
These settings have to be adjusted for other organisms, in order to accommodate different biofilm thicknesses, strengths of adherence, etc.

The plate reader device \href{http://lifesciences.tecan.com/products/reader_and_washer/microplate_readers/infinite_f500}{Tecan Infinite F500} (Tecan Group Ltd., Switzerland) was used at room temperature to measure biofilm absorbances. 
For that purpose, a custom method (see supplemental file `Magellan-readout.mth`, p.\ \pageref{assay-opt-suppl}) was implemented in the \href{http://lifesciences.tecan.com/products/software/magellan_data_analysis_software}{Magellan} data analysis software v7.1.
It took absorbance measurements at 16 evenly spread points in a filled circle with a 1.7 mm distance to the well edge. 
The absorbances of unstained biofilms were read out at 630, 650 and 750\ nm. These wavelengths were chosen according to @jeffrey_new_1975 for the chlorophyll c absorbance maximum (630\ nm), for a compromise between the chl a maximum and an available filter (650\ nm), as well as for the light scattering due to cells (750\ nm). 
After measuring the absorbances of the unstained biofilms, they were incubated for 1\ min with $200~\mu$L of a 1:100 dilution of the crystal violet (CV) staining reagent described by @kaplan_biofilm_2002. 
The CV solution was removed by pipetting as described above. 
Afterwards, sterile-filtered tap water was added to the wells for washing, and removed after 1\ min. 
The plate-reader was used again to measure the absorbance at 580\ nm. 
Finally, the Magellan method ensured the data export into machine-readable \texttt{.asc} files for subsequent input into the KNIME workflow.

For comparison of the above described robotised biofilm quantification with the manual protocol established by @windler_biofilm_2015, CV was extracted from the wells after plate-reading. 
This was done by pipetting 1\ mL EtOH up and down several times and the resulting CV solution was transferred into a quartz cuvette. 
The absorbance was measured at 580\ nm in an \href{http://www.thomassci.com/Instruments/Spectrophotometers/_/0A56FFDB-A8B9-473E-99CF-960599F301B7}{Ultrospec 2100 pro} UV/visible spectrophotometer (\href{http://www.biochrom.co.uk/contact/}{Biochrom Ltd. Cambridge, UK}).



## Results and discussion {#RnD}

### Human- and machine-readable data processing

Regarding our use of the plate layout worksheets and KNIME, we found that using such software for managing experimental workflows is advantageous [@tiwari_workflow_2007; @wyres_wgs_2014]. 
This results from the data processing being reviewable independently [@ghosh_toward_2013], reproduced by other researchers, as well as prepared and tested with example data or initial measurement data. 
We also found KNIME useful for tracking the progress of experiments because all nodes indicate their status (traffic light symbols in Fig.\ \ref{KNIME-wf}). 
This becomes particularly useful for complex experiments during which replicate data is obtained at different times and/or after long incubation times (e.g. seasonal repetitions, see @sekar_early_2004).

![**KNIME workflow example for the integration of sample metadata and measurement results for analysis & visualisation.**
The green indicator below each node indicates that the entire workflow has been successfully executed. 
See supplemental file `KNIME-workflow.tar`, p. \pageref{assay-opt-suppl} for an importable copy of this workflow, which serves as an interactive tutorial for the methodology presented in this article.
\label{KNIME-wf}
](assay-optimisations-figures/KNIME-wf.pdf)

We implemented and tested automation options for pipetting, measurement and data processing in the context of the *Achnanthidium\ minutissimum* bioassay, in order to make it applicable for medium-throughput screenings. 
For the tests, we prepared biofilm-negative and -positive samples from axenic and xenic *A.\ minutissimum*, as well as the Bacteroidetes strain 32 (S32). 
These work steps are summarised in the upper part of figure\ \ref{BF-assay-wf}, while the lower part covers the newly developed robotisation and data processing methods presented below.

\begin{figure}[h!]
\centering
  \includegraphics[width=0.8\textwidth]{assay-optimisations-figures/BF-assay-wf.png}
  \caption{\textbf{Overview of semi-automated biofilm assay from metadata tables (A) to measurement workflow (C).}
  Hexagonal boxes indicate manual steps of biofilm assay procedure. 
  Rounded boxes represent robotised steps. 
  Dashed, grey-lined boxes represent main sections of the biofilm assay protocol. 
  \textbf{A}: Metadata tables in \texttt{.xlsx} worksheet are used to plan the layout of samples on the multi-well plate (see supplemental file \texttt{plate-layout-template.xlsx}, p.~\pageref{assay-opt-suppl}). 
  Table headings represent factors (\emph{cell\_culture} \& \emph{treatment}), whose levels (respectively, \emph{ax}, \emph{co} \& \emph{xen}, as well as \emph{NA} for controls \& \emph{S32} for co-cultures) fill the plate-congruent coordinate systems of the tables. 
  Grey cells indicates bases for formulas, which help to rapidly fill repetitive tables with for example technical replicates or dilution calculations. 
  \textbf{B}: Photo of incubated plate, ready for removal of non-adherent cells and absorbance measurement. 
  \textbf{C}: Robotised measurement preparation (see Table\ \ref{Viaflo-scripts}), absorbance read-out and data processing from biofilm assay plates (see supplemental figure \ref{BF-assay-wf-suppl} and files \texttt{Magellan-readout.mth}, \texttt{KNIME-workflow.tar} and \texttt{plot-KNIME-output.R}, p.~\pageref{assay-opt-suppl}).
  \label{BF-assay-wf}}
\end{figure}

Preparing plate layouts in \texttt{.xlsx}-compatible programs enabled the calculation and planning of dilution series, and even randomisations. 
However, the potential benefit of randomised sample placement should be evaluated on a case-by-case basis against the increased workload and the risk of pipetting errors during manual inoculation. 
This risk can be mitigated by keeping dilution series in their inherent order, but pipetting them in alternating directions across the plate (pseudo-randomisation). 
The worksheets should obviously be prepared before the inoculation, in order to be useful as pipetting guides at the bench. 
However, they can be updated at any time to reflect pipetting errors, changes of the experimental plan, or the sample sets, etc.

The KNIME workflow may be improved by integrating such scripts, so that data analysis and visualisation can be started immediately with the first absorbance data file. 
Because inputting the paths of the corresponding layout worksheets and absorbance data files into the nodes is repetitive, it may be desirable to automate the detection and pairing of corresponding files in large numbers. 
Such an automation may be possible using KNIME's \texttt{Read~XLS~Sheet~Names}, \texttt{StringManipulation}, flow-variables and loops (personal communication, Patrick Winter).

### Robotised biofilm quantification

Regarding the robotised liquid removal steps, we found that they could not be conducted reliably at this immersion depth, because notable residue volumes remained in the wells. 
Immersing the pipette tips further risked scratching the biofilms, so we instead used the electronic pipettes manually, tilting the tips into the well edges. 
Despite this manual removal of liquids, the time requirement and work intensity per plate could be reduced considerably from ca. 30-45\ min of intense manual pipetting @windler_biofilm_2015 to ca. 10-15\ min of intermittent electronic pipetting and device operations.

A read-out of the EtOH-filled wells after CV extraction was possible, but similarly to a report by @rasmussen_adhesion_2001 (\emph{Discussion} \textbar{} \emph{Experimental Systems}), the meniscus of the solution distorted the measurements in a ring-shaped area around to the well edges. 
As smaller well sizes may exacerbate this problem, we refrained from using 96-well plates. 
Manual removal of residual liquid with finer pipette tips, or a separate drying step might alleviate this risk, but would extend the time for measurements.

Our workflow can be adopted easily to other organisms and biofilm assays by adjusting the plate-reading method (supplemental file `Viaflo-scripts.tar`; particularly the number of the measurements, as well as the chosen wavelengths) in Tecan's Magellan software. 
One potential improvement is the randomisation of the measurement positions in the wells [@silzel_accuracy_2005], but this was not yet available in our Magellan version.

The bottleneck of this workflow is the number of samples and plates that can reasonably be inoculated manually. 
Dispensing Bacillariophyceaen medium (BM) and \emph{A.~minutissimum} with a stepper or multi-channel pipette requires only a few minutes per 48-well plate, but the application of different treatments (e.g. S32 co-cultivation or its supernatant extracts, or compounds at different dilutions, etc.) easily multiplied that time per plate. 
To remove this bottleneck, further robotisation protocols similar to those reported by @tillich_high-throughput_2014 are required. 
For that purpose it will be necessary to either add control cultures for that protocol's semi-sterile nature, or to optimise it towards fully sterile conditions. 
As a next step, a robotised \emph{A.~minutissimum} and S32 co-cultivation system could be connected to high-resolution mass spectrometry in order to elucidate the nature of biofilm-inducing substance [@tillich_high-throughput_2014; @windler_biofilm_2015].


### Absorbance read-outs of stained and unstained biofilm assays {#read-out}

The initial proof-of-concept of the above-described measurement protocol was conducted with non-adherent, axenic (ax) and biofilm-forming, xenic (xen) \emph{A.~minutissimum} cultures (Fig.\ \ref{Tecan-vs-Ultrospec}). 
Using the plate reader resulted in lower absolute absorbances for both culture types. 
The spread of data read-outs from axenic replicates was about half of those from the EtOH- and photometer-based measurements. 
For xenic biofilms, the spread was only 25% smaller, but the plate reader measured lower absorbances. 
Nevertheless, the absorbance read-outs still were clearly distinct between axenic and xenic samples.

![**Comparison of photometer- and plate-reader-based absorbance measurements of CV-stained *A.\ minutissimum* biofilms.**
Biofilms stained with CV were first measured in the wells with a plate reader (left facet).
Afterwards CV was extracted with EtOH, transferred into photometric cuvettes and re-measured in a spectrophotometer (right facet). 
Axenic (**ax**) and xenic (**xen**) wells represent the negative and positive controls in this bioassay (non-adherent and adherent cells, respectively; *N* = 36). 
Boxes represent the first and third quartiles. 
Whiskers extend to the lowest and highest value that lies within 1.5-fold of the inter-quartile range (IQR). 
Black dots are extreme values that lie outside the IQR. 
Black center lines represent medians. 
Notches indicated the range of $1.58 \cdot IQR / \sqrt{N}$ (ca. 95% confidence interval) around the medians. 
For a more detailed explanation of box-and-whisker plots and their variants, we recommend reading @mcgill_variations_1978. 
See also supplemental file `plot-Tecan-figures.tar`, p.\ \pageref{assay-opt-suppl} for R code and data used to plot this and the following figures.
\label{Tecan-vs-Ultrospec}
](assay-optimisations-figures/Tecan-vs-Ultrospec.pdf)

The EtOH- and photometer-based method by @windler_biofilm_2015 resolved the differences of biofilm intensities better. 
However, xenic replicates with strong deviation below the median absorbance could result from drying of the biofilms before staining or before the extraction of the stain with EtOH. 
Axenic replicates with strong deviation above the median absorbance could readily result from small crystal violet residues getting carried into the EtOH extraction. 
Therefore, the EtOH- and photometer-based method risks false measurements in both controls. 
This previous method is only feasible for the quantification of small sample sets. 
The faster plate-reading was less error-prone and more reproducible. 
It still allows the EtOH- and photometer-based method to be appended in case additional verification of unclear read-outs is required.

The next step of our proof-of-concept deals with the detection of unstained biofilms at 630, 650 and 750\ nm (Fig.\ \ref{Tecan-wavelengths}). 
Median absorbances were significantly distinct between the axenic, non-adherent control and the biofilm-forming co- and xenic cultures in any case. 
The total spreads of data from the axenic controls overlapped only slightly with those of the two biofilm-positives sample types (co- and xenic culture).
The median absorbances after staining with CV were more distinct, and the data spreads did not overlap, although those of the biofilm samples were larger.
In summary, the medians and spreads of data show that the distinctiveness of unstained biofilm-free and -containing wells was reflected by the absorbances on three different wavelengths as well as by the CV-specific wavelength.

\begin{figure}[ht!]
  \includegraphics[width=1\textwidth]{assay-optimisations-figures/Tecan-wavelengths.pdf}
  \caption{\textbf{Detection of \textit{A.~minutissimum} biofilms with a plate reader before and after staining with CV.}
  Absorbance was measured at wavelengths 630, 650 and 750~nm before staining the biofilms with crystal violet (CV), and at 580~nm after the staining. 
  Negative, \textbf{ax}enic controls; biofilm-positive, \textbf{xen}ic controls; \textbf{co}-culture of axenic \emph{A.~minutissimum} and Bacteroidetes strain 32; 
  \emph{N} = 48 to 64 wells per culture type, spread across 4 plates, across 2 independent experiments.
  \label{Tecan-wavelengths}}
\end{figure}

The similarity of biofilm absorbances read-outs at 630, 650 and 750\ nm confirms other biofilm measurements conducted at wavelengths of 680\ nm [@leflaive_effects_2010] and 600\ nm [@stafslien_combinatorial_2006]. 
The latter study also involved staining with CV of bacterial biofilms in multi-well plates, in order to test combinatorially produced surface coatings for anti-fouling capabilities. 
The similarity of technical set-ups suggests that our KNIME-based workflow can be applied beyond diatom biofilm research. 
In another photometric approach @buhmann_photoautotrophicheterotrophic_2012 monitored biofilm formation of the diatom \emph{Planothidium} sp. in a sterile incubator. 
They detected the growth of unstained biofilms by attenuation of the visible light spectrum around a peak of 600\ nm in real-time. 
The common result of those cited with our study is that diatom and bacterial biofilms can be detected between 580 and 680\ nm. 
This suggest that any wavelengths within this range is suitable.
Moreover, the cited biofilm assays were conducted with less than ten replicates. 
Our workflow helps to handle more biological and/or technical replicates at a time, experiment repetitions over time, and/or repetitions by different researchers. 
All these are key to the statistical power of studies and help to reduce the risk of false research findings [@ioannidis_why_2005], but increase the workload considerably. 
Our workflow decouples the number of replicates and repetitions from the data processing and analysis workload.

The lower absolute absorbances of unstained biofilms at 630, 650 and 750\ nm (Fig.\ \ref{Tecan-wavelengths}) can be explained by the detection of only adherent cells. 
CV stains EPS structures like stalks and capsules in addition to the cellular polymeric structures [@popescu_gram_1996], and thus contributes to the high absolute absorbances at 580\ nm. 
EPS are important for the surface attachment of microbes and are a logical requirement for biofilm formation [@wetherbee_first_1998; @wang_extracellular_2000]. 
Our protocol supports the staining where necessary, but the elimination of CV staining from workflows does not prohibit the biofilm detection. 
CV-free workflows can be desirable, because the stain may increase the risk of false-positives, and is classified as toxic to aquatic life [@national_center_for_biotechnology_information_crystal_2015].

As a final assessment of our proof-of-concept, we tested the biofilm induction in axenic \emph{A.~minutissimum} by addition of sterile-filtered S32 supernatant. 
We used the same measurement set-up as described for figure\ \ref{Tecan-wavelengths}. 
All absorbance curves peak between 10-50% (v/v) supernatant (Fig.\ \ref{Tecan-wavelengths-SN}). 
Absorbances of unstained biofilms measured by plate-reader at 630, 650 and 750\ nm had lower absolute differences. 
At those wavelengths, the unstained biofilms had the absorbance maxima at 25% supernatant. 
After staining with CV and measurement at 580\ nm, the maximum shifted to the range of 25-50%.

![**Detection of differently strong *A.\ minutissimum* biofilms before and after staining with CV.**
Bacteroidetes strain 32 supernatant was centrifuged and sterile-filtered from three 7\ d old glcBM liquid cultures with OD~600~ of 0.25. 
Biofilm induction was highest around 25-50% spent bacterial medium (v/v) as shown in figure 3A of @windler_biofilm_2015.
\label{Tecan-wavelengths-SN}
](assay-optimisations-figures/Tecan-wavelengths-SN.pdf)

The shapes of all biofilm-induction curves (Fig.\ \ref{Tecan-wavelengths-SN} agree with analogous curves determined previously with the EtOH-extraction protocol (@windler_biofilm_2015, Fig.\ 3A therein). 
This demonstrates that the less time-consuming protocol proposed in the present study is able to detect differently strong, unstained biofilms, as already discussed for the light-attenuation-based evidence reported by @buhmann_photoautotrophicheterotrophic_2012. 
In addition to the faster, non-invasive biofilm detection, our workflow leaves two opportunities to increase the absorbance resolution for unclear samples: (1) Read-out of stained biofilms can easily be integrated; (2) EtOH extraction of the stain and photometric measurement can be appended as well.

To summarise, the three proof-of-concept steps confirmed the results of previous studies and highlighted several simplification and automation options. 
These options are applicable for biofilm assays in general, and specifically enhance the utility of \emph{A.~minutissimum} in environmental monitoring. 
This is relevant, because this diatom has been used previously as a bioindicator of heavy metal pollution [@falasco_morphological_2009; @cantonati_diatom_2014]. 
That application relied on the detection of frustule deformations -- an approach that has been questioned by @lavoie_mine_2012 who observed the valves often settling in girdle view, which hindered the quantification of frustule deformations in this diatom species. 
Using \emph{A.~minutissimum} as an example, we present the simpler, robotised proxy measurement of the presence or absence of cells as a means to detect biofilms.
Thus, we demonstrate here an improved \emph{in vitro} variant of \textit{in situ} "stable platforms", which @amin_interactions_2012 recommended for the study of diatom-bacteria interactions.

## Summary and conclusion

In this report, we present several simplification and robotisation options for an assay of bacteria-induced biofilm formation by the freshwater diatom \emph{Achnanthidium~minutissimum}. 
We also tested several proof-of-concept robotisation methods for pipetting, as well as for measuring the biofilm absorbance directly in the multi-well plates. 
Furthermore, we exemplify the implementation of an improved data processing workflow for this assay using the Konstanz Information Miner (KNIME), a free and open source data analysis environment. 
The workflow integrates experiment planning files and absorbance read-out data, towards their automated processing for analysis.

## Acknowledgements

We thank the Young Scholar Fund of the \href{https://www.zukunftskolleg.uni-konstanz.de/home/}{Zukunftskolleg} at the University of Konstanz and the \href{www.chembiol.uni-konstanz.de/home.html}{Konstanz Research School Chemical Biology} for funding this research. 
Our gratitude also belongs to Patrick Winter for KNIME advice, and to Lachlan Dow for proof-reading the manuscript.
