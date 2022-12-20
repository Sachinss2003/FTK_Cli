echo "FTKiMAGER"
echo "Printing the list of disk"
ftkimager --list-drives
echo "Pinting More details about"
fdisk -l
echo "Select Disk:"
read -p "Disk_Name:" Disk_Name
echo "Select image Destination:"
echo "Image Destination Folder:"
read -p "Destination_Folder:" Destination_Folder
echo "Image Filename:"
read -p "Image_Filename:" Image_Filename
echo "Image_Fragment(GB,MB,etc.)"
read -p "Fragment_Type:" Fragment_Type
echo "Compress(0 to 9 options)"
read -p "Compress value:" Compress_Value
echo " Evidence item information"
echo "Case Number:"
read -p "Case_Number:" Case_Number
echo "Evidence Number"
read -p "Evidence_Number:" Evidence_Number
echo "Unqie Description:"
read -p "Unique_Description:" Unique_Description
echo "Examinar:"
read -p "Examinar_Name:" Examinar_Name
echo "Note"
read -p "Notes:" Notes
echo " TIME TO DO FORENSICS"



ftkimager $Disk_Name  $Destination_Folder/$Image_Filename --e01 --frag $Fragment_Type --compress $Compress_Value --case-number $Case_Number --evidence-number $Evidence_Number --description $Unique_Description --examiner $Examiner_Name --notes $Note
