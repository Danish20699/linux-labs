
#!/bin/bash
echo "starting portfolio backup..."
mkdir -p ~/backups
cp /var/www/html/*.php ~/backups
echo "backups complete! Files saved to ~/backups/"
ls -la ~/backups

