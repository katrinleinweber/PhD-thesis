
# Concluding remarks and perspectives {#CRP-chapter}

This thesis advances the state of the art in diatom-bacteria communication and biofilm research in mainly three ways (visualised in figure \ref{CRP}).

Firstly, a simple correlation technique for light and electron microscopy of biofilms was developed.
It provided insights into both the hydrated biofilm, and the microstructure of unequivocally identifiable details within it. 
Thereby, frustule-attached fibrils were determined as a precursor candidate for the *A.\ minutissimum* capsule and potentially other diatom capsules. 
The discovery of these fibrils raises the question of their role in other stages of biofilm formation than the late encapsulation of cells. 

Secondly, the multi-step extraction workflow for Bacteroidetes strain 32's bioactivity worked in principle, 
but did not support the iterative improvement of the purification strategy well. 
Instead, a non-targeted, metabolomic approach may assist in elucidating not only the complex chemical interactions, 
but also the nutrient fluxes and availability discussed in chapters\ \ref{BF-form} and \ref{capsule-microstructure}. 

Thirdly, future screenings with the *A.\ minutissimum* bioassay were simplified by implementing robotisation options and a reproducible data processing workflow. 
These methodological improvements in particular 
support the replication of biofilm experiments to a higher degree of statistical confidence than previously achieved. 
This is exemplified by the datasets obtained by plate-reading 
(see figure\ \ref{screening}\, p.\ \pageref{screening} 
and chapter\ \ref{assay-opt}\, p.\ \pageref{assay-opt}), 
and prepares the screening of knock-out mutants of Bacteroidetes S32 for biofilm-relevant phenotypes.

With these remarks in mind, several overarching findings, ideas and perspectives will be discussed in the following sections.

![**Visual summary of this thesis.** 
Open research questions are question-marked. 
Biofilm formation of *A.\ minutissimum* is understood to be initiated by attachment of cells via mucous pads and the subsequent formation of stalks. 
Xenic cells attach constitutively, while axenic cells require inducer chemicals from Bacteroidetes S32. 
This induction is clearly mediated by hydrophobic compounds, whose identification will be supported by the now robotised biofilm formation assay. 
Cell division and the secretion of unstructured extracellular polymeric substances (EPS) contribute to the biofilm's maturation, 
which is followed by capsule formation. 
\label{CRP}](other-figures/CRP.png)

\clearpage

### Application of correlative light-electron microscopy (CLEM) on biofilms

In this thesis, correlative light-electron microscopy was used to answer the question of how the *A.\ minutissimum* capsule was structured. 
As discussed in the previous chapter, the correlative approach 
was particularly useful for first visualising the presence or absence of EPS capsules around particular cells, and to secondly demonstrate other properties of those same cells, such as the bacterial attachment. 
While applying the simple technique of adding surface markers, the destruction of small biofilm sections was accepted, 
because it contained cells with and without capsules 
in an apparently random distribution 
(see Fig.\ \ref{Chl-CV},\ p.\ \pageref{Chl-CV}). 
Besides that simple, reproducible way of highlighting regions of interest (ROIs), a third goal was considered: 
reducing observational biases [@macleod_good_2009].
This was achieved by applying markers almost blindly, 
after a quick microscopic screening of the stained samples 
for the expected overall biofilm density.
The ROIs were subsequently selected under the light-microscope in relation to those markers, 
which remained visible during the preparation procedure of the samples for SEM. 
If the markers had been applied after selecting the ROIs, a larger bias may have been introduced. 
Selecting ROIs in denser areas of the biofilm for example, could have biased the counting of bacterial cells attached to the diatoms in an unforeseeable direction. 
This was due to the available data on the nature of *A.\ minutissimum*'s interaction with Bacteroidetes S32 allowing only hypothetical statements about possible mutualistic, commensalistic or parasitic interactions [@windler_bacterial_2014]. 
Without clear indicators for the direction and extent of observational biases, 
the author of this thesis recommends the simple, low-bias approach of adding ROI markers to homogeneous biofilm samples before the selection and in-depth observations of individual cell clusters for CLEM. 

