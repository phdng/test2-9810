chmod +x build.sh
# Kernel Builder Script (With Error Filtering) By @xxrishikcooTR
# Device Selection
echo "For What Device Would Like To Build?
1.starlte
2.star2lte
3.crownlte
4.All"
read devicesel
# Main Script
if [ $devicesel = 1 ]
then
rm -fr out 2> /dev/null
clear
echo Step - 1/3 - Running ./build.sh exynos9810-starlte_defconfig
./build.sh exynos9810-starlte_defconfig 1> build.sh_exynos9810-starlte_defconfig_output_noerrorlog.txt 2> build.sh_exynos9810-starlte_defconfig_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-starlte_defconfig_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror=y
  else
  read contonerror
  fi
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 2/3 - Running ./build.sh
./build.sh 1> build.sh_exynos9810-starlte_output_noerrorlog.txt 2> build.sh_exynos9810-starlte_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-starlte_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror=y
  else
  read contonerror
  fi
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi 
echo Done
sleep 1
clear
echo Step - 3/3 - Copying out/arch/arm64/boot/dtb.img And Image To AK3-Setup/Dtb And Kernel
cp -fr out/arch/arm64/boot/dtb.img ~/AK3-Setup/Dtb/starlte/
cp -fr out/arch/arm64/boot/Image ~/AK3-Setup/Kernel/starlte/
echo Completed
sleep 1
elif [ $devicesel = 2 ]
then
rm -fr out 2> /dev/null
clear
echo Step - 1/3 - Running ./build.sh exynos9810-star2lte_defconfig
./build.sh exynos9810-star2lte_defconfig 1> build.sh_exynos9810-star2lte_defconfig_output_noerrorlog.txt 2> build.sh_exynos9810-star2lte_defconfig_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-star2lte_defconfig_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
 read contonerror 
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 2/3 - Running ./build.sh
./build.sh 1> build.sh_exynos9810-star2lte_output_noerrorlog.txt 2> build.sh_exynos9810-star2lte_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-star2lte_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror=y
  else
  read contonerror
  fi
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 3/3 - Copying out/arch/arm64/boot/dtb.img And Image To AK3-Setup/Dtb And Kernel
cp -fr out/arch/arm64/boot/dtb.img ~/AK3-Setup/Dtb/star2lte/
cp -fr out/arch/arm64/boot/Image ~/AK3-Setup/Kernel/star2lte/
echo Completed
sleep 1
elif [ $devicesel = 3 ]
then
rm -fr out 2> /dev/null
clear
echo Step - 1/3 - Running ./build.sh exynos9810-crownlte_defconfig
./build.sh exynos9810-crownlte_defconfig 1> build.sh_exynos9810-crownlte_defconfig_output_noerrorlog.txt 2> build.sh_exynos9810-crownlte_defconfig_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-crownlte_defconfig_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror=y
  else
  read contonerror
  fi
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 2/3 - Running ./build.sh
./build.sh 1> build.sh_exynos9810-crownlte_output_noerrorlog.txt 2> build.sh_exynos9810-crownlte_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-crownlte_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror=y
  else
  read contonerror
  fi
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 3/3 - Copying out/arch/arm64/boot/dtb.img And Image To AK3-Setup/Dtb And Kernel
cp -fr out/arch/arm64/boot/dtb.img ~/AK3-Setup/Dtb/crownlte/
cp -fr out/arch/arm64/boot/Image ~/AK3-Setup/Kernel/crownlte/
echo Completed
sleep 1
elif [ $devicesel = 4 ]
then
echo Compiling For star2lte First
rm -fr out 2> /dev/null
clear
echo Step - 1/3 - Running ./build.sh exynos9810-star2lte_defconfig
./build.sh exynos9810-star2lte_defconfig 1> build.sh_exynos9810-star2lte_defconfig_output_noerrorlog.txt 2> build.sh_exynos9810-star2lte_defconfig_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-star2lte_defconfig_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
 read contonerror 
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 2/3 - Running ./build.sh
./build.sh 1> build.sh_exynos9810-star2lte_output_noerrorlog.txt 2> build.sh_exynos9810-star2lte_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-star2lte_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror=y
  else
  read contonerror
  fi
  if [ $contonerror = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 3/3 - Copying out/arch/arm64/boot/dtb.img And Image To AK3-Setup/Dtb And Kernel
cp -fr out/arch/arm64/boot/dtb.img ~/AK3-Setup/Dtb/star2lte/
cp -fr out/arch/arm64/boot/Image ~/AK3-Setup/Kernel/star2lte/
echo Completed
sleep 1
clear
echo Compiling For starlte Now
echo Step - 1/3 - Running ./build.sh exynos9810-starlte_defconfig
./build.sh exynos9810-starlte_defconfig 1> build.sh_exynos9810-starlte_defconfig_output_noerrorlog.txt 2> build.sh_exynos9810-starlte_defconfig_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-starlte_defconfig_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror0=y
  else
  read contonerror0
  fi
  if [ $contonerror0 = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 2/3 - Running ./build.sh
./build.sh 1> build.sh_exynos9810-starlte_output_noerrorlog.txt 2> build.sh_exynos9810-starlte_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-starlte_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror1=y
  else
  read contonerror1
  fi
  if [ $contonerror1 = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 3/3 - Copying out/arch/arm64/boot/dtb.img And Image To AK3-Setup/Dtb And Kernel
cp -fr out/arch/arm64/boot/dtb.img ~/AK3-Setup/Dtb/starlte/
cp -fr out/arch/arm64/boot/Image ~/AK3-Setup/Kernel/starlte/
echo Completed
sleep 1
clear
echo Compiling For crownlte Now
rm -fr out 2> /dev/null
clear
echo Step - 1/3 - Running ./build.sh exynos9810-crownlte_defconfig
./build.sh exynos9810-crownlte_defconfig 1> build.sh_exynos9810-crownlte_defconfig_output_noerrorlog.txt 2> build.sh_exynos9810-crownlte_defconfig_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-crownlte_defconfig_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror2=y
  else
  read contonerror2
  fi
  if [ $contonerror2 = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi 
echo Done
sleep 1
clear
echo Step - 2/3 - Running ./build.sh
./build.sh 1> build.sh_exynos9810-crownlte_output_noerrorlog.txt 2> build.sh_exynos9810-crownlte_output_errorlog.txt
 if [ $(cat build.sh_exynos9810-crownlte_output_errorlog.txt) -ne  ] 2> /dev/null
 then
 echo No Errors Found
 else
 echo Errors Encountered
 echo Do You Want To Proceed ? - y/n
  if [ $skipcontonerror = yes ]
  then
  echo Ignoring Errors
  contonerror3=y
  else
  read contonerror3
  fi
  if [ $contonerror3 = y ] 2> /dev/null
  then
  echo Continuing
  else
  echo Aborting
  exit
  fi
 fi
echo Done
sleep 1
clear
echo Step - 3/3 - Copying out/arch/arm64/boot/dtb.img And Image To AK3-Setup/Dtb And Kernel
cp -fr out/arch/arm64/boot/dtb.img ~/AK3-Setup/Dtb/crownlte/
cp -fr out/arch/arm64/boot/Image ~/AK3-Setup/Kernel/crownlte/
echo Completed
sleep 1
echo DONE - 3/3 Devices Done
fi