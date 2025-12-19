# mackey-glass-nearest-neighbor-forecasting
Nearest-neighbor clustering–based nonlinear time series forecasting of the Mackey–Glass chaotic system using delay embedding and fuzzy inference (MATLAB).

# Application of Nearest-Neighbor Clustering for Nonlinear Time Series Forecasting

## A Mackey–Glass Case Study

---

## Overview

Forecasting nonlinear and chaotic time series is a challenging task due to strong sensitivity to initial conditions and complex underlying dynamics. The **Mackey–Glass time series** is a classical benchmark system that exhibits chaotic behavior and is widely used to evaluate nonlinear prediction methods.

In this project, a **nearest-neighbor–based clustering approach** is applied to the nonlinear forecasting of the Mackey–Glass time series. The identified clusters are subsequently used to construct a **fuzzy inference system (FIS)** for one-step-ahead prediction. The influence of the clustering radius on prediction accuracy and model complexity is systematically investigated.

---

## Methodology

### 1. Time Series Reconstruction (Delay Embedding)

Since the Mackey–Glass system has no external input, delay-coordinate embedding is used to reconstruct the system dynamics from a scalar time series. Input–output pairs are formed as:

[
\mathbf{x}(k) = [x(k), x(k+1), x(k+2), x(k+3)], \quad y(k) = x(k+4)
]

This transformation converts the chaotic time series into a supervised learning dataset suitable for nonlinear prediction.

---

### 2. Nearest-Neighbor Clustering

A **nearest-neighbor clustering algorithm** is implemented from scratch. For each input vector:

* The Euclidean distance to existing cluster centers is computed.
* If the minimum distance is less than a predefined radius ( r ), the sample is assigned to that cluster.
* Otherwise, a new cluster is created.

Each cluster represents a local region of the reconstructed state space. The number of clusters directly determines the number of fuzzy rules in the subsequent fuzzy inference system.

---

### 3. Fuzzy Inference System Construction

Based on the clustering results, a **Takagi–Sugeno fuzzy inference system** is constructed:

* Each cluster corresponds to one fuzzy rule.
* Input membership functions are defined uniformly over the data range.
* Rule consequents are obtained from the averaged output values of each cluster.

This approach enables **automatic rule generation**, where the model complexity is controlled by the clustering radius ( r ).

---

### 4. Performance Evaluation

The prediction performance is evaluated using:

* One-step-ahead forecasting
* Mean Squared Error (MSE)
* Visual comparison between true and predicted time series

The effect of the clustering radius on:

* Prediction accuracy
* Number of fuzzy rules
* Computational complexity

is thoroughly analyzed.

---

## Experimental Results

Experiments are conducted for different values of the clustering radius ( r ):

* **Smaller radius values**

  * Larger number of clusters and fuzzy rules
  * Higher prediction accuracy
  * Increased model complexity

* **Larger radius values**

  * Fewer fuzzy rules
  * Reduced computational cost
  * Lower prediction accuracy

Results demonstrate that decreasing the radius parameter significantly improves the approximation quality of the Mackey–Glass time series, at the expense of increased rule count.

---

## Key Observations

* Nearest-neighbor clustering effectively captures local nonlinear dynamics of the chaotic time series.
* The proposed approach provides accurate short-term predictions of the Mackey–Glass system.
* There exists a clear trade-off between model accuracy and complexity controlled by the clustering radius.
* The method is well-suited for nonlinear systems where explicit mathematical models are difficult to obtain.

---

## Conclusion

This project demonstrates the effectiveness of **nearest-neighbor clustering combined with fuzzy inference systems** for nonlinear time series forecasting. Using the Mackey–Glass chaotic system as a case study, the proposed method achieves accurate short-term predictions while providing an interpretable rule-based structure. The results highlight the importance of clustering parameters in balancing prediction accuracy and model complexity.

---

## Future Work

Possible extensions of this work include:

* Multi-step-ahead forecasting analysis
* Comparison with local linear models and neural networks
* Adaptive radius selection methods
* Application to real-world nonlinear time series

