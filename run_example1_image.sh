#****************************************************************************************
#* _____   _______  _____  __  __                                                       *
#*/ ____| |__   __||_   _||  \/  |                                                      *
#*| |        | |     | |  | \  / |                                                      *
#*| |        | |     | |  | |\/| |                                                      *
#*| |____    | |    _| |_ | |  | |                                                      *
#*\_____|    |_|   |_____||_|  |_|                                                      *
#*======================================================================================*
#* This script has been developed by:                                                   *
#* M. Alemán-Flores, L. Alvarez, L.Gomez and D. Santana-Cedrés                          *
#* CTIM (Imaging Technology Center) www.ctim.es                                         *
#* ULPGC (University of Las Palmas de Gran Canaria)                                     *
#****************************************************************************************

#file:  run.sh
#Brief: This script calls to video_correction program compiled in a Linux System with the configured parameters:

#inpug.png/input.avi: input image or video
input="frame_1.png"

#output without name extension, the image output will named otput_(frame_number).png, if it is a  video: output.avi and the lens distortion model will be named output.ldm
output="output"

#float value for the high threshold of the Canny method (between 0.7 and 1.0)
high_threshold_Canny=0.8

#float value for the initial normalized distortion parameter (greater or equal to -0.5)
initial_distortion_parameter=0.0

#float value for the final normalized distortion parameter (greater or equal to the initial value)
final_distortion_parameter=3.0

#maximum distance allowed between points and associated lines.
distance_point_line_max_hough=3.0

#maximum difference (in degrees) of the point orientation angle and the line orientation angle.
angle_point_orientation_max_difference=2.0

#type of the lens distortion model for the correction of the distortion (pol or div)
type_of_lens_distortion_model="div"

#optimization of the center of the lens distortion model (True or False)
center_optimization="True"

#number which fixes the corrected image magnification (the potential values are 1 (small), 2 (medium) and 3 (large))
undistorted_image_magnification=2

#optional lens distortion model. If this parameter is provided, it is used to correct the image or video
model_ldm=""


#CALL
./video_correction_linux $input $output $high_threshold_Canny $initial_distortion_parameter $final_distortion_parameter $distance_point_line_max_hough $angle_point_orientation_max_difference $type_of_lens_distortion_model $center_optimization $undistorted_image_magnification $model_ldm
