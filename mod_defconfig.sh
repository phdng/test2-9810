if [ $1 = ] 2> /dev/null
then
echo Enter SOME_VALUE=VALUE To Mod 
else
echo $1 >> arch/arm64/configs/cuttlefish_defconfig
echo $1 >> arch/arm64/configs/exynos9810-starlte_defconfig
echo $1 >> arch/arm64/configs/exynos9810-star2lte_defconfig
echo $1 >> arch/arm64/configs/exynos9810-crownlte_defconfig
fi