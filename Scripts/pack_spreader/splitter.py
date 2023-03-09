import os
import shutil


class splitter:
    def __init__(self, source, output_folder) -> None:
        self.source = source
        self.output = output_folder
        
    def relocate(self):
        for subdir, dirs, files in os.walk(self.source):
            for file in files:
                #print os.path.join(subdir, file)
                source_file = subdir + os.sep + file
                subdir_name=subdir.split(os.sep)[-1]
                dest_file= self.output + os.sep + subdir_name+ "-" +file
                shutil.copyfile(source_file, dest_file)
                        
