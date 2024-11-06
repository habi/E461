folder='Schmid BFH Methylcellulose'
echo "2214 --> archive"
rsync --verbose --recursive --times --update --omit-dir-times --prune-empty-dirs --include="*/" --exclude="*.png" --exclude="*.mp4" --exclude="*.ORSSession" --exclude="*_rectmp.log" ~/2214/"$folder"/ ~/research_storage_uct/Archiv_Tape/"$folder"/
# echo "2214 --> some research storage folder"
# rsync --verbose --recursive --times --update --omit-dir-times --prune-empty-dirs --include="*/" --exclude="*_rectmp.log" ~/2214/"$folder"/ ~/research_storage_SOMEWHERE
echo "2214 (everything but projections) -> anaklin25 FastSSD"
rsync --verbose --recursive --times --update --omit-dir-times --prune-empty-dirs --include="*/" --exclude="*.?if" --exclude="*_rectmp.log" ~/2214/"$folder"/ /media/habi/Fast_SSD/"$folder"/
echo "Archive (log and roi files) --> repository subfolder"
rsync --verbose --recursive --times --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.?nc" --include="*.?oi" --exclude="*" ~/research_storage_uct/Archiv_Tape/"$folder"/ /home/habi/P/Documents/Schmid-Foam/logfiles/
