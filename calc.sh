#!/bin/bash
addition(){
read -p "entrer premier valeur : " a
read -p "entre le deuxieme nombre :" b
let add="$a + $b"
echo "addition est = $add"
}
soustraction() {
read -p "entrer premier valeur:" c
read -p "entrer deuxieme valeur:" d
let sous="$c - $d"
echo "soustraction est = $sous"
}
multiplication() {
read -p "entrer premier valeur:" e
read -p "entrer deuxieme valeur" f
let mult="$e * $f"
echo " multiplication est = $mult"
}
division() {
read -p "entrer premier valeur:" k
read -p "entrer deuxieme valeur:" l
let division="$k / $l"
echo " division est = $division"
}
cosinus(){
read -p "entrer premier valeur" g
 echo "c($g)" |bc -l
}
 lan(){
read -p "entrer premier valeur" g
 echo "ln($g)" |bc -l
}
tan(){
read -p "entrer premier valeur" z
 echo "tan($z)" |bc -l
}

sinus(){
read -p "entrer le premier valeur" h
echo "s($h)" |bc -l
}
sqrt(){
read -p "entrer le premier valeur" i
echo "sqrt($i)" |bc -l
}
convert(){
unset convert  
echo  "Entrez la valeur" 
read -r i  
for (( cpt=8 ; $cpt > 1  ; cpt-- )); do  
        let convert[$cpt]="$i & 1"  
        let i="i >>= 1"    
done  
echo "${convert[@]}"
}
factorielle(){
if [ "$#" -eq 0 ]; then 
    echo "enter nombre " 
    read -r val 
else 
    val=$1 
fi 
    if [ "$val" -lt 0 ]; then 
    let val=-1*$val 
    fi 
 
    resultat=1 
    val2="$val"
 
while [ "$val" -ne 0 ]; do 
    printf "$val " 
    let resultat=$resultat*$val 
    let val=$val-1 
    if [ "$val" -ne 0 ]; then 
        printf "* " 
   fi 
done 
 
echo "= $resultat"
}
while ((5!=4))
do 
read -p "entrer le choix " s
case $s in
                        "cos")
cosinus
;;
                        "sin") 
sinus
;;
                        "sqrt")
sqrt
;; 
             "+")

addition
   ;;
             "-")
soustraction
   ;;
              "*")
multiplication
   ;;

             "/")
division
;;
             "tan")
tan
;;
             "convert")
convert
;;
               "fact")
factorielle
;;
                 "ln")
lan
;;
*)
echo " erreur"
esac
done

