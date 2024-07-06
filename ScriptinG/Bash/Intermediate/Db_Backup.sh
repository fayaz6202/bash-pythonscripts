#!/bin/bash

# Backup directory
BACKUP_DIR="/path/to/backup/directory"

# MySQL/MariaDB credentials
DB_USER="your_db_user"
DB_PASS="your_db_password"

# Backup timestamp
TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")

# Backup files and compress
tar -czf $BACKUP_DIR/backup_files_$TIMESTAMP.tar.gz /path/to/important/files

# Backup MySQL/MariaDB databases
mysqldump -u $DB_USER -p$DB_PASS --all-databases | gzip > $BACKUP_DIR/backup_db_$TIMESTAMP.sql.gz

# Clean up old backups (keep last 7 days)
find $BACKUP_DIR -type f -name "backup_*" -mtime +7 -delete

echo "Daily backup completed on $TIMESTAMP"

