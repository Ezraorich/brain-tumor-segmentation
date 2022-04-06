# brain-tumor-segmentation
MICCAI brain tumor data segmentation
MICCAI brain tumor segmentation dataset is available in http://braintumorsegmentation.org/ this website. You should get access to the medical data and after that you will get such files in your laptop.


![image](https://user-images.githubusercontent.com/43410356/161015498-58cd49c8-74fc-45d3-a4ef-b6d4a8e334b8.png)

Brats training data consists of 371 subjects/samples.
Brats validation data consists of 127 subjects/samples. However, validation data has no segmentation masks. You should upload your results from training to the MICCAI website to get the validation data accuracy results.


![image](https://user-images.githubusercontent.com/43410356/161016201-896a93b6-54df-4597-b969-b4e4bb009d47.png)


Each training sample, for example training_001 has 5 files in nii.gz format. You should use nibabel library in python to work with that format.


![image](https://user-images.githubusercontent.com/43410356/161016386-49e4a13c-689e-4006-831e-7ec6817e2391.png)

In validation samples, you dont have segmentation masks. Only 4 files: flair, t1, t1ce, t2. 

![image](https://user-images.githubusercontent.com/43410356/161016638-ce63e67d-ef2e-4387-af4c-6aea7547aa83.png)


In Brats_as_arrays folder you can see preprocessing step. There 3 files from each training sample:flair, t1ce, t2 were stacked together.
In 3d_segmentation_models.ipynb file Those 4d arrays were trained on Unet and evaluated using seg.nii.gz file or mask converted to array. 
![500trainacc](https://user-images.githubusercontent.com/43410356/161956099-f689c84c-052c-4721-ac62-d333563138bc.png)
![500trainloss](https://user-images.githubusercontent.com/43410356/161956120-5026745b-ccee-499a-92aa-ff0f07c4d80e.png)

