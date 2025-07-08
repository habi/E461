folder="Schmid BFH Methylcellulose"
options="--verbose --recursive --times --update --omit-dir-times --prune-empty-dirs --include="*/""
echo "2214 --> archive"
rsync $options --exclude="*.png" --exclude="*.mp4" --exclude="*.ORSSession" --exclude="*_rectmp.log" ~/2214/"$folder"/ ~/research_storage_uct/Archiv_Tape/"$folder"/
# echo "2214 --> Alinas folder somewhere"
# rsync $options ~/2214/"$folder"/ ~/SOMEWHERE
echo "2214 (everything but projections) -> anaklin25 FastSSD"
rsync $options --exclude="*.?if" ~/2214/"$folder"/ /media/habi/Fast_SSD/"$folder"/
echo "2214 (everything but projections) -> anaklin04 FastSSD"
rsync $options --exclude="*.?if" ~/2214/"$folder"/ ~/anaklin04-f/"$folder"/
echo "Archive (log and roi files) --> repository subfolder"
rsync $options --include="*.?og" --include="*.?nc" --include="*.?oi" --exclude="*" ~/research_storage_uct/Archiv_Tape/"$folder"/ /home/habi/P/Documents/Schmid-Foam/logfiles/