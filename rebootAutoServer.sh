#!/bin/bash - 
#===============================================================================
#
#          FILE: rebootAutoServer.sh
# 
#         USAGE: ./rebootAutoServer.sh 
# 
#   DESCRIPTION: Reboot Server terjadwal
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Amal lubis
#  ORGANIZATION: 
#       CREATED: 14/11/19 11:20
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
-
tanggal=$(date +"%m-%d-%Y")
waktu=$(date +"%T")
echo "Server telah berhasil direboot pada tanggal $tanggal pukul $waktu." >> /root/log-reboot.txt
/sbin/shutdown -r now
