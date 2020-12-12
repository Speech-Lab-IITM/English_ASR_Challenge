# Baseline Results

**NOTE**: We used a train set comprising of both NPTEL and IITM English data. Evaluations were performed on NPTEL and IITM development sets by considering them seperately.

The baseline results(% WERs) are as follows. All the triphone models were trained using 7000 senones and 20 gaussians per seonone.

|Model|DEV_IITM|DEV_NPTEL|EVAL_IITM|EVAL_NPTEL|
|-----|--------|---------|---------|----------|
Tri1(7000-20) | 16.72  | 23.50 | 16.39  | 24.15  |
Tri2(7000-20) | 16.24  | 22.14 | 16.00  | 22.47  |
Tri3(7000-20) | 15.58  | 21.70 | 15.70  | 22.23  |
TDNN          |  6.65  | 13.08 | 6.77   |12.92   |

