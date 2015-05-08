#!/bin/bash
# Sync directories to external data drive.

# Sync Directories
rsync -a -P --delete /home/max.schaefer/Backups /run/media/max.schaefer/data
rsync -a -P --delete /home/max.schaefer/Documents /run/media/max.schaefer/data
rsync -a -P --delete /home/max.schaefer/Projects /run/media/max.schaefer/data
rsync -a -P --delete /home/max.schaefer/Software /run/media/max.schaefer/data
