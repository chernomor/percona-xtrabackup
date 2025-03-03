#
# Bug 1590351: xtrabackup --backup crashes with empty keyring file
#

. inc/keyring_file.sh

start_server

touch $mysql_datadir/keyring

xtrabackup --backup --keyring-file-data=$mysql_datadir/keyring --target-dir=$topdir/backup
