HOUR=$(date +%H)
REPORTS=(~/Reports/2022-*)

if [ -d ~/Reports ]
then
        echo "Dir already exists, checking for files"
        if [ ${#REPORTS[@]} -eq 12 ]
        then
                echo "Files r also there"
        else
                touch ~/Reports/2022-{01..12}.xls
                echo "Files created while dir was there"
        fi
else
        mkdir ~/Reports
        echo "Directory created"
        touch ~/Reports/2022-{01..12}.xls
        echo "Files created"
fi


if [[ $HOUR -ge 10#00 && $HOUR -le 10#05 ]]
then
        if [ -d ~/Backup-reports ]
        then
                echo "Backup dir exists. Checking for files ..."
                if [ -f ~/Backup-reports/Backedup-reports-$(date +%Y-%m-%d).tar ]
                then
                        echo "U r backed up for the day"
                else
                        tar -cf ~/Backup-reports/Backedup-reports-$(date +%Y-%m-%d).tar ~/Reports
                fi
        else
                mkdir ~/Backup-reports
                tar -cf ~/Backup-reports/Backedup-reports-$(date +%Y-%m-%d).tar ~/Reports
        fi
else
        echo "Still not the time for a backup"
fi
