####Parameter###
USER_FILE="/home/ubuntu/workspace/UI/Web/userresult.txt"
CookEngine="/home/ubuntu/workspace/CookEngine/"
keepgoing_meat=1
meat_number=1
keepgoing_vegetable=1
vegetable_number=2
MEAT_TMP_FILE="find_maximum_in_meat.txt"
VEGETABLE_TMP_FILE="find_maximum_in_vegetable.txt"

####Function####
function getvaluefromuserresult(){
    
    result=`cat $USER_FILE | grep "$1" | head -1 | awk -F"_" '{print $2}'`
    echo $result
    #return $result
}

function updatedatafromuserresult(){
    #=$(getvaluefromuserresult "")
    #echo " is "$
    pork=$(getvaluefromuserresult "pork")
    fish=$(getvaluefromuserresult "fish")
    beaf=$(getvaluefromuserresult "beaf")
    chicken=$(getvaluefromuserresult "chicken")
    duck=$(getvaluefromuserresult "duck")
    cabbage=$(getvaluefromuserresult "cabbage")
    spinach=$(getvaluefromuserresult "spinach")
    chingchiang=$(getvaluefromuserresult "chingchiang")
    celery=$(getvaluefromuserresult "celery")
    consin=$(getvaluefromuserresult "consin")
    brassicarapapekinensis=$(getvaluefromuserresult "brassicarapapekinensis")
    sweetpotatoleaves=$(getvaluefromuserresult "sweetpotatoleaves")
    loofah=$(getvaluefromuserresult "loofah")
    benincasapruriens=$(getvaluefromuserresult "benincasapruriens")
    bitter=$(getvaluefromuserresult "bitter")
    corn=$(getvaluefromuserresult "corn")
    okra=$(getvaluefromuserresult "okra")
    youngcorn=$(getvaluefromuserresult "youngcorn")
    radish=$(getvaluefromuserresult "radish")
    potato=$(getvaluefromuserresult "potato")
    carrot=$(getvaluefromuserresult "carrot")
    bambooshoot=$(getvaluefromuserresult "bambooshoot")
    cauliflower=$(getvaluefromuserresult "cauliflower")
    #showinfo
}

function genehttplink(){
    echo "<a href=\"https://icook.tw/recipes/search?q=$1\">$1</a>"
}
REPEATCHOOSE_ADJUST_NUMBER=0.5
function increaserepeatchoose(){
    res=$(echo "$1 + $REPEATCHOOSE_ADJUST_NUMBER" | bc)
    echo $res
}
function find_maximum_in_meat(){
    echo "$pork_weight" > $MEAT_TMP_FILE
    echo "$fish_weight" >> $MEAT_TMP_FILE
    echo "$beaf_weight" >> $MEAT_TMP_FILE
    echo "$chicken_weight" >> $MEAT_TMP_FILE
    echo "$duck_weight" >> $MEAT_TMP_FILE
    maximum=`cat $MEAT_TMP_FILE | sort -nr | head -1`
    
    case $maximum in
    "$pork_weight")
        pork=$(echo "$pork - 1" | bc)
        pork_repeatchoose=`increaserepeatchoose $pork_repeatchoose`
        #echo "煮豬肉"
        genehttplink "豬肉"
    ;;
    "$fish_weight")
        fish=$(echo "$fish - 1" | bc)
        fish_repeatchoose=`increaserepeatchoose $fish_repeatchoose`
        #echo "煮魚肉"
        genehttplink "魚肉"
    ;;
    "$beaf_weight")
        beaf=$(echo "$beaf - 1" | bc)
        beaf_repeatchoose=`increaserepeatchoose $beaf_repeatchoose`
        #echo "煮牛肉"
        genehttplink "牛肉"
    ;;
    "$chicken_weight")
        chicken=$(echo "$chicken - 1" | bc)
        chicken_repeatchoose=`increaserepeatchoose $chicken_repeatchoose`
        #echo "煮雞肉"
        genehttplink "雞肉"
    ;;
    "$duck_weight")
        duck=$(echo "$duck - 1" | bc)
        duck_repeatchoose=`increaserepeatchoose $duck_repeatchoose`
        #echo "煮鴨肉"
        genehttplink "鴨肉"
    ;;
    esac
}

