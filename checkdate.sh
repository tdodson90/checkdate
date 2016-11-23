#!/bin/bash
rm -rf diagnosticfiles/
if [ $# -eq 0 ]; then 

 read coroner
else
 coroner="$1"
fi

 mkdir diagnosticfiles
 cp "$coroner" diagnosticfiles
 cd diagnosticfiles
 Unmunge -x "$coroner"



#220 code
 if [ -f pref1.txt ]; then
 	echo 
   echo "220 Date Extraction"
   echo

   if [ -f sys.log.5.gz ]; then
   	#sys.log.5
   	gzip -d sys.log.5.gz
   	echo "*******************************"
		echo Sys.log.5 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.5)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.5 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.4.gz ]; then
   	#sys.log.4
   	gzip -d sys.log.4.gz
   	echo "*******************************"
		echo Sys.log.4 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.4)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.4 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.3.gz ]; then
   	#sys.log.3
   	gzip -d sys.log.3.gz
   	echo "*******************************"
		echo Sys.log.3 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.3)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.3 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.2.gz ]; then
   	#sys.log.2
   	gzip -d sys.log.2.gz
   	echo "*******************************"
		echo Sys.log.2 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.2)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.2 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.1.gz ]; then
   	#sys.log.2
   	gzip -d sys.log.1.gz
   	echo "*******************************"
		echo Sys.log.1 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.1)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.1 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log ]; then
   	#sys.log
   	echo "*******************************"
		echo Sys.log Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

#lastlog date extraction

	if [ -f lastlog.tgz ]; then
		mkdir lastlog
		cp "lastlog.tgz" lastlog
		cd lastlog
		tar -zxf lastlog.tgz

   echo
   echo "************************************************************************"
   echo "************************************************************************"
   echo "Last Log - 220 Date Extraction"
   echo

   if [ -f sys.log.5.gz ]; then
   	#sys.log.5
   	gzip -d sys.log.5.gz
   	echo "*******************************"
		echo Last Log - Sys.log.5 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.5)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.5 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.4.gz ]; then
   	#sys.log.4
   	gzip -d sys.log.4.gz
   	echo "*******************************"
		echo Last Log - Sys.log.4 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.4)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.4 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.3.gz ]; then
   	#sys.log.3
   	gzip -d sys.log.3.gz
   	echo "*******************************"
		echo Last Log - Sys.log.3 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.3)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.3 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.2.gz ]; then
   	#sys.log.2
   	gzip -d sys.log.2.gz
   	echo "*******************************"
		echo Last Log - Sys.log.2 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.2)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.2 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log.1.gz ]; then
   	#sys.log.2
   	gzip -d sys.log.1.gz
   	echo "*******************************"
		echo Last Log - Sys.log.1 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.1)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.1 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

   if [ -f sys.log ]; then
   	#sys.log
   	echo "*******************************"
		echo Last Log - Sys.log Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
		echo "************************************************************************"
		echo "************************************************************************"
		echo
	fi


	fi



#cleanup
cd ../..
rm -rf diagnosticfiles/


fi



#icon code
if [ -f sysinfo.txt ]; then
	echo
	echo "Icon Date Extraction"
	echo
		tar -zxf var.tgz #extract the var folder
		cd var
		cd log

		if [ -f sys.log.boot ]; then
		#sys.log.boot
		echo "**********************"
		echo Sys.log.boot Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.boot)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.boot | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	fi

		if [ -f sys.log.0 ]; then
		#sys.log.0
		echo "**********************"
		echo Sys.log.0 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.0)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.0 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo

	fi
		
		if [ -f sys.log.1 ]; then
		#sys.log.1
		echo "**********************"
		echo Sys.log.1 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.1)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.1 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo

	fi

		if [ -f sys.log.2 ]; then
		#sys.log.2
		echo "**********************"
		echo Sys.log.2 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.2)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.2 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo

	fi

		if [ -f sys.log.3 ]; then
		#sys.log.3
		echo "**********************"
		echo Sys.log.3 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.3)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.3 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo

	fi


		if [ -f sys.log.4 ]; then
		#sys.log.4
		echo "**********************"
		echo Sys.log.2 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.4)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.4 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo

	fi

		if [ -f sys.log.5 ]; then
		#sys.log.5
		echo "**********************"
		echo Sys.log.2 Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log.5)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log.5 | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo

	fi

		#sys.log
		echo "**********************"
		echo Sys.log Date Range
		echo

		Startdate=$( awk '/ .*:/ { print $1; print $2; exit; }' sys.log)
  		echo $Startdate


  		Enddate=$(tail -1 sys.log | awk '/ .*:/ { print $1; print $2; exit; }')
  		echo $Enddate
		echo
	pwd
	mkdir lastlog
	cp "lastlog" lastlog
	cd lastlog



#cleanup
cd ../../../
rm -rf diagnosticfiles/

fi