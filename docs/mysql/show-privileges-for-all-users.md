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

The `mysqldumper` needs only read-only permissions on the databases.