More advanced, biofilm-specific CLEM procedures 
could include the pre-inoculation marking 
of the sample carrier disks themselves [@mironov_correlative_2009]. 
Uniquely asymmetric cuts could be made along a disk's circumference, 
particularly when using plastic carrier material. 
Tri- and rectangular, as well as round, cuts for example should be distinguishable in both light and electron microscopy (LM and EM, respectively), regardless of the rotation of the disks.
While the compatibility of cut disks with the fixation, dehydration and sputtering procedures would have to be validated, 
such cuts would mark the areas immediately surrounding them, 
and would provide a rudimentary coordinate system. 
In case the cuts are found to be incompatible, an alternative coordination technique could be adapted from the field of material science and engineering [@fejfar_correlative_2015]:
Indenting a biofilm surface at three asymmetrically placed points enables the triangulation of locations in the surrounding biofilm. 
In either coordinate system, more ROIs per disk could be mapped, 
thus providing more replicate data points 
and increased statistical power of the subsequent analyses.

Open biofilm research questions that could be addressed by CLEM 
are for example the origin and composition of the fibrillar structures 
which were found in varying lengths, degrees of meshing and differing 3D-structures (see figures\ \ref{3D-fibrils} and \ref{stages},\ p.\ \pageref{stages}). 
Fluorescence- and immuno-labelling could be conducted 
against known extracellular proteins and/or carbohydrate structures.
For example, fluorophore-conjugated lectins indicated the presence of $\alpha$-N-acetyl-D-galactosamine in both the capsule material and other cell-wall-associated EPS [@bahulikar_localization_2007]. 
These experiments could be repeated with the same lectins and *A.\ minutissimum* biofilms on the disk, but evaluated using high-resolution fluorescence microscopy. 
This may show the distribution of different carbohydrate types on frustules and capsules. 
Subsequently, either the same lectins, or anti-lectin antibodies, conjugated to tungsten or gold particles could be applied to the biofilms. 
Similar detection techniques have been used for enteric bacteria, but with magnetic beads and coupled to fluorescence-activated, flow-cytometric sorting [@porter_evaluation_1998; @he_rapid_2011] instead of electron microscopy.

![**Meshing and branching of *A.\ minutissimum* fibrils.**
Which sugar compounds underpin the surface-bound, protruding, meshing, or branching fibril structures? 
This may be possible to elucidate by combining fluorescence staining of different carbohydrate species (for example via lectins [@bahulikar_localization_2007] or modified oligosaccharide [@spate_terminal_2014]) with the correlative technique of depositing electron dense material at the fluorescent sites [@grabenbauer_correlative_2012].
Image was taken by Joachim Hentschel at 5\ kV EHT, 5.1\ mm WD, 30\ µm aperture and an in-lens signal detector. 
Scale bar represents 1\ µm.
\label{3D-fibrils}](other-figures/140805a-0027-3D-fibrils.png)

