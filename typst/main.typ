---
title: 'UnfoldMakie.jl: A Julia package for ERP visualization'
tags:
  - Julia
  - Event-related potentials
  - visualization
  - interactivity 
  - user study
authors:
  - name: Vladimir Mikheev
    orcid: 0000-0002-4738-6655
    equal-contrib: true
    affiliation: 1 
  - name: Benedikt Ehinger
    orcid: 0000-0002-6276-3332
    equal-contrib: true 
    affiliation: "1, 2"
affiliations:
 - name: University of Stuttgart, Institute for Visualization and Interactive Systems, Germany
   index: 1
 - name: University of Stuttgart, Stuttgart Center for Simulation Science, Germany
   index: 2

date: 30 October 2024
bibliography: paper.bib

---


= Statement of need

`UnfoldMakie.jl` is a Julia package for visualization of electroencephalography (EEG), with a focus on event-related potentials (ERPs), especially regression-ERPs (rERPs). It can accompany Unfold.jl, a toolbox for regression-ERP analysis, but is equivalently a standalone tool (no dependency on Unfold.jl).

In an earlier study  @mikheev2024art, , we asked novice and expert practicioneers for insights into their ERP visualization practices, and consequently used these insights to improve UnfoldMakie.jl

UnfoldMakie.jl fills a gap in being one of the only dedicated EEG visualization libraries, with a focus on speed, ease of use, adaptability [...], whle still catering both to explorative with zooming / panning), and publication-ready use (vector graphics). This is achieved by the modularity of Makie.jl, which allows to switch Backends from (W)GLMakie.jl to CairoMakie.jl.

Anyone who works with EEG, MEG, ERP, iEEG or other time-series data is a target audience of this package.

= Functionality



UnfoldMakie.jl has the following benefits:
- Speed. Julia allows to plot complex figures fast. For instance, it is able to plot one figure with 20 topoplots in 0.7 seconds, which is x-times faster, compared to MNE / matlab. 
- Highly adaptable. The package is primarily based on Unfold.jl, Makie.jl and AlgebraOfGraphics.jl.
- Customable. Majority of EEG researchers preferred flexibility of coding as the most important feature of the tool. That's why we allowed users to flexibly customize different aspects of the plot. 
- Extensive documentation with many usage examples.
- Scientific colormaps by default. According to our earlier study @mikheev2024art, 40% of EEG researchers do not know about the issue of scientific color maps.
- Interactivity. Several plots make use of Observables.jl which allows fast updating of the underlying data. Several plots already have predefined interactive features, 


We currently support nine general EEG plot types:
  - ERP plot
  - Butterfly plot
  - Topography plots
  - Topography time series
  - ERP grid
  - ERP image
  - Channel image
  - Parallel coordinates
  - Circular topoplots


Also we support two Unfold-specific plots:
  - Design matrices
  - Spline plots


= State of the field

There are dozens of libraries for ERP visualization in Python and MATLAB. The most EEG practitioners (82%) have experience with non-visualization specific MATLAB-based tools like EEGLAB, FieldTrip, ERPLAB and Brainstorm. The Python-based MNE (41%) and commercial software Brain Vision Analyzer (22%) also showed significant usage, as well as custom scripts written in programming languages such as R, Python, Julia (42%).

Julia is faster than Python and MATLAB, however there are not many EEG/ERP visualization libraries. Currently, we could find #link("https://github.com/slopezpereyra/EEGToolkit.jl?tab=readme-ov-file")[EEGToolkit.jl], XYZ, but they are not gained popularity. Please check NeuroAnalyzer Also there are #link("https://julianeuro.github.io/packages")[traces] of many abandoned projects.


= Figures

Figures can be included like this:
![Caption for example figure.\label{fig:example}](figure.png)
and referenced from text using \autoref{fig:example}.

Figure sizes can be customized by adding an optional second parameter:
![Caption for example figure.](figure.png){ width=20% }

= Funding
Funded by the Deutsche Forschungsgemeinschaft (DFG, German Research Foundation) – Project-ID 251654672 – TRR 161.

= Acknowledgements

We acknowledge contributions from Daniel Baumgartner, Niklas Gärtner, Soren Doring, Fadil Furkan Lokman, Judith Schepers, René Skukies. 

#bibliography("paper.bib")

@mikheev2024art

 