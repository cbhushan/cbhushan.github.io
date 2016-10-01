---
title: "Projects @ IITKGP"
permalink: /ugprojects/
layout: splash
author_profile: false
date: 2016-07-09
header:
  overlay_color: "#000"
excerpt: "Projects undertaken during my undergraduate studies at IIT Kharagpur, India"
feature_row:
  - image_path: gesture_recognition.jpg
    alt: "Gesture recognition"
    title: "Human motion analysis (July'09 - April'10)"
    excerpt: "Developed and implemented an algorithm to effectively detect and analyze human motion, in a video sequence, to classify human behavior. This work involves human detection using silhouette and Blobs and behavior classification using stick figures and classification techniques."
  - image_path: http://neuroimage.usc.edu/~chitresh/images/bricks_oil_paint.jpg
    alt: "Oil paint"
    title: "Oil Paint Filter (July 2009)"
    excerpt: "Developed and implemented an algorithm to convert any digital image to give oil paint effect by finding a representative color for small patched region."
    url: "/oil-paint/"
    btn_label: "Project Page"
    btn_class: "btn--inverse"
  - image_path: lzw-variant.png
    alt: "Oil paint"
    title: "A LZW-variant for image compression"
    excerpt: "Proposed a variant of the LZW algorithm, for Image and Data Compression, which gives a preference to the most occurring contiguous symbol sequences, while adding these sequences into a fixed size dictionary. This proposed variant showed better compression than traditional LZW algorithm but with computational overheads."
    url: "http://neuroimage.usc.edu/~chitresh/papers/LZW_Term_Paper.pdf"
    btn_label: "Term Paper"
    btn_class: "btn--inverse"

---


# Investigation of Photosensitive Epilepsy    (July'07 -- December'08)
<figure class="align-right">
  <a href="http://www.plosone.org/article/info:doi/10.1371/journal.pone.0007173"><img src="{{ site.url }}{{ site.baseurl }}/images/photo_epilepsy_entropy.jpg" alt="">
  <figcaption>Values of 3rd order Renyi entropy for participants</figcaption></a>
</figure> 
We studied the photosensitivity of the human brain against three types of chromatic flickering stimuli by recording MEG responses from nine adult controls, an unmedicated patient, a medicated patient, and two controls age-matched with patients. Dynamical complexities of MEG signals were investigated by a family of wavelet entropies. In particular, we found that as compared to the unmedicated patient, controls showed significantly larger wavelet entropy values. We also found that Renyi entropy is the most powerful feature for the participant classification.

Our results suggest that when perturbed by potentially epileptic-triggering stimulus, healthy human brain manages to maintain a non-deterministic, possibly nonlinear state, with high degree of disorder, but an epileptic brain represents a highly ordered state which making it prone to hyper-excitation. Further, certain colour combination was found to be more threatening than other combinations.