A more speculative approach to elucidating the composition of *A.\ minutissimum*'s fibrils may be the injection of keto-, azido-, or alkene-labelled galactosamine analogues into the diatom's glycosylation pathways [@hang_ketone_2001; @dube_probing_2006; @spate_terminal_2014]. 
This process is called "metabolic oligosaccharide engineering" and exploits the "permissivity" of enzymes in those pathways towards artificially modified substrates, while avoiding the need to funnel bulky adducts (e.g fluorophores) through the glycosylation pathways (see @campbell_metabolic_2007 for a review). 
A potential target pathway may be the O-glycosylation of serine and threonine with N-acetylgalactosamine (GalNAc), which is also known as the mucin-type glycosylation and is very common in animals [@dube_probing_2006]. 
Mucin-like domains have also been identified in *P.\ tricornutum* as a novel class of soluble, extracellular diatom proteins which may be involved in biofilm formation [@buhmann_interactions_2015]. 
Potentially, fully soluble, as well as extracellularly attached variants of this protein class exist. 
Therefore, the possible localisation of mucin-like domains in *A.\ minutissimum* fibrils could be investigated by metabolic oligosaccharide engineering of modified GalNAc. 
Unfortunately, the uptake of such modified sugars was found to be low in the diatom model *P.\ tricornutum* [personal communication, Lili Chu & Jochen Buck]. 
The artificial introduction of a promiscuous GalNAc transporter may be necessary to ensure the uptake of modified sugars. 
Such an introduction was achieved by @zaslavskaia_trophic_2001 for the glucose transporter *Glut1* in *P.\ tricornutum*, yielding the so called "trophic conversion" of the diatom. 
Bypassing the complexity of this technique and of the genome engineering (briefly discussed in chapter\ \ref{signal-extraction}) in the eukaryotic diatoms,
feeding experiments with modified sugars could instead be conducted with *A.\ minutissimum*/S32 co-cultures, or the xenic diatom. 
Here, the bacterium's contribution to the EPS structures and the biofilm matrix could be investigated.

Regardless of which fluorophore delivery method is chosen, 
the correlation to EM may be achieved by utilising a technique reviewed by @grabenbauer_correlative_2012 for GFP-tagged proteins. 
In summary, photo-bleaching and -oxidation of the fluorophores can be used to locally deposit diaminobenzidine polymers, which can be stained by osmium tetroxide for EM. 
In future biofilm research, such deposition techniques of electron dense material could be applied to modified proteoglycans on cell surfaces. 
In addition to the analytic identification of different carbohydrate species in the EPS of *A.\ minutissimum* [@bahulikar_complex_2008], 
they could thus also be localised more precisely than by fluorescence microscopy alone. 

Another research question concerns the distribution of elements and chemicals in the *A.\ minutissimum* frustules and capsules. 
The energy-dispersive X-ray (EDX) spectra that were measured for figure\ \ref{EDX}\ (p.\ \pageref{EDX}) could be supplemented with a different correlative SFM and ToF-SIMS measurements (scanning force microscopy and time-of-flight secondary ion mass spectrometry, respectively; @bernard_sfm/tof-sims_2014; Sometimes also called "nanochemiscope").
The reported implementation of SFM and ToF-SIMS in the same vacuum chamber supports the correlation of the three-dimensional surface topography of a sample with the localised identification of elements and chemicals from that surface. 
By this method, organic structures composed of proteins [@poleunis_characterisation_2013], lipids [@anderton_correlated_2011] and sugars [@wehbe_comparative_2010] were characterised. 
Unfortunately the lateral resolutions in those studies was too low for the few dozen nanometers thick fibrils discovered in this thesis. 
Because proteins and sugars are expected to be the principal components of the EPS in fibrils and capsules of *A.\ minutissimum*, SFM/ToF-SIMS may be an interesting option once devices with higher resolution become available.

### Future investigation of the bioactivity of Bacteroidetes strain 32 {#S32-future}

Bacteroidetes S32 was isolated from phototrophic biofilms of Lake Constance by @bruckner_bacteria_2008 and initially placed into the *Dyadobacter* genus. 
The present thesis confirms this taxonomic placement 
on a larger BLAST dataset, as well as by the more reliable bioinformatic method on the RDP dataset, see section \ \ref{S32-opti}\ (p.\ \pageref{S32-opti}).
Nevertheless, the exact species of S32 remains to be elucidated. 
That endeavour may be assisted by a complete genome sequencing, which may enabling the search for genes that are relevant for the production and secretion of secondary metabolites.
Moreover, phenotypic and metabolic characterisations may help identify S32 as a species. 
@bochner_phenotype_2001 reported on a micro-array system to simultaneously test nutrient metabolisms and many other phenotypes in a bacterial strain. 
Such an approach may help determine S32's essential nutrients, 
as well as other metabolic properties 
and chemical sensitivities.
The findings could inform the preparation of high-yield growth media, 
with only the minimal set of essential ingredients. 
Possibly, the question of which LB ingredients effected the notably denser S32 growth than in the recommended *Dyadobacter* media 1 and 830 (see Fig.\ \ref{S32-growth-media},\ p.\ \pageref{S32-growth-media}) could be answered. 
Moreover, media could additionally be supplemented with labelled compounds, in order to elucidate 
whether S32's biofilm inducers are synthesised from complex precursors, 
or *de novo* from basic nutrients.
In the either case, S32's chemical cues might be obtained 
at higher purities in the minimal supernatant, than in LB, 
which would support future purification efforts.

