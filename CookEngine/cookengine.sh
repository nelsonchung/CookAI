####Parameter###
USER_FILE="../UI/Web/userresult.txt"
####Function####

function getvaluefromuserresult(){
    
    result=`cat $USER_FILE | grep "$1" | awk -F"_" '{print $2}'`
    echo $result
    #return $result
}

function updatedatafromuserresult(){
    #=$(getvaluefromuserresult "")
    #echo " is "$
    pork=$(getvaluefromuserresult "pork")
    echo "pork is "$pork

    fish=$(getvaluefromuserresult "fish")
    echo "fish is "$fish
    chicken=$(getvaluefromuserresult "chicken")
    echo "chicken is "$chicken
    duck=$(getvaluefromuserresult "duck")
    echo "duck is "$duck
    cabbage=$(getvaluefromuserresult "cabbage")
    echo "cabbage is "$cabbage
    spinach=$(getvaluefromuserresult "spinach")
    echo "spinach is "$spinach
    chingchiang=$(getvaluefromuserresult "chingchiang")
    echo "chingchiang is "$ching_chiang
    celery=$(getvaluefromuserresult "celery")
    echo "celery is "$celery
    consin=$(getvaluefromuserresult "consin")
    echo "con_sin is "$con_sin
    brassicarapapekinensis=$(getvaluefromuserresult "brassicarapapekinensis")
    echo "brassicarapapekinensis is "$brassica_rapa_pekinensis
    sweetpotatoleaves=$(getvaluefromuserresult "sweetpotatoleaves")
    echo "sweet_potato_leaves is "$sweet_potato_leaves
    loofah=$(getvaluefromuserresult "loofah")
    echo "loofah is "$loofah
    benincasapruriens=$(getvaluefromuserresult "benincasapruriens")
    echo "benincasapruriens is "$benincasa_pruriens
    bitter=$(getvaluefromuserresult "bitter")
    echo "bitter is "$bitter
    corn=$(getvaluefromuserresult "corn")
    echo "corn is "$corn
    okra=$(getvaluefromuserresult "okra")
    echo "okra is "$okra
    youngcorn=$(getvaluefromuserresult "youngcorn")
    echo "youngcorn is "$youngcorn
    radish=$(getvaluefromuserresult "radish")
    echo "radish is "$radish
    potato=$(getvaluefromuserresult "potato")
    echo "potato is "$potato
    carrot=$(getvaluefromuserresult "carrot")
    echo "carrot is "$carrot
    bamboo=$(getvaluefromuserresult "bamboo")
    echo "bamboo is "$bamboo
    cauliflower=$(getvaluefromuserresult "cauliflower")
    echo "cauliflower is "$cauliflower
}

source priority_setting_decayrate.sh
source priority_setting_favorite.sh
source priority_setting_repeatchoose.sh

#Initial
pork=0
fish=0
chicken=0
duck=0
cabbage=0
spinach=0
ching_chiang=0
celery=0
con_sin=0
brassica_rapa_pekinensis=0
sweet_potato_leaves=0
loofah=0
benincasa_pruriens=0
bitter=0
corn=0
okra=0
young_corn=0
radish=0
potato=0
carrot=0
bamboo=0
cauliflower=0

updatedatafromuserresult

