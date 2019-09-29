# Radial-Distortion-Correction-Sports-Video-Sequences
GoPro distortion correction
http://ctim.ulpgc.es/demo112/#ref


Index

    Abstract
    Example dataset and results
    Software
    Acknowledgment
    References
    Copyright

Abstract

In this work, we present a software to automatically correct radial distortion from sports video sequences. These sequences have been captured by using cameras provided with wide-angle lenses in order to cover the whole playing field.

For the purpose of correcting the distortion, the presented software estimates the lens distortion model from a single frame. Afterward, the whole sequence is corrected by applying the obtained model. For the extraction of the frames and the later reconstruction of the video sequence, we use the well-known software FFmpeg.

For a more detailed information about the application of this technique see reference [1] quoted below, in which the method is applied to futsal videos acquired with a GoPro camera. In this way, the technique is used to correct the input video and then perform a tracking of the players on the corrected sequence. The results are compared with a standard setup composed of three cameras. In references [2] and [3], a detailed description of the method applied to obtain the lens distortion model, as well as about the implementation, can be found. Please, cite references [1], [2] and [3] in your own research works if you use any of the results, data or software included here.
Example dataset and results

With the software we provide a single frame and a short video sequence, just as examples to show how the program performs. Both data belongs to a Brazilian professional team, captured during the quarter-final round of the 2013 São Paulo futsal league.

At top of Table 1, we include the result of applying the software to a single frame. From left to right we include the originally distorted image, the primitives detected and the output of applying the technique. As observed in the second image, the technique is able to properly detect the distorted primitives (lines drawn with the same color) and then provide an appropriated correction of the distortion present in the image. At the bottom, an example of a video sequence is included. On the left, the distorted version of the video is shown, while on the right the corrected version is depicted.
Table 1: results of the proposed technique for a single frame and for a video sequence (see [1], [2] and [3] for further explanations). From left to right: the original distorted image, primitives detection, and output undistorted image. Video sequence at the bottom Single Frame Example
Original Distorted Image
Original Distorted Image 	Primitives Detection
Primitives Detection 	Undistorted Image
Undistorted Image
Video Sequence Example
Video Sequence

Software
(Developed by Daniel Santana-Cedrés)

An executable of the proposed technique (for Ubuntu Linux platform) is available as a compressed file. Using it, you can reproduce the examples presented in section Example dataset and results. The compressed file includes:

    The executable file.
    The static version of FFmpeg.
    Example files for testing purposes (frame_1.png and test.avi).
    A png image of a calibration pattern.
    Example scripts for processing a single image (run_example1_image) or a video (run_example2_video).
    A readme file with a description of the content and instructions of use.

Related to the outcomes, the executable provides:

    In case of processing a video sequence:
        The collection of extracted frames from the input video ("_original_frames" folder), and the corrected ones ("_corrected_frames" folder).
        An output file called "output.avi" with the corrected video sequence (this name can be modified by editing the associated script).
    In case of processing a single image:
        A png image with the output name finished in "_undistorted".
    A file with the ".ldm" extension, which contains the estimated lens distortion model.

Some considerations

    The program is able to estimate the lens distortion model if in the first frame there are primitives (distorted straight lines). If there are not straight lines in the sequence, the lens distortion model can be obtained by printing the calibration pattern provided and starting the recording using such pattern. In this way, we provide to the program the first frame with primitives.
    The lens distortion model is zoom dependent. Therefore, if during the camera recording the lens zoom changes, the program would not work properly.
    The system has been designed to work with cameras provided with wide-angle lenses. It doest not work for extreme distortions like the one produced by fish-eye lenses.

Releases

    Zip file with the executable (released October 19th, 2018, and tested under Ubuntu 16.04.3 LTS).
    Video tutorial about how to use the software (added September 23rd, 2019, run under Ubuntu 18.04)

Acknowledgments

The research associated with this software was partially supported by the MICINN project reference MTM2010-17615 (Ministerio de Ciencia e Innovación, Spain). The example frame and video sequence have been provided by the LaBioCoM laboratory.

Along with the software we provide a static version of FFmpeg software. For the licensing details of FFmpeg, please see the Copyright section.
References

    [1] Vieira, L. H., Pagnoca, E. A., Milioni, F., Barbieri, R. A., Menezes, R. P., Alvarez, L., Gomez, L., Santana-Cedrés, D., and Santiago, P. R.: Tracking futsal players with a wide-angle lens camera: accuracy analysis of the radial distortion correction based on an improved Hough transform algorithm. Computer Methods in Biomechanics and Biomedical Engineering: Imaging & Visualization, 5(3), 221-231, 2017.
    [2] Santana-Cedrés, D., Gomez, L., Alemán-Flores, M., Salgado, A., Esclarín, J., Mazorra, L., and Alvarez, L.: Invertibility and estimation of two-parameter polynomial and division lens distortion models. SIAM Journal on Imaging Sciences, 8(3), 1574-1606, 2015.
    [3] Santana-Cedrés, D., Gomez, L., Alemán-Flores, M., Salgado, A., Esclarín, J., Mazorra, L., and Alvarez, L.: An iterative optimization algorithm for lens distortion correction using two-parameter models. Image Processing On Line, 6, 326-364, 2016.

Copyright

Our software, results and the example data included in this page are distributed under the license: CC Creative Commons "Attribution-NonCommercial-ShareAlike" see http://creativecommons.org/licenses/by-nc-sa/3.0/es/deed.en

Notice that our software uses a static version of FFmpeg licensed under the LGPLv2.1, which can be downloaded here.

