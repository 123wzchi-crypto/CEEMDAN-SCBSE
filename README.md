# CEEMDAN-SCBSE
MATLAB implementation of CEEMDAN-SCBSE algorithm for signal processing.  This repository contains the compiled toolbox and examples for reproducing the results in the manuscript "CEEMDAN-based Single-Channel Blind Source Extraction for Bearing Fault Detection and Diagnosis"，ID: IEEE LAT AM T-10347. 

Author Profiles

Yuan Xie
Ph.D. in Control Science and Engineering from Guangdong University of Technology (2019). Currently a Lecturer at the School of Mechanical and Electrical Engineering, Guangzhou University. Research interests include blind signal separation, intelligent detection, and machine learning. Author of over 20 SCI journal papers and holder of 9 patents. Has led research projects such as the National Natural Science Foundation of China Youth Project.

Zhangchi Wei
Received the B.Eng. degree from Guangzhou University in 2023. Currently pursuing the M.Eng. degree in Control Engineering at Guangzhou University. Research interests include fault detection, blind signal separation, and deep learning.

Jinshi Yu
Ph.D. in Control Science and Engineering from Guangdong University of Technology (2020). Served as a postdoctoral researcher at Guangzhou University from 2021 to 2023. Research focuses on tensor decomposition-based image completion, denoising, background removal, and clustering. Has published over 10 high-level academic papers and led one National Natural Science Foundation Youth Project.

Yifei Sun
Received the Ph.D. degree from the School of Computer Science, Guangdong University of Technology in 2025. Currently a postdoctoral researcher at the School of Cyber Space Institute of Advanced Technology, Guangzhou University. Research interests include edge computing, intelligent detection, and deep learning.

Zhipeng Chen
Ph.D. from Sun Yat-sen University (2019). Conducted postdoctoral research at Sun Yat-sen University from 2019 to 2022. Main research interests include functional microstructure fabrication, magnetic materials, and robotics applications. Has published papers in journals such as Nature Communications and Matter, and led projects including the National Youth Science Foundation. Recent work focuses on microstructure fabrication, intelligent detection, and stochastic processes.

---

# Included Scripts

This repository contains all scripts required to reproduce the simulation and numerical results presented in the article.

| Script | Related Figure(s) | Description |
|--------|-------------------|-------------|
| `CEEMDAN.m` | Fig. 4, 8 | Translate the fault vibration signal into IMF diagrams of different frequency bands using three methods: EMD, EEMD, and CEEMDAN. |
| `envelope spectra.m` | Fig. 5， 9(a, b, c) | Calculate the envelope spectrum of each IMF obtained by the three algorithms (EMD, EEMD, and CEEMDAN) and identify the corresponding fault frequency. |
| `Kurtosis.m` | Tab. Ⅱ， Ⅲ | Calculate the kurtosis values of each IMF obtained by the three algorithms: EMD, EEMD, and CEEMDAN. |
| `SCBSE.m` | Fig. 5， 9(d) | Reconstruct the signal based on the kurtosis values, and then process the aliased signal using the SCBSE algorithm and calculate the envelope spectrum. |
| `Singular Value.m` | Fig. 6, 10 | Calculate the singular value entropy of the mixed matrix obtained after applying the four algorithms. |

---

## 📂 Required Files

- `dataset`: Contains the data required for the experiment and needs to be loaded first.
- `CEEMDAN`: Required for `CEEMDANs.m`. Place it in the same folder as the script.
- `FastICA`: Required for `SCBSE.m`. Place it in the same folder as the script.

- ---

## 💻 Requirements

- MATLAB R2024a or later.
- No additional toolboxes are required.

---

## ✉️ Contact

For questions or replication of results:  
wzc123@e.gzhu.edu.cn

  

---
