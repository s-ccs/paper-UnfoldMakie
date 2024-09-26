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

`UnfoldMakie.jl` is an Julia package for visualization of Event-related potentials (ERP).
Anyone who works with EEG, MEG, ERP, iEEG or other time-series data is a target audience of this package. 

We conducted user study to understand what is important for EEG visualization tool. We used insights collected in this study for UnfoldMakie.jl.   

It has the following benefits:
- Speed. Julia allows to plot complex figures fast. For instance, it is able to plot one figure with 20 topoplots in 0.7 seconds, which is super fast in comparison to other libraries. 
- Highly adaptable. The package is primarily based on Unfold.jl, Makie.jl and AlgebraOfGraphics.jl.
- Customable. Majority of EEG researchers preferred flexibility of coding as the most important feature of the tool. That's why we allowed users to flexibly customize different aspects of the plot. 
- Many usage examples. You can find many user-friendly examples of how to use and adapt the plots in this documentation.
- Scientific colormaps by default. According to our study @mikheev2024art, 40% of EEG researchers do not know about the issue of scientific color maps. By default, we use Reverse(:RdBu) (based on colorbrewer) and Roma (based on Scientific Colormaps by Fabio Crameri) as default color maps.
- Interactivity. Several plots make use of Observables.jl which allows fast updating of the underlying data. Several plots already have predefined interactive features, e.g. you can click on labels to enable / disable them. See `plot_topoplotseries` and `plot_erpimage` for examples.

= Functionality

A toolbox for visualizations of EEG/ERP data and Unfold.jl models. Based on the Unfold.jl and Makie.jl, it grants users high performance, and highly customable plots.

EEG is a multidimensional data, which can have such dimensions as: Voltage (must have), Time, Number of channels (1-128), Spatial layout of channels, Experimental conditions, Trials/subjects. It is hard to represent meaningfully and without clutter more than 3 dimensions. Therefore each plot emphasizes certain dimensions while collapsing others. 


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

There are dozens of libraries for ERP visualization on Python and MATLAB. The most EEG practitioners (82%) have experience with MATLAB-based tools like EEGLAB, FieldTrip, ERPLAB and Brainstorm. The Python-based MNE (41%) and commercial software Brain Vision Analyzer (22%) also showed significant usage, as well as custom scripts written in programming languages such as R, Python, Julia (42%).

Julia is faster than Python and MATLAB, however there are not much EEG/ERP visualization libraries. Currently, we could find #link("https://github.com/slopezpereyra/EEGToolkit.jl?tab=readme-ov-file")[EEGToolkit.jl], XYZ, but they are not gained popularity. Also there are #link("https://julianeuro.github.io/packages")[traces] of many abandoned projects.


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

 