# Implementation-of-Parallel-Matrix-Matrix-Multiplication-Algorithms
Development and implementation of parallel matrix-matrix multiplication, aims at handling the large-scale computational tasks efficiently.

## Features:
Parallel Execution: Utilizes parallel computing techniques to accelerate matrix multiplication.
Optimized Performance: Improves computational efficiency compared to traditional serial algorithms for large dimensioned inputs.
Flexible Implementation: Includes implementations using different parallel programming models (e.g., multi-threading, GPU acceleration).

## Tools used:
MATLAB R2022b
-Parallel Computing Toolbox (PCT)

## Project Directory
1. 'cannon/' - contains the main file for implementation of cannon's algorithm
   1. 'cannon_nxn' - implementation of cannon's algorithm for dimensions(n)
   2. 'cannon8x8' - implementation of cannon's algorithm for 8x8 matrix
   3. 'cannon_parallelized_nxn' - implementation of cannon's algorithm for nxn matrix using parallel techniques 
2. 'school algorithm/' - contains the main file for implementation of school algorithm
   1.'gen_matx_matx' - implementation of school's algorithm for dimensions(n)
3. 'strassen's algorithm/' - contains the main file for implementation of strassen's algorithm
   1.'strassen' - implementation of strassen's algorithm for dimensions(n)
     - 'compute1'
     - 'matrix_qud'
   2.'strassen_parallelized' - implementation of strassen's algorithm for dimensions(n) using parallel techniques
4. 'Analysis of Algorithms/' - contains the main file for analysis of algorithms

## Analysis:
This includes the Speedup and Timing Analysis with respect to variable number of cores. 
'Speedup' is the ratio of the time taken by the algorithms on the sequential machine with respect to that on the parallel machine.

'Timing analysis' refers to the comparison of time taken by the algorithms like School, Parallelized school, Strassen’s and Cannon’s in order to compute the final result matrices by performing matrix-matrix multiplication.

## Future Scope:
This project can be taken forward to implement the 2D-Discrete Cosine Transform (2D-DCT) efficiently with the developed parallel algorithms which can further be used for efficient implementation of Image Compression.

## Contributing
Contributions are welcome! If you'd like to help improve the project, please:
Fork the repository.
Create a feature branch (git checkout -b feature-branch).
Commit your changes (git commit -am 'Add new feature').
Push to the branch (git push origin feature-branch).
Open a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details

## Acknowledgements
Special thanks to our guide Prof.Kotresh Marali, and team members Annapurna Kalmath, Divya Bhagwat and Ashwini Hadagali who helped in the development of this project.