function cookmeat(){
    find_maximum_in_meat
    calcurateweight
}

function find_maximum_in_vegetable(){
    #echo "$LINENO"
    echo "$cabbage_weight" > $VEGETABLE_TMP_FILE
    echo "$spinach_weight" >> $VEGETABLE_TMP_FILE
    echo "$chingchiang_weight" >> $VEGETABLE_TMP_FILE
    echo "$celery_weight" >> $VEGETABLE_TMP_FILE
    echo "$consin_weight" >> $VEGETABLE_TMP_FILE
    echo "$brassicarapapekinensis_weight" >> $VEGETABLE_TMP_FILE
    echo "$sweetpotatoleaves_weight" >> $VEGETABLE_TMP_FILE
    echo "$loofah_weight" >> $VEGETABLE_TMP_FILE
    echo "$benincasapruriens_weight" >> $VEGETABLE_TMP_FILE
    echo "$bitter_weight" >> $VEGETABLE_TMP_FILE
    echo "$corn_weight" >> $VEGETABLE_TMP_FILE
    echo "$okra_weight" >> $VEGETABLE_TMP_FILE
    echo "$youngcorn_weight" >> $VEGETABLE_TMP_FILE
    echo "$radish_weight" >> $VEGETABLE_TMP_FILE
    echo "$potato_weight" >> $VEGETABLE_TMP_FILE
    echo "$carrot_weight" >> $VEGETABLE_TMP_FILE
    echo "$bambooshoot_weight" >> $VEGETABLE_TMP_FILE
    echo "$cauliflower_weight" >> $VEGETABLE_TMP_FILE
    maximum=`cat $VEGETABLE_TMP_FILE | sort -nr | head -1`
    
    case $maximum in
    "$cabbage_weight")
        cabbage=$(echo "$cabbage - 1" | bc)
        cabbage_repeatchoose=`increaserepeatchoose $cabbage_repeatchoose`
        #echo "煮高麗菜"
        genehttplink "高麗菜"
        
    ;;
    "$spinach_weight")
        spinach=$(echo "$spinach - 1" | bc)
        spinach_repeatchoose=`increaserepeatchoose $spinach_repeatchoose`
        #echo "煮菠菜"
        genehttplink "菠菜"
    ;;
    "$chingchiang_weight")
        chingchiang=$(echo "$chingchiang - 1" | bc)
        chingchiang_repeatchoose=`increaserepeatchoose $chingchiang_repeatchoose`
        #echo "煮青江菜"
        genehttplink "青江菜"
    ;;
    "$celery_weight")
        celery=$(echo "$celery - 1" | bc)
        celery_repeatchoose=`increaserepeatchoose $celery_repeatchoose`
        #echo "煮芹菜"
        genehttplink "芹菜"
    ;;
    "$consin_weight")
        consin=$(echo "$consin - 1" | bc)
        consin_repeatchoose=`increaserepeatchoose $consin_repeatchoose`
        #echo "煮空心菜"
        genehttplink "空心菜"
    ;;
    "$brassicarapapekinensis_weight")
        brassicarapapekinensis=$(echo "$brassicarapapekinensis - 1" | bc)
        brassicarapapekinensis_repeatchoose=`increaserepeatchoose $brassicarapapekinensis_repeatchoose`
        #echo "煮大白菜"
        genehttplink "大白菜"
    ;;
    "$sweetpotatoleaves_weight")
        sweetpotatoleaves=$(echo "$sweetpotatoleaves - 1" | bc)
        sweetpotatoleaves_repeatchoose=`increaserepeatchoose $sweetpotatoleaves_repeatchoose`
        #echo "煮地瓜葉"
        genehttplink "地瓜葉"
    ;;
    "$loofah_weight")
        loofah=$(echo "$loofah - 1" | bc)
        loofah_repeatchoose=`increaserepeatchoose $loofah_repeatchoose`
        #echo "煮絲瓜"
        genehttplink "絲瓜"
    ;;
    "$benincasapruriens_weight")
        benincasapruriens=$(echo "$benincasapruriens - 1" | bc)
        benincasapruriens_repeatchoose=`increaserepeatchoose $benincasapruriens_repeatchoose`
        #echo "煮冬瓜"
        genehttplink "冬瓜"
    ;;
    "$bitter_weight")
        bitter=$(echo "$bitter - 1" | bc)
        bitter_repeatchoose=`increaserepeatchoose $bitter_repeatchoose`
        #echo "煮苦瓜"
        genehttplink 苦瓜
    ;;
    "$corn_weight")
        corn=$(echo "$corn - 1" | bc)
        corn_repeatchoose=`increaserepeatchoose $corn_repeatchoose`
        #echo "煮玉米"
        genehttplink "玉米"
    ;;
    "$okra_weight")
        okra=$(echo "$okra - 1" | bc)
        okra_repeatchoose=`increaserepeatchoose $okra_repeatchoose`
        #echo "煮秋葵"
        genehttplink "秋葵"
    ;;
    "$youngcorn_weight")
        youngcorn=$(echo "$youngcorn - 1" | bc)
        youngcorn_repeatchoose=`increaserepeatchoose $youngcorn_repeatchoose`
        #echo "煮玉米筍"
        genehttplink "玉米筍"
    ;;
    "$radish_weight")
        radish=$(echo "$radish - 1" | bc)
        radish_repeatchoose=`increaserepeatchoose $radish_repeatchoose`
        #echo "煮蘿蔔"
        genehttplink "蘿蔔"
    ;;
    "$potato_weight")
        potato=$(echo "$potato - 1" | bc)
        potato_repeatchoose=`increaserepeatchoose $potato_repeatchoose`
        #echo "煮馬鈴薯"
        genehttplink "馬鈴薯"
    ;;
    "$carrot_weight")
        carrot=$(echo "$carrot - 1" | bc)
        carrot_repeatchoose=`increaserepeatchoose $carrot_repeatchoose`
        #echo "煮紅蘿蔔"
        genehttplink "紅蘿蔔"
    ;;
    "$bambooshoot_weight")
        bambooshoot=$(echo "$bambooshoot - 1" | bc)
        bambooshoot_repeatchoose=`increaserepeatchoose $bambooshoot_repeatchoose`
        #echo "煮竹筍"
        genehttplink "竹筍"
    ;;
    "$cauliflower_weight")
        cauliflower=$(echo "$cauliflower - 1" | bc)
        cauliflower_repeatchoose=`increaserepeatchoose $cauliflower_repeatchoose`
        #echo "煮花椰菜"
        genehttplink "花椰菜"
    ;;
    #"$_weight")
    #    =$(echo "$ - 1" | bc)
    #    echo "煮"
    #;;
    esac
}

