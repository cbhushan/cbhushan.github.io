---
title: "Software"
permalink: /software/
layout: single
classes: wide
date: 2016-07-09
header:
  overlay_color: "#000"
excerpt: "\"_Talk is cheap. Show me the code._\" -- [Linus Torvalds](http://lkml.org/lkml/2000/8/25/132)"
tnlm:
  - image_path: /assets/images/tNLM.jpg
    alt: "tNLM output"
    title: "tNLM: Temporal non-local means filtering for resting fMRI"
    excerpt: '<ul class="zero-size"><li>Filters fMRI data without spatial blurring</li><li>Allows direct visualization of BOLD activity</li><li>Improves reliability of cortical parcellation</li><li>Implemented as a MATLAB function</li><li>Open-source under GNU GPL-2.0 License</li></ul>'
    url: "http://neuroimage.usc.edu/neuro/tNLM"
    btn_label: "Learn more and Download"
    btn_class: "btn--info"
bdp:
  - image_path: http://neuroimage.usc.edu/~chitresh/images/bdp2crp2.png
    alt: "BDP output"
    title: "BDP: BrainSuite Diffusion Pipeline"
    excerpt: '<ul class="zero-size"><li>Fuses anatomical & diffusion MRI images</li><li>Distortion correction with or without fieldmap</li><li>Several diffusion models (DTI, ODF, multi-shell)</li><li>Supported on Windows, Linux and Mac OS</li><li>Open-source under GNU GPL-2.0 License</li></ul>'
    url: "http://brainsuite.org/processing/diffusion/"
    btn_label: "Learn more and Download"
    btn_class: "btn--info"
ipedcorrect:
  - image_path: /assets/images/IPED.png
    alt: "IPED q-space samples"
    title: "IPED: Interlaced phase-encoding"
    excerpt: '<ul class="zero-size"><li>Accurate distortion correction in diffusion MRI</li><li>Exploit IPED q-space sampling with <b>no penalty</b> on total scan-time</li><li>Constrained joint-reconstruction approach with q-space smoothness</li><li>Also supports generalized reversed-gradient acquisition schemes</li><li>Implemented as a MATLAB function</li></ul>'
    url: "http://neuroimage.usc.edu/neuro/Resources/IPED"
    btn_label: "Learn more and Download"
    btn_class: "btn--info"
affine-inversion:
  - image_path: /assets/images/INVERSION-affine.jpg
    alt: "INVERSION example"
    title: "Multi-contrast 3D image registration with INVERSION"
    excerpt: '<ul class="zero-size"><li>3D image-alignment with 12 (affine) or lower DOF</li><li>Also supports popular similarity measures like mutual information (MI) and correlation ratio (CR)</li><li>Supports input & output in <a href="http://nifti.nimh.nih.gov/nifti-1/">NIfTI-1 format</a></li><li>Implemented as a MATLAB function</li></ul>'
    url: "http://neuroimage.usc.edu/neuro/Resources/BDPAddons#affineReg"
    btn_label: "Learn more and Download"
    btn_class: "btn--info"
bfc-corr:
  - image_path: /assets/images/bfc_corrector_anim.gif
    alt: "BFC-corr example"
    title: "Interactive bias-field correction"
    excerpt: '<ul class="zero-size"><li>Guide bias-field correction in T1w MRI images</li><li>Interactive GUI for defining voxels corresponding to gray-matter, white-matter and CSF</li><li>Supports input & output in <a href="http://nifti.nimh.nih.gov/nifti-1/">NIfTI-1 format</a></li></ul>'
    url: "http://neuroimage.usc.edu/neuro/Resources/bfc_correction_tool"
    btn_label: "Learn more and Download"
    btn_class: "btn--info"
robbit:
  - image_path: http://cbhushan.github.io/robbit/images/robbitv4.0.0_1.png
    alt: "Robbit screenshot"
    title: "Robbit: 3D simulator for robots"
    excerpt: '<ul class="zero-size"><li>3D simulation environment for multiple robot system</li><li>Flexibility to modify the environment & controller</li><li>Open-source under GNU GPL-2.0 License</li></ul>'
    url: "http://cbhushan.github.io/robbit/"
    btn_label: "Learn more and Download"
    btn_class: "btn--info"
github_profile:
  - image_path: /assets/images/GitHub-Mark.png
    alt: "GitHub Mark"
    title: "GitHub"
    excerpt: 'My GitHub page also hosts few other software tools and scripts that have been released under open-source licenses. With time more and more source code would be made available.'
    url: "https://github.com/cbhushan"
    btn_label: "Visit me on GitHub"
    btn_class: "btn--info"
---

Several of the published (& unpublished) methods, which I worked on during my graduate and undergraduate studies, are also available as software tools.


{% include feature_row id="bdp" type="left" %}

{% include feature_row id="tnlm" type="left" %}

{% include feature_row id="ipedcorrect" type="left" %}

{% include feature_row id="affine-inversion" type="left" %}

{% include feature_row id="bfc-corr" type="left" %}

{% include feature_row id="robbit" type="left" %}

{% include feature_row id="github_profile" type="left" %}