In case the bioassay-guided approach is continued, 
the possibility of synergistic action of different chemicals should be considered. 
Despite high yields and starting purities, a bioactivity may disappear 
during the chromatographic separation of the bioactive chemicals. 
In that case, their successful identification 
would require many fraction combinations to be tested. 
The number of required tests can be reduced logically 
by implementing a subtractive-combinatorial purification and assay strategy [@byers_optimal_1992].
Therein, separated fractions are mixed, assayed and, 
if bioactive, reproduced with fewer fractions in a binary search pattern.
Bioactive fractions are identified via the loss of bioactivity of those mixtures 
that do not include those fractions.
Regardless of the number of samples to be tested in this approach, 
the simplified and robotised bioassay protocol 
presented in chapter\ \ref{assay-opt},\ p.\ \pageref{assay-opt}) 
may assist in any future bioassay-guided purification of the infochemicals 
in the \emph{A.~minutissimum} and S32 bioassay.

Also, it remains to be investigated whether the transposon mutants of S32 that lacked a growth-enhancing phenotype for the diatom *Fragilaria\ brevistriata* [@windler_bacterial_2014] were affected in types of secretion systems relevant to non-protein compounds, which the resilience of S32 bioactivity to harsh conditions suggests.
Such studies may help elucidate whether the enrichment of biofilm-inducing substances from S32 in its liquid culture supernatant is the result of an active process or simply cell lysis over time.
Mutants with biofilm-relevant phenotypes following secretion system knock-outs have been investigated in the phylum Bacteroidetes, albeit with a human pathogen [@tomek_s-layer_2014].
They found denser cell aggregation in biofilms of mutants which lacked the type IX secretion system T9SS, compared to wild types with intact T9SS.
That secretion system normally translocates glycosylated proteins with certain conserved C-terminal domains through the bacterium's outer membrane.
In a cyanobacterial context, it was demonstrated that an impairment in protein secretion and pilus assembly via type II and IV systems relieved the self-inhibition of biofilm formation [@schatz_self-suppression_2013].
These cyanobacteria can thus regulate their lifestyles between planktonic and sessile.
Such regulators may be infochemicals to other organisms (as for example suggested by @amin_interactions_2012) which induce lifestyle adaptations in response to the chemical stimuli of other organisms in the same ecological niche.


### Non-targeted approaches to the analysis of Bacteroidetes strain 32 supernatant {#Py-FIMS-section}
\sectionmark{Non-targeted S32 analysis by Py-FIMS}

