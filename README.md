# CEEMDAN-based Single-Channel Blind Source Extraction for Bearing Fault Detection and Diagnosis

**Manuscript ID:** ID: IEEE LAT AM T-10347 
**Authors:**  
- Yuan Xie 
- Zhangchi Wei  
- Jinshi Yu  
- Yifei Sun  
- Zhipeng Chen  

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