The study was performed under guidance of [Prof. Joydeep Bhattacharya, Goldsmiths, University of London](http://www.gold.ac.uk/psychology/staff/bhattacharya/) and [Prof. Goutam Saha, IIT Kharagpur, India](http://www.ecdept.iitkgp.ernet.in/index.php/home/faculty/gsaha). This study resulted in a journal paper titled "**[Investigating Neuromagnetic Brain Responses against Chromatic Flickering Stimuli by Wavelet Entropies](http://www.plosone.org/article/info:doi/10.1371/journal.pone.0007173)**", published in Public Library of Science (PLoS ONE).


# Real-Time Edge Detection on 3D Range Data    (May -- July, 2008)
<figure class="align-left">
  <a href="http://neuroimage.usc.edu/~chitresh/papers/CSIRO_talk_chitresh.pdf"><img src="{{ site.url }}{{ site.baseurl }}/images/lidar_edge_2.png" alt="">
  <figcaption>Edges detected (in red) from range data</figcaption></a>
</figure> 
We developed a system for real-time edge detection on 3D range data. The range data was produced by a laser sensor (LIDAR) which produced 70 scans per second and the LIDAR itself was rotating at 0.5 rounds per minute. The data generated was first used to produce the 3D point cloud and then to detect the edges in real-time. Here is a small video which shows the spinning laser sensor and the 3D point cloud generated.

Several statistical, mathematical, and image processing techniques like fast median filtering, eigen decomposition, Laplacian of gaussian etc. were used to find 3D coordinates, pose, normals, and weights at each point of the point-cloud generated. These information were used to identify the edge points and the edges lying on the same zero-crossing of second derivative of range were joined together to form edge lines. In order to achieve real-time processing, all the processing was concentrated on latest five scan lines and information from previous scan lines were used to join the edges.

The algorithm was implemented in C++. The edges produced in real-time can be used as prominent features to speed-up the processing of higher level tasks like mapping and navigation. The project was completed under guidance of [Dr. Michael Bosse](https://ch.linkedin.com/in/mike-bosse-3342392), Senior Research Scientist, Automation Systems Lab, [CSIRO ICT Center, Brisbane, Australia](http://www.csiro.au/en/Research). More details about the project can be found in the [project talk slides](http://neuroimage.usc.edu/~chitresh/papers/CSIRO_talk_chitresh.pdf){: .btn .btn--info}.



# Robbit: 3D Simulator for Robots (February -- September, 2007)
<figure class="align-right">
  <a href="http://cbhushan.github.io/robbit/"><img src="{{ site.url }}{{ site.baseurl }}/images/robbitv4.0.0_2.jpg" alt="">
  <figcaption>A screenshot of Robbit in action</figcaption></a>
</figure> 
We developed a software platform in C++ to simulate the motion of multiple mobile robots and their surroundings. It helps users to acquire insights into the control design by, enabling users to design and implement customized control algorithms, write their own controllers, modify the environment, and visualize their effects on different types of robots. Moreover, the software is written for the general case of multiple robots acting on the same environment, allowing its use to test more complex algorithms like navigation or exploration algorithms and advanced concepts such as coordinated control. It is not designed to provide a real world simulation and it is kept simple, modular and extensible for educational purpose. If needed, users can easily add obstacles, sensors or define a new robots.

The software was later named "Robbit" and is released under the GNU General Public License (GPL), so that it can be used as a teaching tool for graduate, master thesis, and PhD students in fields of robotics, computer sciences, non-linear control, behavioral and cognitive sciences. Robbit is hosted on [GitHub](http://cbhushan.github.io/robbit/). 

The project was undertaken under guidance of [Prof. Antonelli Gianluca](https://scholar.google.com/citations?user=dP-4awwAAAAJ&hl=en), Department of Automation, Electromagnetism, University of Cassino, Italy. This work was also presented at 6th Vienna International Conference on Mathematical Modelling (MATHMOD 2009) under title "**[ROBBIT: an Open Source Simulator for Education in Robotics](http://neuroimage.usc.edu/~chitresh/papers/ROBBIT_MATHMOD_09.pdf)**".



# Medical Expert System and Ultrasound Image Segmentation (August'08 - April'09)
<figure class="align-left">
  <a href="http://neuroimage.usc.edu/~chitresh/papers/Ultrasound_image_report.pdf"><img src="{{ site.url }}{{ site.baseurl }}/images/ultrasound_segmentation2.jpg" alt="">
  <figcaption>Segmentation results on ultrasound images</figcaption></a>
</figure> 
We developed a prototype fuzzy medical expert system in a procedural language (C++), which used fuzzy knowledge base and inference engine to reach at a conclusion. The procedural language was selected so that the expert system can be easily embedded on commonly available processors. A scheme was also proposed to automatically detect accurate contours in ultrasound images. Multiscale morphological method was used to detect approximate gradients and to check over-segmentation in poor-quality ultrasound images prior to applying watershed segmentation.

The project was undertaken under guidance of Prof. Ajoy Kumar Ray, School of Medical Science and Technology and Prof. Somnath Sengupta, Kalpana Chaola Space Technology Cell, IIT Kharagpur, India. More details about the project can be found in the [ultrasound image report](http://neuroimage.usc.edu/~chitresh/papers/Ultrasound_image_report.pdf){: .btn .btn--info}.





{% include feature_row %}