As discussed in chapter\ \ref{signal-extraction} (p.\ \pageref{signal-extraction}), the targeted, bioassay-guided approach to the fractionation of Bacteroidetes S32's bioactivity was suboptimal. 
For future work on the discovery of infochemicals in the *A.\ minutissimum*/S32 model system, 
a non-targeted, metabolite analysis of only solid-phase extracted supernatant should be attempted. 
One such analysis method is the pyrolysis field ionisation mass spectrometry (Py-FIMS). 
Pyrolysis is defined as the chemical degradation of a sample, driven solely by thermal energy in an inert environment [@ericsson_pyrolysis_1989].
Field ionisation applies strong electric fields to ionise samples in a soft, fragmentation-avoiding manner [@lehmann_physikalische_1976].
Thus, the mass spectra of field-ionised samples can be assumed to represent the sampled molecules more accurately than fragment-forming techniques, such as electron spray ionisation.
This combination of temperature-controlled release of chemicals from a sample and their non-fragmenting ionisation makes Py-FIMS particularly useful for analysing the composition of unknown substances [@leinweber_analytical_2009].
In order to test the applicability of this technique, and in an attempt to analyse extracts of Bacteroidetes strain 32 supernatant with a non-targeted method in parallel to the bioassay-guided fractionation, samples with and without biofilm-inducing activity were sent for Py-FIMS analysis. 

![**Py-FIMS spectra of negative control (LB) and biofilm-inducing supernatant (S32).**
Inlays display aggregated evaporation intensities during the step-wise temperature increase during the pyrolysis.
In both spectra, a peak at 390.264±0.025 m/z is present and roughly correlates in its intensity with the strength of biofilm induction of the sample.
\label{Py-FIMS}](signal-extraction-figures/Py-FIMS-LB-S32.png)

The Py-FIMS analysis of sterile LB and S32's spent supernatant (Fig.\ \ref{Py-FIMS}) revealed that the LB contained more substances with evaporation temperatures of 200-400°C than the supernatant.
Conversely, the latter contained more substances with evaporation temperatures lower than 200°C, indicating the conversion of nutrients to more volatile metabolites. 
This lower temperature range should be considered for future Py-FIMS analyses of S32's biofilm-inducing secretions.

In order to continue the metabolomics approach, Py-FIMS could also be conducted with S32 supernatant samples from less complex media.
The complex LB medium was used for S32 cultivation here, because maximum yields of cell mass and thus bacterial secretions in the supernatant were prioritised over the purity of the starting supernatant.
However, sensitivity of Py-FIMS has been demonstrated 
in the context of tracking diurnal rhizodeposition profiles of maize [@kuzyakov_qualitative_2003] 
and in rhizodeposit comparisons of genetically modified potato crops [@melnitchouck_pyrolysis-field_2006].
It is therefore reasonable to assume 
that Py-FIMS is sensitive enough 
for the detection of bacterial compounds in medium supernatants 
without cell density maximisation.

Another non-targeted, metabolomics approach could adapt the two-chamber co-culturing system of @paul_co-culturing/metabolomics_2012 to our *A.\ minutissimum* and S32 model system. 
The system is composed of two glass chambers between which a membrane with cell- and potentially protein-excluding pore sizes is placed. 
The axenic diatom could be cultivated in one of the chambers first, with regular sampling of secreted, diffused compounds from the cell-free second chamber. 
By analytical methods such as gas chromatography and mass spectrometry, a baseline of secreted metabolites of axenic *A. minutissimum* could be established. 
As previously shown, soluble sugars will likely be among these secreted compounds (Fig.\ \ref{CHOs},\ p.\ \pageref{CHOs}) and may support the later inoculation of heterotrophic S32. 
The bacterium could be inoculated in either (a) the first chamber, so that cell-free sampling can be continued from the second, or in (b) that second chamber, so that direct contact between diatom and bacteria cells can be excluded, or in (c) a third chamber which ensures both these properties and can be crafted by a glass blower. 
In either case, repeated analyses of the co-culture's diffused supernatant composition over time may assist in the identification of secreted, soluble substances from either organism.

### Application of the *A.\ minutissimum* biofilm assay to the screening of pure chemicals {#screening}
\sectionmark{Chemical screening with the bioassay}

So far, the bioassay was applied in the assessment of biofilm-inducing effects 
of supernatants or extracts from bacterial liquid cultures.
This combined the problem of laborious sample preparation 
with the inherent incubation time of at least one week for the diatom cells.
As concluded in chapter\ \ref{BF-form}, the assay may also be applicable to the screening of pure, commercially available chemicals. 
Circumventing the laborious sample preparation, the following chemicals were assayed for biofilm-inducing or -inhibiting effects: 

