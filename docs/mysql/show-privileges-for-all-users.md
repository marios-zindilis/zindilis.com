<!-- -
Title: Show privileges for all users in MySQL
Description: Bash script for displaying privileges for all users in MySQL
First Published: 2015-07-25
- -->

Show privileges for all users in MySQL
======================================

Example script:

        mysql   --silent \
                --skip-column-names \
                --user mysqldumper \
                --execute 'SELECT User, Host from mysql.user' | \
        while read User Host; do 
            mysql --user mysqldumper --execute "SHOW GRANTS FOR '$User'@'$Host'"; 
            echo "==========================="; 
        done

The `mysqldumper` user only requires read permissions on the databases.