function cookvegetable(){
    find_maximum_in_vegetable
    calcurateweight
}

function cookaialgo(){
    res=$(echo "$1 + $2 + $3" | bc)
    res=$(echo "$res * $4" | bc)
    echo $res
}

function calcurateweight(){
    #echo "Etner getresult"
    #sample format
    #_weight=`expr $_decayrate + $_favorite - $_repeatchoose`
    #_weight=`expr $_weight \* $`

    pork_weight=$(cookaialgo $pork_decayrate $pork_favorite $pork_repeatchoose $pork)
    fish_weight=$(cookaialgo $fish_decayrate $fish_favorite $fish_repeatchoose $fish)
    beaf_weight=$(cookaialgo $beaf_decayrate $beaf_favorite $beaf_repeatchoose $beaf)
    chicken_weight=$(cookaialgo $chicken_decayrate $chicken_favorite $chicken_repeatchoose $chicken)
    duck_weight=$(cookaialgo $duck_decayrate $duck_favorite $duck_repeatchoose $duck)
    cabbage_weight=$(cookaialgo $cabbage_decayrate $cabbage_favorite $cabbage_repeatchoose $cabbage)
    spinach_weight=$(cookaialgo $spinach_decayrate $spinach_favorite $spinach_repeatchoose $spinach)
    chingchiang_weight=$(cookaialgo $chingchiang_decayrate $chingchiang_favorite $chingchiang_repeatchoose $chingchiang)
    celery_weight=$(cookaialgo $celery_decayrate $celery_favorite $celery_repeatchoose $celery)
    consin_weight=$(cookaialgo $consin_decayrate $consin_favorite $consin_repeatchoose $consin)
    brassicarapapekinensis_weight=$(cookaialgo $brassicarapapekinensis_decayrate $brassicarapapekinensis_favorite $brassicarapapekinensis_repeatchoose $brassicarapapekinensis)
    sweetpotatoleaves_weight=$(cookaialgo $sweetpotatoleaves_decayrate $sweetpotatoleaves_favorite $sweetpotatoleaves_repeatchoose $sweetpotatoleaves)
    loofah_weight=$(cookaialgo $loofah_decayrate $loofah_favorite $loofah_repeatchoose $loofah)
    benincasapruriens_weight=$(cookaialgo $benincasapruriens_decayrate $benincasapruriens_favorite $benincasapruriens_repeatchoose $benincasapruriens)
    bitter_weight=$(cookaialgo $bitter_decayrate $bitter_favorite $bitter_repeatchoose $bitter)
    corn_weight=$(cookaialgo $corn_decayrate $corn_favorite $corn_repeatchoose $corn)
    okra_weight=$(cookaialgo $okra_decayrate $okra_favorite $okra_repeatchoose $okra)
    youngcorn_weight=$(cookaialgo $youngcorn_decayrate $youngcorn_favorite $youngcorn_repeatchoose $youngcorn)
    radish_weight=$(cookaialgo $radish_decayrate $radish_favorite $radish_repeatchoose $radish)
    potato_weight=$(cookaialgo $potato_decayrate $potato_favorite $potato_repeatchoose $potato)
    carrot_weight=$(cookaialgo $carrot_decayrate $carrot_favorite $carrot_repeatchoose $carrot)
    bambooshoot_weight=$(cookaialgo $bambooshoot_decayrate $bambooshoot_favorite $bambooshoot_repeatchoose $bambooshoot)
    cauliflower_weight=$(cookaialgo $cauliflower_decayrate $cauliflower_favorite $cauliflower_repeatchoose $cauliflower)
}