- The plasticiser di-n-octyl phthalat (DNOP or DEHP, CAS: [117-84-0](https://pubchem.ncbi.nlm.nih.gov/compound/8346)), 
because it was enriched in biofilm-inducing extract fractions (390.264±0.025 m/z peak in Fig.\ \ref{Py-FIMS},\ p.\ \pageref{Py-FIMS}) and had previously been detected in water samples known to have been in contact with soft plastic tubing [Kai-Uwe Eckhardt, Uni Rostock, personal communication], which was a potential source in this thesis as well. 
- L-homoserine lactone (HSL, CAS: [2185-02-6](http://www.sigmaaldrich.com/catalog/search?term=2185-02-6&interface=CAS%20No.)), 
because it is a commercially available building block 
of the bacterial quorum-sensing chemical acyl homoserine lactones (AHLs). 
These have been suggested as potential infochemicals to diatoms, 
due to their hydrophobic, membrane-permeating nature [@amin_interactions_2012].
- Indol-3-acetic acid (IAA, CAS: [87-51-4](https://pubchem.ncbi.nlm.nih.gov/compound/802)), because it can be extracted from solid C18 phases with highly methanolic eluents also [@hou_simultaneous_2008], and because it was recently identified as a promoter of diatom cell division in marine consortia of *Pseudo-nitzschia multiseries* and a *Sulfitobacter* strain [@amin_interaction_2015].
We tested the same nanomolar concentration range that was found to significantly increase *P. multiseries* growth.

![**Biofilm induction of *A.\ minutissimum* by a selection of chemicals.**
CV absorbance of adherent cells in cultures treated with DNOP was determined with a photometer after EtOH extraction, 
while HSL and IAA data was obtained by plate-reading 
(*N*\ =\ 3 (DNOP), 6\ (HSL) and 2-4\ (IAA) per concentration).
Shaded area represents confidence interval of 95% around linear regression according to @wilkinson_symbolic_1973.
\label{compounds}](other-figures/compounds.pdf)

As figure\ \ref{compounds} illustrates, 
neither the basic compound of bacterial quorum-sensing chemicals (HSL), 
nor the recently discovered cell division promoter (IAA), 
nor the plasticiser (DNOP) are biofilm-inducing infochemicals 
to *A.\ minutissimum* in those concentration ranges.
The DNOP and IAA data fluctuate slightly, 
but only around the on average evenly linear trend. 
That trend is most clearly pronounced in the HSL data 
which was gathered in the highest number of replicates. 
Absorbances of solvent controls (0\ M) 
were in accordance with 
the respective linear trends. 
In all cases, the biofilm-positive, xenic controls showed an at least 2-fold stain intensity. DNOP and IAA were also tested on co-cultures and did not result in biofilm inhibition (data not shown). 
The generally higher absorbance in the DNOP-experiment 
resulted from the application of the manual bioassay protocol 
(ch.\ \ref{CV-stain},\ p. \pageref{CV-stain}), 
while HSL and IAA data was obtained by the semi-automated protocol 
(ch.\ \ref{assay-opt},\ p.\ \pageref{assay-opt}). 

Plasticisers have been recognised as contaminants in aquatic environments generally (see review by @cole_microplastics_2011 and references therein).
Phthalate esters in particular are ubiquitously found in environmental water samples [@wang_determination_2011; @hope_state-wide_2012; @polyakova_improved_2014]. 
It is unclear, why a phthalate ester would accumulate alongside S32 growing in LB, because such compounds are on the contrary understood to be degradable by bacteria [@keyser_biodegradation_1976; @stales_environmental_1997; @cartwright_degradation_2000]. 
Apart from coincidental, its correlation to the bioactivity might be a result of co-retention with the actual infochemical(s)
and other hydrophobic substances from S32's spent supernatant.
Seemingly no specific DNOP tests 
with diatom biofilms 
have been published so far.
Together with larger phthalates however, 
DNOP is a known inhibitor 
of *Staphylococcus aureus* and *Escherichia\ coli* attachment 
to PVC membranes [@chapman_phthalate_2010]. 
Also, @sakata_algicidal_2011 suggested DNOP to be a component 
of an algicidal chromatographic fraction 
of a marine *Pseudomonas* strain, 
but the pure DNOP did not posses bioactivity itself in further tests. 
Instead, they identified 2,3-indolinedione as the algicidal compound 
(also called isatin[^isatin]; CAS: [91-56-5](https://pubchem.ncbi.nlm.nih.gov/compound/7054). 
This is in contrast to the apparently beneficial effect of the other indole derivative IAA found by @amin_interaction_2015. 
There are also artificially produced indole derivatives with the opposite effects on diatoms. 
@yang_comparative_2015 found that several halogenated indoles inhibited growth of two marine biofouling diatoms better than copper sulphate, another commonly used anti-fouling agent.
Moreover, 6-chloroindole was found to trigger Ca^2+^ efflux from *Cylindrotheca* sp. [@yang_indole_2014]. 
Apparently, the indole moiety is 
an infochemical structure to several diatom species, 
and elicits a range of different responses. 
It would therefore be interesting to (a) screen such indole derivatives in our *A.\ minutissimum* biofilm assay, and to (b) optimise analytical procedures for the detection of indoles in the supernatant of Bacteroidetes S32.

[^isatin]: National Center for Biotechnology Information. PubChem Compound Database; CID=7054, https://pubchem.ncbi.nlm.nih.gov/compound/7054 (accessed Oct. 8, 2015). 

Another biofilm-relevant chemical is 2E,4E-decadienal. 
It is a diatom-derived polyunsaturated aldehyde that inhibits biofilm formation of the benthic diatom *Fistulifera saprophila* [@leflaive_effects_2010]. 
The growth inhibiting concentration of 52.5\ µM, the adhesion inhibition above 6.6\ µM, as well as the reduced cell motility at 16.5\ µM are all roughly 100 to 500 times higher than the concentrations of bacteria-derived IAA that promoted cell division in *P.\ multiseries* [@amin_interaction_2015]. 
This illustrates the diversity of effect types, sources and concentration ranges of diatom infochemicals. 
While IAA was found to not induce biofilm formation in axenic *A.\ minutissimum*, 2E,4E-decadienal could be tested in the future with substantially higher replicate numbers than previously, thanks to the upscaling methods presented in this thesis. 
Hypothetically, 2E,4E-decadienal would not induce biofilms in the axenic diatom either, but it may suppress biofilm formation by xenic *A.\ minutissimum* and co-cultures of the axenic diatom with Bacteroidetes S32. 

### Further up-scaling potential of the *A. minutissimum* biofilm assay
\sectionmark{Up-scaling of the bioassay}

Several aspects of the initially manually conducted bioassay were 
simplified and sped up by applying automation and data pipelining techniques 
(see chapter \ref{assay-opt},\ p.\ \pageref{assay-opt}). 
Thus, the *A. minutissimum* bioassay may be applicable for medium-throughput screenings of biofilm-relevant bacterial mutants or chemical substances. 
The assay's long incubation time would not hinder the screening of such samples as much, as it did the supernatant purification discussed above. 
Particularly for medium-throughput use-cases, the plate read-out may be simplified further, such that biofilm quantification is completely omitted in favour of a visual, qualitative assessment.
The presence or absence of biofilms in this assay could be detected by eye, 
similar to bioassays with visually distinct inhibition zones or microbial colonies (see section 5.4.1 of @windler_bacterial_2014) or a "BioFilm Ring" test based on magnetic microbeads [@chavant_new_2007; @bernardi_method_2011].
In the latter test, the beads are inoculated and dispersed together with the cultures and (unless biofilms are formed during the cultivation), a visible aggregation of the beads can later be induced by magnetic fields.
However, this does not appear to be necessary in the *A.\ minutissimum* bioassay, 
because laboratory experience showed, that the cells themselves can be visibly aggregated simply by gentle shaking of the 48-well plates.

A higher throughput of samples could also be achieved by further-reaching robotisation of the inoculation of *A.\ minutissimum* and the application of treatments.
Although this would be in contrast to the simplification discussed above, it may be possible with the [Tecan Freedom EVO](http://tecan.com/freedomevo) modular, robotised worktable, 
as demonstrated by @tillich_high-throughput_2014 for cyanobacteria.
In those semi-sterile conditions, it would be important to control S32 and *A.\ minutissimum* cultures for biofilm-modulating effects of possible contaminations. 
While S32's specific [@bruckner_bacteria_2008] and constitutive (see Fig.\ \ref{S32-growth},\ p.\ \pageref{S32-growth}) infochemical secretion seems unlikely to be disrupted, 
the axenic control cultures may be.
They may therefore require antibiotic shielding, or should alternatively be controlled for unintended biofilm formation by intentional exposure to the surrounding air. 
Alternatively, the whole robotic set-up could be encapsulated in a sterile environment as suggested by @tillich_high-throughput_2014.
Besides microalgae cultivation, they also reported on a variety of add-on measurements, of which the MALDI-TOF-MS (matrix-assisted laser desorption/ionization time-of-flight mass-spectroscopy) is particularly relevant to the search for bacterial infochemicals.
The S32 knockout strains produced by @windler_influence_2014 could be cultivated in parallel, and their supernatants could be screened for metabolomic differences.
Mass signals that are present in S32 wild-type, but absent from mutants that do not induce axenic *A.\ minutissimum* biofilms would be infochemical candidates.

Because that level of robotisation would require the switch from 48- to 96-well plates [personal communication, Silke Müller], the read-out method may have to be adjusted. 
Up to now, liquids were manually pipetted out of the wells 
before the absorbance read-out, 
but the wells were not additionally dried. 
The well area covered by the meniscus of residual liquid was small, 
so the measurement's light path could have been diffracted slightly. 
In smaller wells, the area under a meniscus of residual liquid 
would be relatively larger around the well edge, 
so that a smaller middle area may be available for undiffracted measurements.
The spread of measurement points over that well middle area would also be smaller, so the statistical analysis would be less representative of the sample.
A second effect might also complicate the switch to 96-well plates: 
@rasmussen_adhesion_2001 observed the inverse case of meniscus-formation by culture gels in multi-well plates, which made it impossible to map cell distribution.
In our bioassay, the distribution of cells on the well bottom affects the photometric read-out results.
This distribution may change due to almost unavoidable shaking during plate transport: 
esp. non-adherent cells (e.g. negative, axenic controls) may aggregate in the well middle. 
In 96-well plates, the possibly larger meniscus might restrict the area of undisturbed measurement exactly into this aggregation center.
Previously, alternative methods 
for distinguishing wells with non-adherent, axenic *A.\ minutissimum* 
from wells with induced biofilms, 
were discussed. 
In addition to those, a faster removal of non-adherent cells,
standardised shaking to reproducibly resuspend non-adherent cells, 
and/or a more thorough, robotised liquid removal may be solutions to the problem of meniscus-restricted measurement area.
Regardless of the direction that further methodological changes to the *A.\ minutissimum* bioassay may take, 
the plate-read datasets shown in 
figure\ \ref{screening}\ (p.\ \pageref{screening}) 
and chapter\ \ref{assay-opt} (p.\ \pageref{assay-opt}) 
already exemplify the advantage 
of semi-automated measuring and processing 
of experiments with many replicates.
This will support a qualitative identification of the biofilm-inducing chemical(s) of Bacteroidetes S32, 
as well as the quantification of their bioactive concentration ranges.
