# bulk install to home dir (default odbcinst.ini path)
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash
if [[ `ls -l | grep amazonredshift` ]] && [[ `ls -l | grep bigquery ` ]] && [[ `ls -l | grep cassandra ` ]] && [[ `ls -l | grep couchbase ` ]] && [[ `ls -l | grep drill ` ]] && [[ `ls -l | grep dynamodb ` ]] && [[ `ls -l | grep hbase ` ]] && [[ `ls -l | grep hive ` ]] && [[ `ls -l | grep impala ` ]] && [[ `ls -l | grep mongodb ` ]] && [[ `ls -l | grep oracle ` ]] && [[ `ls -l | grep phoenix ` ]] && [[ `ls -l | grep postgresql ` ]] && [[ `ls -l | grep presto ` ]] && [[ `ls -l | grep salesforce ` ]] && [[ `ls -l | grep spark ` ]] && [[ `ls -l | grep sqlserver ` ]]; then echo “All available drivers installed.”; fi
odbcinstini_path =$(odbc_config —odbcinstini)


#bulk uninstall
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall

#bulk install to home (custom odbcinst.ini path)
touch ~/odbcinst.ini
odbcinstini_path =$(odbc_config -—odbcinstini)
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --odbcinst ~/odbcinst.ini
if [[ `ls -l | grep amazonredshift` ]]; then echo “amazonredshift installed”; fi
if [[`~/odbcinst.ini | grep libamazonredshiftodbc `]]; then echo “amazonredshift driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep bigquery ` ]]; then echo “bigquery installed”; fi
if [[`~/odbcinst.ini | grep libgooglebigqueryodbc `]]; then echo “bigquery driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep cassandra ` ]]; then echo “cassandra installed”; fi
if [[`~/odbcinst.ini | grep libcassandraodbc `]]; then echo “cassandra driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep couchbase ` ]]; then echo “couchbase installed”; fi
if [[`~/odbcinst.ini | grep libcouchbaseodbc `]]; then echo “couchbase driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep drill ` ]]; then echo “drill installed”; fi
if [[`~/odbcinst.ini | grep libdrillodbc `]]; then echo “drill driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep dynamodb ` ]]; then echo “dynamodb installed”; fi
if [[`~/odbcinst.ini | grep libdynamodbodbc `]]; then echo “dynamodb driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep hbase ` ]]; then echo “hbase installed”; fi
if [[`~/odbcinst.ini | grep libhbaseodbc `]]; then echo “hbase driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep hive ` ]]; then echo “hive installed”; fi
if [[`~/odbcinst.ini | grep libhiveodbc `]]; then echo “hive driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep impala ` ]]; then echo “impala installed”; fi
if [[`~/odbcinst.ini | grep libimpalaodbc `]]; then echo “impala driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep mongodb ` ]]; then echo “mongodb installed”; fi
if [[`~/odbcinst.ini | grep libmongodbodbc `]]; then echo “mongodb driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep oracle ` ]]; then echo “oracle installed”; fi
if [[`~/odbcinst.ini | grep liboracleodbc `]]; then echo “oracle driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep phoenix ` ]]; then echo “phoenix installed”; fi
if [[`~/odbcinst.ini | grep libphoenixodb `]]; then echo “phoenix driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep postgresql ` ]]; then echo “postgresql installed”; fi
if [[`~/odbcinst.ini | grep libpostgresqlodbc `]]; then echo “postgresql driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep presto ` ]]; then echo “presto installed”; fi
if [[`~/odbcinst.ini | grep libprestoodbc `]]; then echo “presto driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep salesforce ` ]]; then echo “salesforce installed”; fi
if [[`~/odbcinst.ini | grep libsalesforceodbc `]]; then echo “salesforce driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep spark ` ]]; then echo “spark installed”; fi
if [[`~/odbcinst.ini | grep libsparkodbc `]]; then echo “spark driver is in odbcinst.ini file”; fi
if [[ `ls -l | grep sqlserver ` ]]; then echo “sqlserver installed”; fi
if [[`~/odbcinst.ini | grep libsqlserverodbc `]]; then echo “sqlserver driver is in odbcinst.ini file”; fi

#individual uninstall w/ —-verbose
echo “~~ Individual uninstall w/ —-verbose ~~”
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --amazonredshift
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --bigquery
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --cassandra
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --couchbase
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --drill
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --dynamodb
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --hbase
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --hive
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --impala
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --mongodb
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --oracle
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --phoenix
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --postgresql
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --presto
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --salesforce
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --spark
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --uninstall --verbose --sqlserver

#individual install
wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash
odbcinstini_path =$(odbc_config —odbcinstini)

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --amazonredshift
if [[ `ls -l | grep amazonredshift` ]]; then echo “amazonredshift installed”; fi
if [[`odbcinstini_path | grep libamazonredshiftodbc `]]; then echo “amazonredshift driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --bigquery
if [[ `ls -l | grep bigquery ` ]]; then echo “bigquery installed”; fi
if [[`odbcinstini_path | grep libgooglebigqueryodbc `]]; then echo “bigquery driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --cassandra
if [[ `ls -l | grep cassandra ` ]]; then echo “cassandra installed”; fi
if [[`odbcinstini_path | grep libcassandraodbc `]]; then echo “cassandra driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --couchbase
if [[ `ls -l | grep couchbase ` ]]; then echo “couchbase installed”; fi
if [[`odbcinstini_path | grep libcouchbaseodbc `]]; then echo “couchbase driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --drill
if [[ `ls -l | grep drill ` ]]; then echo “drill installed”; fi
if [[`odbcinstini_path | grep libdrillodbc `]]; then echo “drill driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --dynamodb
if [[ `ls -l | grep dynamodb ` ]]; then echo “dynamodb installed”; fi
if [[`odbcinstini_path | grep libdynamodbodbc `]]; then echo “dynamodb driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --hbase
if [[ `ls -l | grep hbase ` ]]; then echo “hbase installed”; fi
if [[`odbcinstini_path | grep libhbaseodbc `]]; then echo “hbase driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --hive
if [[ `ls -l | grep hive ` ]]; then echo “hive installed”; fi
if [[`odbcinstini_path | grep libhiveodbc `]]; then echo “hive driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --impala
if [[ `ls -l | grep impala ` ]]; then echo “impala installed”; fi
if [[`odbcinstini_path | grep libimpalaodbc `]]; then echo “impala driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --mongodb
if [[ `ls -l | grep mongodb ` ]]; then echo “mongodb installed”; fi
if [[`odbcinstini_path | grep libmongodbodbc `]]; then echo “mongodb driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --oracle
if [[ `ls -l | grep oracle ` ]]; then echo “oracle installed”; fi
if [[`odbcinstini_path | grep liboracleodbc `]]; then echo “oracle driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --phoenix
if [[ `ls -l | grep phoenix ` ]]; then echo “phoenix installed”; fi
if [[`odbcinstini_path | grep libphoenixodb `]]; then echo “phoenix driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --postgresql
if [[ `ls -l | grep postgresql ` ]]; then echo “postgresql installed”; fi
if [[`odbcinstini_path | grep libpostgresqlodbc `]]; then echo “postgresql driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --presto
if [[ `ls -l | grep presto ` ]]; then echo “presto installed”; fi
if [[`odbcinstini_path | grep libprestoodbc `]]; then echo “presto driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --salesforce
if [[ `ls -l | grep salesforce ` ]]; then echo “salesforce installed”; fi
if [[`odbcinstini_path | grep libsalesforceodbc `]]; then echo “salesforce driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --spark
if [[ `ls -l | grep spark ` ]]; then echo “spark installed”; fi
if [[`odbcinstini_path | grep libsparkodbc `]]; then echo “spark driver is in odbcinst.ini file”; fi

wget -O - https://s3-us-west-2.amazonaws.com/rstudio-odbc/7C152C12/odbc-install.sh | bash -s -- --sqlserver
if [[ `ls -l | grep sqlserver ` ]]; then echo “sqlserver installed”; fi
if [[`odbcinstini_path | grep libsqlserverodbc `]]; then echo “sqlserver driver is in odbcinst.ini file”; fi