
\addtocontents{toc}{\protect\newpage}

# A bioassay-guided fractionation of bacterial infochemicals that induce biofilm formation by *Achnanthidium minutissimum* {#signal-extraction}
\chaptermark{Assay-guided infochemical fractionation}

\noindent Katrin Leinweber\BioKN, Dieter Spiteller\BioKN\ & Peter G. Kroth\BioKN

## Abstract

Few diatom infochemicals of bacterial origin 
have been purified and identified to date, and none in the biofilm model system comprising the Gram-negative Bacteroidetes strain 32 and the freshwater diatom *A.\ minutissimum*.
After establishing this diatom in a laboratory biofilm model system, we tested a bioassay-guided fractionation concept 
based on liquid-liquid extraction and solid phase extraction 
of the sterilised, biofilm-inducing bacterial supernatant.
The production of that supernatant and strain 32's growth conditions were optimised based on the taxonomic placement of the Bacteroidetes strain.
Liquid-liquid extraction was validated as a pre-purification step for the solid phase extraction, and was found to shift the fractions of interest towards the maximum of organic solvent, highlighting the need for further fractionation improvements.
While the iterative improvement of the fractionation procedure was hindered by the assay's long incubation time and variable responses to treatments with extract fractions,
other application options emerged. 
This study may support the upscaling of bacteria infochemical discovery in the *A.\ minutissimum* biofilm model system.

\clearpage


## Introduction

Biofilms are a common mode of life for diatoms and bacteria in the phototrophic, littoral zone of Lake Constance [@bahulikar_diatoms_2006].
In order to study the interactions 
between diatoms and bacteria in biofilms, 
several model systems 
have been developed:
First, @buhmann_photoautotrophicheterotrophic_2012 built an incubator chamber 
with continuous medium flow and turbidity measurement,
so that the spatial expansion of biofilms could be monitored 
and microscopically evaluated. 
Then, @windler_biofilm_2015 established a bioassay for the induction of *Achnanthidium\ minutissimum* biofilms by Bacteroidetes strain 32 and its spent culture supernatant.
Both bioassays support the growth of xenic and axenic diatoms, 
as well as co-cultures of the latter with certain bacteria strains. 

Bacteroidetes strain 32 (S32) was isolated from *Cymbella\ microcephala* biofilms by @bruckner_bacteria_2008, 
and shown to modulate the production of polysaccharides 
and dissolved free amino acids in diatoms [@bruckner_growth_2011]. 
Initial experiments with S32 and the biofilm-inducing activity of its supernatant 
found a constitutive secretion of the bioactive compounds throughout its growth cycle (see Fig.\ \ref{S32-growth},\ p.\ \pageref{S32-growth}).
Initial fractionation steps suggested a hydrophobic nature (see Fig.\ \ref{S32-extracts},\ p.\ \pageref{S32-extracts}). 
Moreover, it is apparently not a protein, as it is resistant to heating to 60-80°C, freezing, drying and elution in highly concentrated methanol [@windler_influence_2014].
Denaturation and loss of bioactivity would be expected for most proteins.
However, protein-based interactions between bacteria and diatoms exist as well [@paul_interactions_2011].
Because of the above observations, and the apparent solubility of S32's biofilm-inducing compound in the aqueous Bacillariophycean medium (BM), we hypothesised that the bioactivity is mediated by a small, hydrophobic compound, which also contain hydrophilic moieties (or a group of such molecules).

@pohnert_chemical_2007 stated that approaches to the bioassay-guided identification of diatom-relevant signalling compounds and infochemicals 
is time consuming and requires reliable and unambiguous bioassay results.
Guided by bioassays that fulfilled this requirement, 
pheromones in brown algae [@pohnert_oxylipin_2002] and diatoms [@gillard_metabolomics_2013], 
as well as diatom-derived zootoxins [@pohnert_diatom/copepod_2005], 
have been identified.
These studies have established that aquatic organisms are intricately linked 
by a complex network of chemically mediated interactions. 
One of the only bacterial molecules with an effect on diatoms that has also been structurally identified *in natura* is indole-3-acetic acid [@amin_interaction_2015].


In order to prepare the identification of the biofilm-inducing compound(s) in our diatom-bacteria model system, 
we first scaled the secretion of S32's biofilm-inducing compounds up.
For this purpose, optimal growth conditions and media for maximum S32 cell densities were sought on the basis of the strain's taxonomic placement.
Moreover, we built on initial fractionation steps via solid-phase extraction [@windler_biofilm_2015], 
and compared the purity of several liquid-liquid extract fractions of the bacterial supernatant.
Because these previous findings show that Bacteroidetes strain 32 secretes the bioactive substances constitutively even without *A.\ minutissimum*, we do not assume that they serve an active signalling role. Rather, they are considered here as "infochemicals" [@dicke_infochemical_1988], which the diatom senses and reacts to.

## Materials and methods

### Bacteroidetes S32 cultivation conditions and supernatant harvest

