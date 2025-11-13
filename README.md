# 🧠 Learning-to-Internalize-CoT-Step-by-Step

This repository provides an environment and setup to **reproduce** the experiments from the paper:  
> **“From Explicit CoT to Implicit CoT: Learning to Internalize CoT Step by Step” (Deng et al., 2024)**  
> [arXiv:2404.05866](https://arxiv.org/abs/2404.05866)

The goal is to train models that can **internalize the reasoning process** —  
gradually transitioning from *explicit* Chain-of-Thought (CoT) supervision to *implicit* CoT generation,  
where the model performs multi-step reasoning internally without producing intermediate steps.

---

## 🚀 1. Overview

The paper proposes a stepwise method that progressively removes explicit reasoning traces from the training data.  
This encourages the model to internalize reasoning behaviors while retaining strong problem-solving accuracy.  

This repository provides:
- A minimal environment setup to run or extend the experiments.  
- Easy installation via `requirements.txt` or `environment.yml`.  
- Compatibility with the official implementation.

---

## ⚙️ 2. Installation

Clone this repository:
```bash
git clone https://github.com/<yourname>/Internalize-CoT-Reimplementation.git
cd Internalize-CoT-Reimplementation

python -m venv venv
source venv/bin/activate        # Windows: .\venv\Scripts\activate
pip install --upgrade pip
pip install -r requirements.txt
