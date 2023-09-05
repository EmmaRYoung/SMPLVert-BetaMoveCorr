# SMPLVert-BetaMoveCorr
Correlating the magnitude of SMPL vertices (N=6890) movement with SMPL shape parameter value. Visualized as a heat map on the SMPL model 

## Requirements
[SMPL repositories ](https://smpl.is.tue.mpg.de/)

## Explanation
### Reliability - Prepare Data

1,000 SMPL models are randomly generated and their shape parameters and x,y,z location of mesh vertices are stored.
![image](https://github.com/EmmaRYoung/SMPLVert-BetaMoveCorr/assets/67296859/3d4394fe-a84b-4d8e-9ca5-b28921abd663)

This data is combined and a correlation matrix is created using pandas. 

### ReliabilityVisualizeShapeCorrelation.m

The entire 6900x6900 matrix is imported into this script, but only a small segment of the matrix is used for visualization.
![image](https://github.com/EmmaRYoung/SMPLVert-BetaMoveCorr/assets/67296859/74cf47b0-d1ca-4e00-928e-477dacbd4e15)

Matlab's colormap feature is useful to generate a colormap to easily visualize the data. The correlations for &beta;<sub>1 are shown here, but more can be viewed in the PDF "Explanation.pdf"
![image](https://github.com/EmmaRYoung/SMPLVert-BetaMoveCorr/assets/67296859/b9cb8e26-045c-4f1a-8626-9370978f7a0e)



