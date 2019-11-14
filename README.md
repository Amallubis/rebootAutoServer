# rebootAutoServerr
Reboot Automatis Server
Cara mengaplikasikan ke server:
1.clone script rebootAutoServer.sh
2.Beri permision pada script : chmod +x rebootAutoServer.sh
3.Buat cron perintah eksekusi secara otomatis seperti ini :
# setiap setengah jam sekali
echo "*/30 * * * * root /root/rebootAutoServer.sh" > /etc/cron.d/rebootauto
# setiap 1 jam sekali
echo "0 * * * *  root /root/rebootAutoServer.sh" > /etc/cron.d/rebooauto
# setiap 12 jam sekali
echo "0 */12 * * * root /root/rebootAutoServer.sh" > /etc/cron.d/rebootauto
# setiap sehari sekali
echo "0 0 * * * root /root/rebootAutoServer.sh" > /etc/cron.d/rebootauto
# setiap sebulan sekali
echo "0 0 1 * * root /root/rebootAutoServer.sh" > /etc/cron.d/rebootauto

Menghentikan reboot automatis:
rm -f /etc/cron.d/rebootauto

Melihat log reboot
cat /root/log-reboot.txt
