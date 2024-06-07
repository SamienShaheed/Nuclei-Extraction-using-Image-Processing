# Nuclei-Extraction-using-Image-Processing
# Image Processing Pipeline

## Pre-Processing Techniques

- **Extracting Green Channel**:
  - Extract the green channel from the RGB image using a specific formula to enhance contrast.
  - This step aims to identify the cell nuclei by enhancing the green channel.

- **Contrast Enhancing**:
  - Apply Contrast Stretching using the `imadjust` function to improve visibility of cell nuclei.

- **Median Filter**:
  - Use the Median Filter (`medfilt2` function) to reduce "salt-and-pepper" noise while preserving edges.

- **Top Hat Filter**:
  - Apply Top Hat Filter (`imtophat` function) to correct uneven illumination by extracting small details from the background.

- **Binarize the Image**:
  - Convert the processed image to binary format using the `imbinarize` function.

## Post-Processing Techniques

- **Morphological Opening**:
  - Use Morphological Opening (`bwareaopen` function) to remove small elements from the image's foreground, consisting of erosion followed by dilation.

- **Watershed Segmentation**:
  - Apply Watershed Segmentation to segment overlapping cell nuclei by flooding the image from local minima.

## Final Output

- **Cell Image 1**:
  - Original and processed images are displayed.
  - ![Original Cell Image](https://github.com/SamienShaheed/Nuclei-Extraction-using-Image-Processing/tree/main/Original%20Images/StackNinja1.bmp)
  
- **Cell Image 2**:
  - Original and processed images are displayed.

- **Cell Image 3**:
  - Original and processed images are displayed.

## Critical Analysis

- **Binary Image Threshold**:
  - Discusses the impact of the threshold value on binarization, highlighting the potential for non-optimal thresholds leading to data loss.

- **Morphological Opening**:
  - Analyzes the effectiveness of Morphological Opening in noise removal and its potential for data loss.

- **Watershed Segmentation**:
  - Evaluates the benefits of Watershed Segmentation for overlapping nuclei and the issue of over-segmentation.

## References

- Gonzalez, R. C., & Woods, R. E. (2018). Digital Image Processing. Pearson.
- Haralick, R. M., & Shapiro, L. G. (1992). Computer and Robot Vision. Addison-Wesley.
- Jain, A. K. (1989). Fundamentals of Digital Image Processing. Prentice Hall.
- Meyer, F. (1994). Topographic distance and watershed lines. Signal Processing, 38(1), 113-125.
- Tsaftaris, S. A., Ntatsi, G., & Stavrou, A. (2016). Machine learning and computer vision for plant phenotyping. Proceedings of the IEEE.
- Zhang, Y., Liu, S., Zhang, J., Zhang, H., & Yang, K. (2017). Medical image segmentation using deep learning: A survey.
