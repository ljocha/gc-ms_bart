# Processing mass spectrometry data with machine learning techniques

Mass spectrometry is a widely used experimental technique to identify chemical compounds in biological or environmental samples (blood, urine, water, soil, ...).
From many possible scenarios we focus on the specific "untargeted" one when the compounds in the sample are not known a priori (unlike "targeted" scenario when presence of a specific compound should be proven or reputed).

Traditionally, the sample is processed, yielding a series of spectra (set of peaks at specific masses and varying intensity), and the spectra are looked up in databases. This works quite fine for known compounds, for which the database records exist. However, in the domain of small organic molecules we are interested in, only up to 1 million of spectra were recorded, while over 1 billion of molecules are proven to exist, and up to 10^60 are combinatorically possible. Therefore the risk of not finding a specific molecule in the database is rather high.

The problem opens room for numerous machine techniques roughly classified (but not limited to):
1. spectra embedding: find a suitable way to represent a spectrum as a vector of real numbers
2. spectra prediction: given a structural formula of a compound, predict its mass spectrum
3. spectra annotation: given a spectrum of a compound, find the structural formula

At Masaryk University (ICS and Recetox) we developed SpecTUS [1], based on the BART transformer model, addressing the problem #3 with unprecedented accuracy for the specific case of GC-EI-MS. We are starting collaboration with Tomas Pluskal team (Institute of Organic Chemistry and Biochemistry of the CAS), who developed DreaMS [2], a unique approach to #1, University of Münster and NXT Spectra, who come with advanced solution to #2 and numerous practical applications.

We are looking for students willing to join the team having the vision of their Master thesis drawn from this research area according to the following topics/experiments:


## Thorough evaluation of SpecTUS with advanced data splitting

The original SpecTUS was trained and evaluated on rather technical dataset splits which prevent standard data leaks but could be still vulnerable to hidden leaks by having not identical but similar compounds across train/test sets. Advanced data split techniques will be applied and the model will be re-evaluated.

## Re-training SpecTUS with post-RASSP synthetic datasets

Current SpecTUS is pre-trained on synthetic data using RASSP model [3], which has serious limitations and which is overcome in general. We will bring in advanced state-of-the-art spectra prediction models (#2) and re-train and re-evaluate SpecTUS on them.

## Development of DreaMS-like embedding for GC-EI-MS data and its use with SpecTUS

DreaMS [2] introduces elaborated embedding of MSn spectra which brings close to one another compounds of similar structure despite of different spectra. We will replace rather straightforward spectra encoding used in SpecTUS with DreaMS-like EI-MS embedding looking for further accuracy improvement.

## Evaluation of quadrupole-to-orbitrap transfer

Most of EI-MS data available in the databases come from well established quadrupole mass detectors.
On the other hand, emerging Orbitrap detectors produce quite different spectra even for the same compounds, causing poor SpecTUS performance on Orbitrap spectra. We hypothesize that DreaMS-like spectra embeddings capture chemical structure regardless on the mass detector technology, hence their use on SpecTUS input will work around the problem.

## Low-/High-resolution hybrid training

High-resolution on the mass scale overcomes ambiguities of low-resolution (integer) masses. However, sufficient amounts of high-resolution experimental data are not available for reasonable model training. 
On the other hand, structure based spectra generators (like RASSP) can produce high-resolution synthetic data sets. We will elaborate on hybrid model to work with both high  and low resolution on both synthetic and experimental data to leverage the additional information high resolution brings.

## Review and testing of MSn spectra generation techniques

While in the case of EI-MS the prediction of spectra (#2) is quite well elaborated, 
this is not the case of hierarchical spectra (MSn). The available techniques will be reviewed, tested, and extended eventually to allow for reliable generation of synthetic datasets.

## Adaptation of SpecTUS for MSn spectra

From the beginning, SpecTUS was focused on EI-MS data. On the other hand, the more complex data of MSn experiments carry richer information which can be leveraged to improve accuracy of the formula prediction (#3). We will design SpecTUS extension to work on MSn data (their DreaMS embeddings respectively), train, and evaluate the model on suitable representative dataset.


## Assembly of training/testing/evaluation pipelines 

All the preceding topics will require thorough, well controlled, and repeatable experiments to get reliable results of the evaluation of the techniques. On the other hand, the experiments are not cheap in terms of consumed computing resources. Therefore systematic design of the software integration, and setup of the evaluation pipelines will be crucial for the overall success.


## References

[1] Adam Hájek, Michal Starý, Elliott Price, Filip Jozefov, Helge Hecht, Aleš Křenek. SpecTUS: Spectral Translator for Unknown Structures annotation from EI-MS spectra. 2025, https://doi.org/10.48550/arXiv.2502.05114

[2] Bushuiev, R., Bushuiev, A., Samusevich, R. et al. Self-supervised learning of molecular representations from millions of tandem mass spectra using DreaMS. Nat Biotechnol (2025). https://doi.org/10.1038/s41587-025-02663-3

[3] Zhu, Richard Licheng and Jonas, Eric, Approximate Subset-Based Spectra Prediction for Electron Ionization–Mass Spectrometry, Anal. Chem. (2023), https://doi.org/10.1021/acs.analchem.2c02093

