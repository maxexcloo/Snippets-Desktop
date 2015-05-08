import os
import shutil

jpg_extension = ".JPG"
raw_extension = ".CR2"
scan_dir = "/home/max.schaefer/Images/Photos/"
waste_dir = "/home/max.schaefer/Resources/Dump/"

def locate(folder, extensions):
    for filename in os.listdir(folder):
        if filename.endswith(extensions):
            yield os.path.join(folder, filename)

if not os.path.exists(waste_dir):
    os.makedirs(waste_dir)

jpg_ext = (jpg_extension.lower(), jpg_extension.upper())
raw_ext = (raw_extension.lower(), raw_extension.upper())

for path, dirs, files in os.walk(os.path.abspath(scan_dir)):
    print(path)
    raw_hash = {}

    for raw in locate(path, raw_ext):
        base_name = os.path.basename(raw)
        base_name = os.path.splitext(base_name)[0]
        raw_hash[base_name] = True

    for jpg in locate(path, jpg_ext):
        base_name = os.path.basename(jpg)
        base_name = os.path.splitext(base_name)[0]
        if base_name in raw_hash:
            jpg_base_name_with_ext = base_name + jpg_extension
            new_jpg = waste_dir + jpg_base_name_with_ext
            print("%s: %s = %s => %s" % (path, base_name, jpg, waste_dir))
            if os.path.exists(new_jpg):
                os.remove(jpg)
            else:
                shutil.move(jpg, new_jpg)
