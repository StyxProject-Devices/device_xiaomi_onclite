# Delete data/system/storage.xml
rm -rf /data/system/storage.xml
touch /data/system/storage.xml
chattr +i /data/system/storage.xml