function showmeat(){
    echo "pork="$pork",fish="$fish",beaf="$beaf",chicken="$chicken",duck="$duck
}
function showvegetable(){
    echo "cabbage="$cabbage",spinach="$spinach",chingchiang="$chingchiang",celery="$celery",consin="$consin
    echo "brassicarapapekinensis="$brassicarapapekinensis",sweetpotatoleaves="$sweetpotatoleaves",loofah="$loofah",benincasapruriens="$benincasapruriens
    echo "bitter="$bitter",corn="$corn",okra="$okra",youngcorn="$youngcorn",radish="$radish
    echo "potato="$potato",carrot="$carrot",bambooshoot="$bambooshoot",cauliflower="$cauliflower
}
function showinfo(){
    showmeat
    showvegetable
}

function showweight(){
    echo "The weight of pork is "$pork_weight
    echo "The weight of fish is "$fish_weight
    echo "The weight of beaf is "$beaf_weight
    echo "The weight of chicken is "$chicken_weight
    echo "The weight of duck is "$duck_weight
    echo "The weight of cabbage is "$cabbage_weight
    echo "The weight of spinach is "$spinach_weight
    echo "The weight of chingchiang is "$chingchiang_weight
    echo "The weight of celery is "$celery_weight
    echo "The weight of consin is "$consin_weight
    echo "The weight of brassicarapapekinensis is "$brassicarapapekinensis_weight
    echo "The weight of sweetpotatoleaves is "$sweetpotatoleaves_weight
    echo "The weight of loofah is "$loofah_weight
    echo "The weight of benincasapruriens is "$benincasapruriens_weight
    echo "The weight of bitter is "$bitter_weight
    echo "The weight of corn is "$corn_weight
    echo "The weight of okra is "$okra_weight
    echo "The weight of youngcorn is "$youngcorn_weight
    echo "The weight of radish is "$radish_weight
    echo "The weight of potato is "$potato_weight
    echo "The weight of carrot is "$carrot_weight
    echo "The weight of bambooshoot is "$bambooshoot_weight
    echo "The weight of cauliflower is "$cauliflower_weight
}


