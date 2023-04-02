# Research Interest

## Dependence Analysis

Dependence analysis is a vital part of program analysis and has applications in a wide range of software engineering activities . My research has uncovered the existence of highly inter-dependent clusters (coherent clusters) in production source code and identified reasons for their formation. These clusters have been shown to map directly to program structure, which can aid in program comprehension and understanding, as well as, identifying structural defects in code.
Code Metrics & Machine Learning

I have done research into identifying unique and useful code metrics for certain applications using principal component analysis. Such analysis helps identify metics that can be used as predictors for code quality and has been successfully used in supervised learning models to predict software faults.

## Dependence Clusters
A dependence cluster is a maximal set of program statements that are mutually inter-dependent. My research has focused on quantitative analysis to show the existence of these clusters in production source code and qualitative study of the underlying reason for their formation. My research has introduced coherent dependence clusters, a specialised form of dependence clusters. These clusters have been shown to map directly to program structure, which can aid in program comprehension and understanding, as well as, identifying structural defects in code.

## Program Slicing
Current program slicing techniques cannot handle systems written in multiple programming languages. Observation-based slicing (ORBS) is a novel language-independent slicing technique capable of slicing multi-language systems including systems which contain (third party) binary components. A potential slice obtained through repeated statement deletion is validated by observing the behaviour of the program: if the slice and original program behave the same under the slicing criterion, the deletion is accepted. We have developed ORBS to take advantage of the existing build tool chains to achieve observation-based slicing. I have also created a parallel version of ORBS to reduce slicing times and make the entire process usable in practice.

## Software Visualisation
As part of my research on clusters, I have also developed a multi-level visualisation tool (deCluVi) for mapping software metrics to program statements using colour and dimension. The visualization is created from System Dependence Graphs and static backward/forward slices extracted from an industry standard static analysis tool called CodeSurfer. The dataset and the tool have been made freely available to other researchers.

I am also working on ApiNATOMY a graphical toolkit for knowledge management with particular applications in multi-scale anatomy.

## Search-based Software Engineering (SBSE)
Many software engineering problems are complex and their resolution requires unbounded resources. I am interested in the application of meta-heuristic search techniques and in particular evolutionary algorithms to these complex problems in order to find near-optimal solutions. My research has applied search-based techniques along with supervised machine learning for temporal fault-prediction and also for automatic bug triaging and assignment.