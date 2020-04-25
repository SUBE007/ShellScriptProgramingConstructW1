echo "temprature conversion:"

echo "1.farenht to celcius"
echo "2.celcius to farenht"
 read num
case "$num" in
1)  FrontToCelcius ;;

2)  CelciusToFront ;;
*) echo "I think you r waisting My(System's) time!!"
esac
#----------
function FrontToCelcius()
{
   echo -e "Enter value in Farenhiet:\c"
  read fr
   cels=$(awk -v a=$fr 'BEGIN{printf("%.2f\n",( (a-32)*(5/9) ) )}')
     echo "$cels oCelcius"
}
#-------------
function CelciusToFront()
{
   echo -e "Enter value in Celcius:\c"
  read cr
   frnt=$(awk -v b=$cr 'BEGIN{printf("%.2f\n",(b*(5/9))+32 )}')
     echo "$frnt oFarenheit"
}
#----------------