function Do_Init(){
    source $CookEngine/priority_setting_decayrate.sh
    source $CookEngine/priority_setting_favorite.sh
    source $CookEngine/priority_setting_repeatchoose.sh
    #read value from userresult.txt
    pork=0
    fish=0
    beaf=0
    chicken=0
    duck=0
    cabbage=0
    spinach=0
    chingchiang=0
    celery=0
    consin=0
    brassicarapapekinensis=0
    sweetpotatoleaves=0
    loofah=0
    benincasapruriens=0
    bitter=0
    corn=0
    okra=0
    youngcorn=0
    radish=0
    potato=0
    carrot=0
    bambooshoot=0
    cauliflower=0
    #weight
    pork_weight=0
    fish_weight=0
    beaf_weight=0
    chicken_weight=0
    duck_weight=0
    cabbage_weight=0
    spinach_weight=0
    chingchiang_weight=0
    celery_weight=0
    consin_weight=0
    brassicarapapekinensis_weight=0
    sweetpotatoleaves_weight=0
    loofah_weight=0
    benincasapruriens_weight=0
    bitter_weight=0
    corn_weight=0
    okra_weight=0
    youngcorn_weight=0
    radish_weight=0
    potato_weight=0
    carrot_weight=0
    bambooshoot_weight=0
    cauliflower_weight=0

    #get the information from user input seeting
    updatedatafromuserresult
    calcurateweight
    #showweight
  
}


####################Start##############################

Do_Init

Day=1
Is_Lunch=1
echo "<table border=\"1\" style=\"width:100%\">"
echo "<tr><td>天數</td><td>中餐</td><td>晚餐</td></tr>"
while [ "$keepgoing_meat" == "1" ] || [ "$keepgoing_vegetable" == "1" ]
do
    #if [ $(echo "$pork <= 0" | bc) -eq 1 ] && [ $(echo "$fish <= 0" | bc) -eq 1 ] && [ $(echo "$chicken <= 0" | bc) -eq 1 ] && [ $(echo "$duck <= 0" | bc) -eq 1 ]; then
    #if [ $pork -eq 0 ] && [ $fish -eq 0 ] && [ $chicken -eq 0 ] && [ $duck -eq 0 ]; then
    if [ $(echo "$pork + $fish + $beaf + $chicken + $duck < $meat_number" | bc) -eq 1 ]; then #It mean we don't have any meat to cook
        keepgoing_meat=0
    fi
    if [ $(echo "$cabbage + $spinach + $chingchiang + $celery + $consin \
                + $brassicarapapekinensis + $sweetpotatoleaves + $loofah + $benincasapruriens + $bitter \
                + $corn + $okra + $youngcorn + $radish + $potato \
                + $carrot + $bambooshoot + $cauliflower \
                < $vegetable_number" | bc) -eq 1 ]; then #It mean we don't have any vegetable to cook
        keepgoing_vegetable=0
    fi
    
    if [ "$keepgoing_meat" == "0" ] && [ "$keepgoing_vegetable" == "0" ]; then
       echo "</table>"
       exit 0
    fi

    #date
    if [ $Is_Lunch -eq 1 ]; then
        echo "<tr><td>"
        echo "第$Day天"
        echo "</td>"
        #echo "中餐"
        Is_Lunch=0
    else
        #echo "For 晚餐"
        Is_Lunch=1
        Day=`expr $Day + 1`
    fi
    
    echo "<td>"
    #one meat
    if [ $(echo "$pork + $fish + $beaf + $chicken + $duck >= $meat_number" | bc) -eq 1 ]; then
        cookmeat
        #showmeat
    fi
    
    #two vegerables
    if [ $(echo "$cabbage + $spinach + $chingchiang + $celery + $consin \
                + $brassicarapapekinensis + $sweetpotatoleaves + $loofah + $benincasapruriens + $bitter \
                + $corn + $okra + $youngcorn + $radish + $potato \
                + $carrot + $bambooshoot + $cauliflower \
                >= $vegetable_number" | bc) -eq 1 ]; then #It mean we don't have any vegetable to cook
        for i in $(seq 1 $vegetable_number)
        do
            cookvegetable
            #showvegetable
        done
    fi
    echo "</td>"
    
    if [ $Is_Lunch -eq 1 ]; then
        echo "</tr>"
    fi
    #sleep 2
    
done

echo "</table>"