Liquid nitrogen stocks of Bacteroidetes strain 32 were re-established on agar plates prepared with 50% LB (lysogeny broth; @miller_experiments_1972).
S32 was allowed to grow for 5\ days in darkness at 22°C.
Afterwards, the plates were stored in darkness at 8°C.
Transfer of S32 to new LB-agar plates commenced every 6\ weeks.
Liquid cultures of S32 for the supernatant harvests were grown in either Bacillariophycean medium (BM) supplemented with 10\ mM glucose (glcBM) or in LB at a temperature of 20°C and shaking at 120\ rpm for 5\ to 7\ days without particular darkening methods.
Supernatant was obtained from the S32 liquid cultures by centrifugation at 5-10·10^3^ *g* for 5-10\ min (Sorvall RC6 Plus, Thermo Scientific).

### Sequencing of the 16S ribosomal RNA gene of Bacteroidetes strain 32 {#rDNA-seq}

The 16S ribosomal RNA gene was amplified from a Bacteroidetes strain 32 colony standard primers "27f" and "1492r" (sequences in \ref{S32-16S-primers}; ordered from Thermo Scientific). 
A "T Gradient" thermocycler ([Biometra, Germany](http://www.biometra.de/index.php/contact.html)) conducted the PCRs as listed in Table\ \ref{S32-16S-PCR}.
PCR products were run over gels of 1% agarose in 30\ mL TAE buffer and supplemented with 1.5\ µL RotiSafe GelStain (Carl Roth, Germany) for 10\ min at 60 V, followed by 1\ h at 90\ V.
Gel edges were cut off and visualised under UV light.
Bands of interest (ca. 1.5\ kb) were cut from the edge portions, so that these "rulers" could be used to excise the main band portions without direct UV exposure.
DNA was purified from the gel pieces with the GeneClean Turbo kit ([MP Biomedicals, Santa Ana, California, USA](http://www.mpbio.com/about_us.php)).
Sequencing and automatic quality classification using PhredPhrap was performed by [GATC (Konstanz, Germany)](http://www.gatc-biotech.com/nc/service/impressum-gatc-biotech.html).
Sequences were manually assembled into a consensus, based on previous 16S sequencing runs of S32 in our lab.
The 16S consensus sequence of S32 was searched against [NCBI's](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PROGRAM=blastn&PAGE_TYPE=BlastSearch&LINK_LOC=blasthome) database of "16S ribosomal RNA sequences (Bacteria and Archaea)" with BLASTN 2.2.29+ [@zhang_greedy_2000].
Additionally, the longest continuous sequence parts of good quality were analysed using the [Ribosomal Database Project (RDP) Naïve Bayesian rRNA Classifier v2.10](https://rdp.cme.msu.edu/classifier/classifier.jsp) [@wang_naive_2007] against the "16S rRNA training set 14" with a confidence threshold of 95%.


Table: \label{S32-16S-primers} **Primers for amplification of bacterial 16S ribosomal RNA gene.** Y denotes degenerate pyrimidine position. 

Primer name | Sequence (5' to 3')
------------|--------------------
27f         | AGAGTTTGATCCTGGCTCAG
1492r       | TACGGYTACCTTACGACTT

\clearpage

Table: \label{S32-16S-PCR} **PCR cycling conditions for 16S rDNA amplification.** The sequence of denaturing, annealing and extending was conducted for 30 cycles.

Step                 | T [°C] | t [min:sec] 
---------------------|-------:|------------:
Initial denaturation |     95 |        3:00 
Denaturing           |     95 |        0:30 
Annealing            |     53 |        0:30 
Extending            |     72 |        1:40 
Final extension      |     72 |        5:00 


### Optimising Bacteroidetes strain 32 growth conditions

Cultivation conditions of *Dyadobacter* strains identified as closest known relatives of Bacteroidetes S32 were obtained from the catalogue of microorganisms of the Leibniz-Institut DSMZ ([Deutsche Sammlung von Mikroorganismen und Zellkulturen GmbH, Braunschweig, Germany](https://www.dsmz.de/home.html)).
Media 1, 830, LB and B were prepared according to the recipes listed in tables \ref{S32-M1} to \ref{S32-B},\ p.\ \pageref{S32-M1} to \pageref{S32-B}.
Modified Bacillariophycean Medium (BM) was prepared as reported by @schlosser_sag_1994 and @windler_purification_2012.
Glucose solution were added through a sterile 0.2\ µm filter (Sarstedt, Germany) to a final concentration of 10\ mM, yielding glcBM.

Liquid cultures in various media were inoculated with S32 cells that had been scraped off an agar plate and suspended in sterile-filtered tap water.
Equal volumes of this S32 suspension were used to inoculate 10\ mL medium in three to six sterile glass test tubes per temperature-medium combination.
For each combination, one negative control with sterile medium was prepared as well.
Directly after inoculation (day\ 0), an OD~600~ measurement was taken in a [CamSpec M107](http://www.spectronic-camspec.co.uk/camspec-m107-visible-qc-spectrophotometer/) spectrophotometer ([Spectronic Camspec Ltd., Leeds, UK](http://www.spectronic-camspec.co.uk/contact/)).
The light path with the lowest OD~600~ was determined for each test tube, marked on the glass, and subsequent measurements were conducted along it.

Table: \label{S32-M1} **Recipe for 150\ mL medium 1 (modified from DSMZ "nutrient agar"), adjusted to pH 7.**

Component    | Manufacturer   | Mass [g]
-------------|----------------|--------:
Peptone      | Roth, Germany  | 0.45
Meat extract | Merck, Germany | 0.75

\clearpage

Table: \label{S32-M830} **Recipe for 150\ mL medium 830 (modified from DSMZ "R2A"), adjusted to pH 7.2.**

Component         | Manufacturer           | Mass [mg] | Volume [µL]
------------------|------------------------|----------:|-----------:
Pyruvic acid      | Sigma-Aldrich, Germany |         - |      28.42
K~2~HPO~4~·3 H~2~O| Merck, Germany         |        59 |          -
Casamino acids    | Beckton Dickinson, USA |        75 |          -
Glucose           | Merck, Germany         |        75 |          -
Soluble starch    | Merck, Germany         |        75 |          -
Yeast extract     | Roth, Germany          |        75 |          -
Proteose peptone  | LabScientific, USA     |        75 |          -
MgSO~4~·7 H~2~O   | Merck, Germany         |       7.5 |          -


Table: \label{S32-B} **Recipe for 100\ mL of the minimal medium B [@jagmann_parasitic_2010], modified with glucose instead of tryptone and yeast extract.**
Solid components were dissolved in MilliQ-H~2~O, autoclaved and subsequently supplemented with the liquid components (see Table\ \ref{S32-B-liquids}) through 0.2\ µm filters.

Component         | Manufacturer           | Mass [mg]
------------------|------------------------|----------:
HEPES             | Roth, Germany          |    1192
NH~4~Cl           | Fluka, Germany         |      27
MgSO~4~·7 H~2~O   | Merck, Germany         |      24.6
KCl               | Merck, Germany         |     104
NaCl              | VWR, Europe            |      42

Table: \label{S32-B-liquids} **Liquid supplements for 100\ mL minimal medium B (Table\ \ref{S32-B}).**

Component         | Stock conc. | Volume | Final conc.
------------------|------------:|-------:|-----------:
SL10 [^SL10]      |   1000-fold | 100\ µL |    1-fold
CaCl~2~           |       0.1 M |  10\ µL |    0.01 mM
KNaPP [^KNaPP]    |       0.5 M |  30\ µL |    0.15 mM
Glucose           |       0.5 M |   2\ mL |   10    mM

[^KNaPP]: Potassium sodium phosphate buffer composed of 0.35\ mM K~2~HPO~4~ and 0.15\ mM NaH~2~PO~4~ at pH\ 7-7.1.
[^SL10]: Trace element solution according to @widdel_studies_1983.

Table: \label{S32-LB} **Recipe for 150\ mL LB.**

Component     | Manufacturer  | Mass [g]
--------------|---------------|--------:
NaCl          | VWR, Europe   |     1.5
Peptone       | Roth, Germany |     1.5
Yeast extract | Roth, Germany |    0.75


### Liquid-liquid extraction of bacterial supernatants

Cell-free bacterial supernatants were adjusted to the pHs outlined in figure \ref{LLE},\ p.\ \pageref{LLE} with HCl and NaOH and shaken against ethyl acetate (NORMAPUR, VWR) in appropriately large separating funnels for several minutes.
In case phase separation was visibly hindered, either a few grams of NaCl were added and brought to dissolution by shaking again and/or the phase boundary and the ethyl acetate phase were centrifuged for 5\ min at 5,000\ *g* and separated by decanting.
Final phases were either lyophilised at 0.1\ mbar and 40°C (Alpha 2-4 LD plus with AVC 2-33 IR cold trap at -85°C; Martin Christ Gefriertrocknungsanlagen GmbH, Germany) or rotary-evaporated at 60°C (aqueous phases) or 40°C (ethyl acetate phases, after clearing of water with Na~2~SO~4~). 
Devices used for rotary evaporation were the Rotvapor R-210, Heating Bath B-491, Vacuum Pump V-710 and Vaccuum Controller V-850. 
Residual solvents were removed at minimal pressures of the rotary evaporator or by membrane pump with a liquid nitrogen condensation trap.
Dried extracts were weighed in round-bottomed flasks of known weights on [Mettler AT261 DeltaRange](http://de.mt.com/de/de/home/phased_out_products/others/AT261.html) balance (Mettler-Toledo GmbH, Gießen, Germany).
Extracts of Bacteroidetes strain 32 supernatant obtained from glcBM culture supernatant were taken up in water and sterile filtered, while extracts from LB culture supernatant were taken up in methanol (MeOH).

### C18-fractionation of liquid-liquid extracts

Solid phase extraction cartridges with octadecyl-(C18)-modified, endcapped silica ("Chromafix 10\ g" and "Chromabond 530\ mg"; Macherey-Nagel, Germany) were used according to the protocol established earlier in our lab (see ch.\ \ref{co-cultivation-with-bacteria},\ p.\ \pageref{co-cultivation-with-bacteria}).
In case the dried liquid-liquid extracts were resolved in MeOH, they were not applied to the cartridges directly, but diluted to 10% (v/v) with MilliQ above the column material, so that a flow-through fraction could be collected.
Washing solutions and eluents of different MeOH concentrations in MilliQ water were pre-mixed and applied to the cartridge manually.
The pressure required to produce continuous droplet formation (a few per second) at the cartridge nozzle was applied manually or by compressed air.
Care was taken to not let the cartridge material fall dry during fraction collection.
Fractions were collected in glass tubes or round-bottomed flasks and dried by lyophilisation (fractions containing mostly MilliQ) or rotary evaporation (MeOH).

### *A.\ minutissimum* bioassays

Bioassays for biofilm formation were conducted as described in chapter\ \ref{achmi-assay} (\nameref{achmi-assay},\ p.\ \pageref{achmi-assay}) with the modification to always inoculate with 10^5^ diatom cells.
Concentrated supernatant extracts were administered to approximately the same final concentration of 25-50% that was found to be optimal as shown in figure\ \ref{S32-extracts}A,\ p.\ \pageref{S32-extracts}.
However, reductions due to loss of substance during the extraction procedures can not be excluded.
Untreated wells with only axenic *A.\ minutissimum* and/or those treated with extracts generated from blank medium by the same protocol as the samples served as negative controls.

## Results

### Optimisation of Bacteroidetes strain 32 growth conditions {#S32-opti}

The first goal in this study was the verification of the taxonomic placement of Bacteroidetes S32, 
in order to search for genus-specific, optimal cultivation conditions.
These were envisioned to maximise the cell density of S32 in liquid cultures, which in turn should yield higher concentrations of the secreted biofilm inducer in the culture supernatant. 
The use of supernatant was continued according to @windler_bacterial_2014 in order to avoid contamination of the extraction procedure with cellular material.

\begin{figure}[htb]
\centering
\includegraphics{signal-extraction-figures/S32-growth-media.pdf}
\caption{\textbf{Growth of Bacteroidetes strain 32 in a selection of minimal (B \& glcBM) and complex (LB, M1 \& M830) media.} 
See tables \ref{S32-M1} to \ref{S32-LB},\ pp.\ \pageref{S32-M1}-\pageref{S32-LB} for medium composition, and Windler et al. {[}2012{]} for the composition of modified liquid Bacillariophycean medium (BM), which was here supplemented with 10\ mM glucose (glcBM).
All data points represent average optical densities at 600\ nm (OD\textsubscript{600}) 
normalised to the initial OD\textsubscript{600} of each culture 
directly after inoculation (day\ 0). 
Error bars represent standard deviations of \(2\sigma\) across 3-6 replicates. No negative, sterile medium control displayed an increase in OD\textsubscript{600} at any temperature.
\label{S32-growth-media}}\end{figure}

The 16S sequence obtained from Bacteroidetes S32 was classified as most closely related to the genus *Dyadobacter* (see Suppl.,\ p.\ \pageref{signal-extraction-suppl}).
Using BLAST, S32 clustered uniformly with several *Dyadobacter* species 
(see Suppl. Table\ \ref{dyado-hits},\ p.\ \pageref{dyado-hits}). 
Based on this taxonomic placement, the complex *Dyadobacter* media 1 (M1), 830 (M830) 
were tested together with LB 
for growth of Bacteroidetes strain 32 against the minimal media glcBM and B.
As figure\ \ref{S32-growth-media} shows, S32 cultures grew densest in LB at 20\ and\ 30°C, with ca. 10-fold increases of OD~600~ observed after 5-7\ days.
M830 yielded the next densest growth of strain 32.
M1 and glcBM supported S32 growth to approximately the same, but low level.
Medium B could only be tested at 30°C, but unlike the other media,
it did not yield notable S32 cell densities.
Bacteroidetes strain 32 reached the stationary phase fastest in the glucose-supplemented Bacillariophycean medium (glcBM) and M830, with OD~600~ maxima reached after 3-5\ days.
In LB and M1, S32 required ca. 2\ days longer to reach the stationary phase.
In summary, media 1, 830 and B either did not yield higher S32 cell densities, or were more complex to prepare (see tables \ref{S32-M1} to \ref{S32-LB},\ pp.\ \pageref{S32-M1}-\pageref{S32-LB}) than glcBM or LB. 
LB and the DSMZ-recommended temperatures of 20-30°C were chosen for further strain 32 cultivations. 
Growth in glcBM was in accordance with results by @windler_bacterial_2014, 
so that this minimal medium should be considered for experiments 
which require quick but not dense Bacteroidetes strain 32 growth.
Moreover, these were fail-safe and readily available cultivation conditions,
thus supporting the goal to reproducibly up-scale the production of spent S32 culture supernatant with biofilm-inducing activity. 

### Liquid-liquid extraction of Bacteroidetes strain 32 supernatant

In parallel to the cell density optimisation, a liquid-liquid extraction of the bacterial supernatant from the previously used glcBM medium was designed and tested (Fig.\ \ref{LLE}).
After the initial acidification of the supernatant to pH 2, liquid-liquid extraction commenced in several steps at alternating pH ranges.
It was expected that the bioactivity would be transferred from acidic aqueous to ethyl acetate phases, and vice versa at the opposite pH range.
The resulting aqueous and ethyl acetate phases (abbreviated as "AP" and "EAP", followed by the pH value) were dried, taken up in BM or MeOH and tested in the *A.\ minutissimum* bioassay for biofilm induction.

![**Liquid-liquid extraction workflow of Bacteroidetes strain 32 supernatant with fractionation of biofilm-inducing activity (grey).**
Rectangles represent samples of aqueous or ethyl acetate phase (AP and EAP, respectively).
Hexagons represent work steps.
\label{LLE}](signal-extraction-figures/LLE.png)

Two of these three liquid-liquid extraction steps were compared to the previously used, low-yield glcBM and the high-yield LB media (Fig.\ \ref{AP-BF}).
As expected, the highest biofilm induction occurred in the co-cultures of axenic *A.\ minutissimum* and Bacteroidetes strain 32 (S32).
The lowest biofilm induction was observed for the aqueous phases of the first extraction of the acidified supernatant (AP2 glcBM) of a glcBM culture.
The aqueous phase of the second extraction step (AP2-10 glcBM) induced a slightly higher biofilm signal. 
Samples that were alkalised first displayed lower biofilm induction (data not shown), suggesting that the bioactive compound did not possess basic moieties.
Supernatant extracts from LB cultures produced the strongest biofilm formation, reaching similar levels as the co-culture.

\begin{figure}[htb]
\centering
    \includegraphics[width=1\textwidth]{signal-extraction-figures/AP-BF-with-LB-LM.png}
    \caption{\textbf{Biofilm induction in axenic \emph{A.~minutissimum} cultures by aqueous phases of liquid-liquid extractions of Bacteroidetes strain 32 supernatant.} 
    \textbf{Left:} Quantification of crystal violet.
    (\textbf{S32}) Co-culture of axenic \emph{A.~minutissimum} and Bacteroidetes S32. 
    (\textbf{AP2}) Acidic aqueous phase of first liquid-liquid extraction. 
    (\textbf{AP2-10 glcBM \& LB}) Basic aqueous phases of second extraction of S32 supernatant obtained from cultures grown in glucose-supplemented Bacillariophycean medium (glcBM) and LB, respectively.
    Error bars represent standard deviation of \(2\sigma\) 
    propagated from biological duplicates, each in technical triplicates.
    \textbf{Right:} Light microscopic image of a dense biofilm induced by the basic aqueous phase of the second extraction of S32 supernatant obtained from LB culture (AP2-10 LB).
    Scale bar represents 10~µm.}
    \label{AP-BF}
\end{figure}

The switch from glcBM to LB had to overcome the previously discovered limitation, that LB had growth-impeding effects on *A.\ minutissimum* (see ch.\ \ref{S32-extracts-BF},\ p.\ \pageref{S32-extracts-BF}).
Instead of resuspending dried residues from glcBM cultures in BM, 
MeOH was used to resuspend dried residues from LB cultures, because it had already proven to elute the biofilm- and capsule inducing activity from C18-columns 
in previous solid phase extraction experiments (see Fig.\ \ref{S32-extracts},\ p.\ \pageref{S32-extracts}).
The resulting MeOH-dissolved samples improved the workflow of sample preparation and assay inoculation, 
because they could reasonably be assumed to be and remain sterile,
thus making the sterile-filtration step redundant.
Intriguingly, such extracts from LB that were not inoculated (negative bioassay controls) decreased the attachment of axenic *A.\ minutissimum*.
This resulted in higher relative crystal violet intensity of biofilms triggered by extracts from LB supernatant, compared to supernatant from glcBM (Fig.\ \ref{AP-BF}).
This might result from LB itself containing inhibiting substances, 
but whose effect was overcome by the biofilm inducers of Bacteroidetes strain 32.

\begin{figure}[htb]
  \centering
  
  \begin{subfigure}{0.5\textwidth}
    \includegraphics{signal-extraction-figures/MeOH-Chl.pdf}
    \label{MeOH-Chl}
  \end{subfigure}~
  \begin{subfigure}{0.5\textwidth}
    \includegraphics{signal-extraction-figures/MeOH-CV.pdf}
    \label{MeOH-CV}
  \end{subfigure}
   
  \caption{\textbf{Reaction of axenic (circles) and xenic (red triangles) \emph{A.~minutissimum} to MeOH mixed into the growth medium at inoculation.}
  Grey shades represent 95\% confidence interval around the linear regressions.
  \textbf{Left:} Chlorophyll concentrations in the supernatant of wells after growth of the diatoms for 11~days.
  Chlorophyll was extracted with 5\%~MeOH and 95\%~acetone and measured photometrically.
  \emph{N} = 88 for axenic cultures across 4 independent experiments.
  Xenic cultures: \emph{N} = 46, across 2 plates in one experiment.
  \textbf{Right:} Crystal violet stain of biofilms after diatom growth.
  Measurements were conducted with a plate-reader after removal of the supernatant from the wells, staining with crystal violet and washing with H\textsubscript{2}O.
  \emph{N} = 27 for axenic cultures across 4 plates in one experiment.
  Xenic cultures: \emph{N} = 24 across 4 plates in one experiment.
  Shaded area represents confidence interval of 95\% around linear regression according to Wilkinson \& Rogers {[}1973{]}.}
  \label{MeOH}
\end{figure}

The replacement of Bacillariophycean medium with methanol as the solvent for dried extract residues 
necessitated checking the effect of MeOH on the growth 
of the axenic, negative and xenic, positive *A.\ minutissimum* control cultures (Fig.\ \ref{MeOH}).
Initially, the axenic cultures responded with a slight increase in chlorophyll content in the supernatant.
This meant that either more non-adherent cells were present in the cultures, or that those cells contained more chlorophyll.
A search in the [DiatomCyc.org database](http://www.diatomcyc.org/) (as of July 23^rd^, 2015) revealed neither candidate pathways, nor enzymes for the possible utilisation of MeOH in the diatom *Phaeodactylum\ tricornutum* [@fabris_metabolic_2012].
Therefore, and because no such database of metabolic pathway exist for *A.\ minutissimum*, the cause of this unexpected initial result remains unclear.
Larger control experiments with randomly placed replicates did not reproduce this chlorophyll increase, but generally showed a wide spread of chlorophyll concentrations (see Fig.\ \ref{MeOH}a).
Co-cultures of the diatom with Bacteroidetes strain 32 were tested in the same manner 
and showed no reduction of biofilm intensity in this MeOH concentration range.

Reassuringly, MeOH did not induce biofilms in the negative, axenic controls, 
nor did it disrupt biofilm formation in the positive, xenic controls at concentrations of up to 2-3% (v/v).
Their biofilm intensities remained consistently on a higher level 
than those of the axenic cultures (Fig.\ \ref{MeOH}b).
Thus, the latter may have experienced some growth-inhibition by pure MeOH, but 
formed biofilms when treated with MeOH-dissolved supernatant extracts. 
We conclude that it is advisable to keep the MeOH load as low as reasonably pipettable in order to retain viable control cultures.
However, it is relatively sure that in the low range of <3% MeOH in BM, the organic solvent does not disrupt the expected biofilm formation patterns.

In summary, the results of S32 growth experiments in various media (Fig.\ \ref{S32-growth-media},\ p.\ \pageref{S32-growth-media}), 
and the initial liquid-liquid extraction results of both glcBM- and LB-based extracts support 
(1) the concept of maximising supernatant production to obtain bioactive compounds 
and (2) the hypothesis, that the biofilm-inducing activity can be extracted 
with an organic solvent from acidified S32 supernatant.
Due to the first point, the transition from low-yield glcBM to LB medium can be considered successful, 
while the second indicates that the bioactive molecule(s) may possess an acidic moiety.

### Solid phase extraction of up-scaled liquid-liquid extracts of Bacteroidetes strain 32 supernatant

Next, the hydrophobic solid phase extraction (see ch.\ \ref{S32-extracts-BF},\ p.\ \pageref{S32-extracts-BF}) was repeated with the liquid-liquid extracted fractions of Bacteroidetes strain 32 supernatant from several-litre batches of liquid LB cultures grown to optical densities at 600\ nm of 1-1.2.
The initial results confirmed that the biofilm-inducing activity could be eluted from C18 with 60-100% MeOH (data not shown; similar to Fig.\ \ref{S32-extracts}C,\ p.\ \pageref{S32-extracts}), 
but the varying purities of the different liquid-liquid extraction fractions were visible.
The first ethyl acetate extract from the supernatant at pH 2 for example (EAP2) dried to a more voluminous residue than the residues from the second (EAP2-10) and third extraction (EAP2-10-2).

The absorbance data from the extract samples was thus also normalised to the dry weights of the residues (Fig.\ \ref{upscaled-C18-BF}).
This highlights fractions with little residue, but strong biofilm induction.
Seen in that light, the generally highest bioactivity with the least impurities was found in the 100% MeOH elution fractions.
Of those, the third ethyl acetate phase (EAP2-10-2) contained the highest abundance of biofilm-inducing substance(s) relative to impurities in the residue.
Unsurprisingly, the other fractions are ordered by the number of liquid-liquid extraction steps they underwent.
The three-step liquid-liquid extraction may be considered successful, 
because the final extraction with ethyl acetate
yielded an easier evaporation workflow, higher purity of the extracted sample and strong biofilm induction (as opposed to the previously used second aqueous phase).

\begin{figure}[htb]
    \centering
    \includegraphics{signal-extraction-figures/upscaled-C18-BF.png}
    \caption{\textbf{Biofilm induction of liquid-liquid extract fractions of Bacteroidetes strain 32 supernatant 
    after extraction from C18 solid phase.}
    All absorbance data points are normalised 
    to the absorbance of the axenic control 
    and to the dry weight of a fraction's residue.
    Dashed, dark grey line (EAP2) represents C18-fractions of the first liquid-liquid extract of supernatant (ethyl acetate phase from pH 2 step; EAP2). 
    Dotted-dashed, medium grey line (EAP2-10) represents the same ethyl acetate phase after the second extraction with aqueous phase at pH 10 (EAP2-10).
    It was tested in order to elucidate the distribution of bioactivity 
    between the aqueous and ethyl acetate phase. 
    Dotted, light grey line (EAP2-10-2) represents C18-fractions from the third ethyl acetate phase of the second aqueous phase acidified back to pH 2 (EAP2-10-2).
    Error bars represent standard deviation as propagated 
    through the normalisation to dry weight 
    and averages of absorbance at 580~nm of the respective axenic controls.}
    \label{upscaled-C18-BF}
\end{figure}

However, the notable biofilm induction of the second ethyl acetate phase (EAP2-10) 
also means that the alkalisation in the second liquid-liquid extraction step 
yielded very incomplete transfer of the bioactivity into the aqueous phase.
It remains unclear whether the chosen liquid-liquid extraction strategy is optimal
given the complexity of the Bacteroidetes strain 32 supernatant 
due to LB medium and bacterial secretions.
Less complex media on the other hand yielded much lower strain 32 cell densities 
(Fig.\ \ref{S32-growth-media},\ p.\ \pageref{S32-growth-media}).

The generally highest bioactivities in the final solid phase extraction step (100% MeOH) indicate 
that the phases may have been suboptimal 
for the given chemical properties of the bioactivity.
Less hydrophobic materials than C18 and/or more hydrophobic eluents than MeOH should be tested in the future 
to systematically optimise each step of the S32 supernatant purification.
However, the rather equal distribution of the bioactivity into the second aqueous and ethyl acetate phases (AP2-10 and EAP2-10) 
enabled us to utilise the latter 
as the end-point for further purification steps. 
It was initially assumed that the bioactivity was retained in EAP2-10 
because the first ethyl acetate extract (EAP2) was neutralised with the alkalised aqueous phase in the second liquid-liquid extraction step.
The similarly bioactive AP2-10 fraction, for example, was found to have pH values of around 4.5 instead 10.
This likely lowered the transfer of then only partially deprotonated bioactive compounds from the intermediate EAP2, 
but even buffering the aqueous phase with NaHCO~3~/NaOH at pH 10 did not eliminate this problem.
We assume that protonation of the bioactivity enhanced its transfer from aqueous into ethyl acetate phase better than deprotonation assisted the reverse transfer direction.
The bioactive second liquid-liquid extract EAP2-10 should therefore be considered for further purification steps, because it was similarly pure as the less accessible third ethyl acetate phase (EAP2-10-2).

## Discussion

Our taxonomic placement of Bacteroidetes strain 32 as a *Dyadobacter* confirms the close relationship to *D. ginsengisoli* and *D. fermentans*, 
which @bruckner_bacteria_2008 found by BLASTN. 
Our use of the Ribosomal Database Project (RDP) classification follows the demonstration of @cole_ribosomal_2005 and @wang_naive_2007 that a naïve Bayesian classifier 
provides a more accurate alignment of closely related ribosomal gene sequences than BLAST's *greedy algorithm* [@zhang_greedy_2000]. 
This "initial taxonomic placement" supported our goal of finding recommended, genus-specific growth media for our Bacteroidetes S32. 
RDP classification and BLAST results together indicate that S32 is either one of the known *Dyadobacter* species, or a new one in that genus, or the representative of a novel genus that is closely related to *Dyadobacter*. 
Because another novel bacterial genus, which utilises carbohydrates from the EPS of diatom biofilms in Lake Constance, 
was recently sequenced by @rahalkar_draft_2015, 
S32's 16S sequence was compared against this *Elstera\ litoralis* draft genome.
Scores, query cover and identity (599, 81\% and 76\% respectively[^EL]) were even lower than for the closest non-*Dyadobacter* relative in the BLAST search for S32's 16S sequence (see Suppl. Table\ \ref{dyado-hits},\ p.\ \pageref{dyado-hits}). 
Therefore, our Bacteroidetes strain 32 is not *Elstera\ litoralis*.
Instead, S32's growth in the recommended *Dyadobacter* media was confirmed (see chapter\ \ref{S32-opti},\ p.\ \pageref{S32-opti}). 
Interestingly, no medium was able to sustain notable growth at 37°C, which 
underscores the environmental origin of S32,
as also demonstrated by the variety of climes and isolation sources of other *Dyadobacters* (see Accession details of Table\ \ref{dyado-hits} in the [NCBI Nucleotide database](http://www.ncbi.nlm.nih.gov/nuccore/)).

[^EL]: Supplemental File: S32-BLAST-U7NUFUDG015-against-Elstera-litoralis.zip available \textattachfile[color=blue]{supplement/S32-BLAST-U7NUFUDG015-against-Elstera-litoralis.zip}{here or} \
at [`github.com/katrinleinweber/PhD-thesis`](https://github.com/katrinleinweber/PhD-thesis/)

The bioactivity of Bacteroidetes strain 32 supernatant could be tracked through the pH-adjustments and liquid-liquid extractions.
The first liquid-liquid extraction step was expected to extract many hydrophobic compounds 
beside the bioactive one from the LB medium.
Notable purification was expected in the second step,
and the third was added to transfer the bioactivity into an organic solvent again for a more convenient workup.
The biofilm-inducing compound(s), however, remain(s) to be identified.
This is mostly due to the purities and amounts of extract fractions being too low, but also due to problems with the bioassay.
It will be necessary to optimise many aspects of the bioassay, such as shortening the incubation time and simplifying the data collection.

The effectiveness of a bioassay-guided fractionation and purification is supported by the ability of the assay to provide stronger measurable signals upon treatment with purer or more highly concentrated bioactive fractions. 
The *A.\ minutissimum* biofilm assay turned out to have a limited ability to do so (see right panel in Fig.\ \ref{AP-BF}). 
It was never observed, that concentrated extracts of LB cultures with high S32 cell densities (OD~600~\ >0.9) yielded visibly denser biofilms than the co-cultures with Bacteroidetes cells (compare data points "S32" and "AP2-10 LB" in Fig.\ \ref{AP-BF} for example) or xenic *A.\ minutissimum* cultures. 
This means that possible progress in the purification of bioactive substances of S32 could only be tracked in the limited range between the negative and positive controls. 
Positive controls with xenic *A.\ minutissimum* and other LB extract fractions did not induce denser biofilms either, 
and the diatom was never observed to grow into multi-layered biofilms. 
Rather, highly concentrated extracts sometimes yielded lower biofilm intensities than less concentrated ones (data not shown).
These effects were not consistently reproducible, but they highlight the possibility that *A.\ minutissimum* reacts to S32's biofilm inducing compounds in a potentially narrow concentration range, further complicating this bioassay-guided fractionation.

Because no purification or concentration of the bioactive compound(s) of S32 could be achieved, the structure can only be speculated about at this time.
One potential candidate group are isomerised and hydroxylated fatty acids, which were shown to occur in a large variety in *Dyadobacter* species before [@chaturvedi_dyadobacter_2005; @baik_dyadobacter_2007; @lang_complete_2009], 
but little is known about their potential secretion.
Fatty acid hydroperoxide products have been eluted from a C18 sorbent like we used, but with methyl formate [@graff_preparation_1990], which is less polar than MeOH.
However, fatty acids have also been identified in the antibacterial defence of diatoms [@findlay_antibacterial_1984; @desbois_isolation_2008].
This casts the hypothesis that S32's bioactive compound is a fatty acid derivative into doubt.

It may also be possible that our *Dyadobacter* strain produces pheromone-like substances to interfere with the cell-to-cell signalling of *A.\ minutissimum*. 
Oxylipins, L-diproline, and indole-3-acetic acid (IAA) for example are reproductive pheromones in diatoms [@pohnert_oxylipin_2002; @gillard_metabolomics_2013; @amin_interaction_2015], but it is unknown if or how pheromones may have a function in biofilm formation.
Neither biofilm-inducing compounds for diatom-to-diatom communication, nor such compounds of specifically bacterial origin, have been identified to date.
IAA could be tested on *A.\ minutissimum* in a later study, but was not found to induce biofilms (see Fig.\ \ref{compounds},\ p.\ \pageref{compounds}). 
More experiments with pure compounds are complicated by the diversity of hydrophobic, diatom-related compounds, as well as the possibility that the biofilm induction is a result of several chemicals [@byers_optimal_1992].

If the identity of receptor proteins which mediate biofilm formation in our diatom were (or became) known, the following alternative purification strategy could be conducted.
Recombinantly produced receptors could be immobilised onto magnetic beads, 
in order to filter the unknown receptor ligand(s) out of the bacterial supernatant.
This concept has been demonstrated in the purification of small molecules from plant extracts and the identification of ligands for human estrogen receptors [@choi_development_2008].
In the context of small molecules from Bacteroidetes strain 32, it would first be necessary to identify the receptors in *A.\ minutissimum*, which mediate the biofilm-induction.
This may for example be possible via knock-out libraries of diatom receptors.
No such libraries have been generated so far, 
but several targeted mutagenesis tools have recently been adapted to the diatom model organism *P.\ tricornutum* [@daboussi_genome_2014; @karas_designer_2015; @weyman_inactivation_2015]. 
Meganucleases, nuclear episomes, plasmid delivery via *E. coli* conjugation, or transcription activator-like effector nucleases 
should be utilised to knock out known diatom receptor proteins. 
Such knockout mutants could then be screened for a lack of response to bacterial interaction partners. 
Thus, new receptors could be identified, and subsequently the compounds that mediate the complex chemical interaction of bacteria and diatoms.

## Summary and conclusion

We have shown that the diatom biofilm-inducing activity of Bacteroidetes strain 32 can be extracted from the bacterium's acidified supernatant by liquid-liquid extraction and solid-phase extraction.
In the latter, the fully methanolic fraction was found to be purest.
Methanol simplified the preparation of the extract residues 
and their application in the bioassay, 
but introduced the risk of inhibiting growth of the negative control cultures. 
It did, however, not change the expected biofilm formation patterns of the positive and negative controls. 
Ultimately, purities and amounts of bioactive fractions that were extracted from the bacterial supernatants were not sufficient to continue with the identification.
Moreover, the more than week-long incubation of the bioassay presented in chapter\ \ref{BF-form}\ (p.\ \pageref{BF-form}) hindered the effective iterative improvement of the fractionation strategy.
Therefore, further research should either focus on the metabolic and genetic characterisation of strain 32, 
or on improving the reproducibility of the bioassay, 
before it is applicable for the assay-guided purification of S32's bioactive chemical(s).

## Acknowledgements

We thank Annette Ramsberger for technical support, 
Nadija Ishnazarova and Nadine Leubner for help in the lab, 
Dr. Miriam Windler and Dr. Carolina Rio Bartulos for assembling S32's 16S consensus sequence, 
Dr. Michael Pester for advice about the [Ribosomal Database Project (RDP) Classifier](https://rdp.cme.msu.edu/classifier/classifier.jsp) for S32's taxonomic placement, and 
[Dr. Nina Jagmann of the Microbial Biotechnology lab at the University of Münster](http://mibi1.uni-muenster.de/Biologie.IMMB.Philipp/en/mitarbeiter/index.html) for providing the medium B recommendation and recipe. 
We are also grateful to [Antje Wiese of the Microbial Ecology, Limnology and General Microbiology lab at the University of Konstanz](http://cms.uni-konstanz.de/schink/team/team-detailseite/wiese-antje-2269/43762/43760/) for supplying its ingredients.
