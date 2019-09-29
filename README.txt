RADIAL DISTORTION CORRECTION OF SPORTS VIDEO SEQUENCES
================================================================================
This readme file intends to describe the structure and use of the software developed 
to correct radial distortion from sports video sequences.

--------------------------------------------------------------------------------
Contents:
  1. Description
  2. Requirements
  3. Packing list and sizes
  4. Usage
  5. Examples
  6. Contact information
--------------------------------------------------------------------------------

1. Description

This program computes a 2 parameter lens distortion model on a single image and 
correct the input image or video, furthermore it saves the computed model.
The program produces the following outputs: 
  If a video sequence is processed:
    (1) The collection of extrated frames from the input video ("_original_frames" 
        folder), and the corrected ones ("_corrected_frames" folder).
    (2) An output file called "output.avi" with the corrected video sequence. 
  If a single image is processed:
    (1) A png image with the output name finished in "_undistorted".
    
Regardless, a file with the .ldm extension is saved, which contains the lens
distortion model.

--------------------------------------------------------------------------------

2. Requirements

The libpng header and libraries are required on the system for
compilation and execution. See http://www.libpng.org/pub/png/libpng.html

We have checked this code on the following configurations:
  - Ubuntu Linux 16.04.3 LTS with GCC version 5.4.0

--------------------------------------------------------------------------------   

3. Packing list and sizes   

  =============================================
  FILENAME                TYPE            SIZE
  ---------------------------------------------
  CalibrationPattern.png  png image       38KB
  ffmpeg                  executable      63MB
  frame_1.png             png image      135MB
  README.txt              .txt file      5.4KB
  run_example1_image.sh   script         2.9KB
  run_example2_video.sh   script         2.9KB
  test.avi                video          1.1MB
  video_correction_linux  executable     3.5MB
  =============================================

--------------------------------------------------------------------------------

4. Usage

This program takes 11 parameters (one of them is optional):
"exe_file input.png/input.avi output high_threshold_Canny 
initial_distortion_parameter final_distortion_parameter 
distance_point_line_max_hough angle_point_orientation_max_difference
typo_of_lens_distortion_model center_optimization undistorted_image_magnification
model_ldm"

* exe_file:                               executable file (called video_correction_linux)
* input.png/input.avi:                    input image or video
* output:                                 output without name extension, the image output will named otput_(frame_number).png and video output.avi
* high_threshold_Canny:                   float value for the high threshold of the Canny method (between 0.7 and 1.0)
* initial_distortion_parameter:           float value for the initial normalized distortion parameter (grater or equal to -0.5)
* final_distortion_parameter:             float value for the final normalized distortion parameter (greater or equeal to the initial value)
* distance_point_line_max_hough:          maximum distance allowed between points and associated lines 
* angle_point_orientation_max_difference: maximum difference (in degrees) of the point orientation angle and the line angle
* type_of_lens_distortion_model:          type of the lens distortion model for the correction of the distortion (pol or div)
* center_optimization:                    optimization of the center of the lens distortion model (true or false)
* undistorted_image_magnification:        number which fixes the corrected image magnification (the potential values are 1 (small), 2 (medium) and 3 (large)).
* model_ldm (optional parameter):         optional lens distortion model. If this parameter is provided, it is used to correct the omage or video.

--------------------------------------------------------------------------------

5. Examples

Two scripts with examples of how to process a single image (run_example1_image) 
or a video sequence (run_example2_video) are provided, with detailed information 
about the parameters.

--------------------------------------------------------------------------------

6. Contact information
If you have any question or suggestion, do not hesitate to contact us. Just send an e-mail to:
  Daniel Santana-Cedrés, PhD
  e-mail: dsantana@ctim.es
  Imaging Technology Center (CTIM)
  University of Las Palmas de Gran Canaria


