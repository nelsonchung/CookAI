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
    fish=$(getvaluefromuserresult "fish")
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
    showinfo
}

function getmeat(){
    return
}

function getvegetable(){
    return
}

function calcurateweight(){
    res=$(echo "$1 + $2 + $3" | bc)
    res=$(echo "$res * $4" | bc)
    echo $res
}

function getresult(){
    echo "Etner getresult"
    #sample format
    #_weight=`expr $_decayrate + $_favorite - $_repeatchoose`
    #_weight=`expr $_weight \* $`

    pork_weight=$(calcurateweight $pork_decayrate $pork_favorite $pork_repeatchoose $pork)
    fish_weight=$(calcurateweight $fish_decayrate $fish_favorite $fish_repeatchoose $fish)
    chicken_weight=$(calcurateweight $chicken_decayrate $chicken_favorite $chicken_repeatchoose $chicken)
    duck_weight=$(calcurateweight $duck_decayrate $duck_favorite $duck_repeatchoose $duck)
    cabbage_weight=$(calcurateweight $cabbage_decayrate $cabbage_favorite $cabbage_repeatchoose $cabbage)
    spinach_weight=$(calcurateweight $spinach_decayrate $spinach_favorite $spinach_repeatchoose $spinach)
    chingchiang_weight=$(calcurateweight $chingchiang_decayrate $chingchiang_favorite $chingchiang_repeatchoose $chingchiang)
    celery_weight=$(calcurateweight $celery_decayrate $celery_favorite $celery_repeatchoose $celery)
    consin_weight=$(calcurateweight $consin_decayrate $consin_favorite $consin_repeatchoose $consin)
    brassicarapapekinensis_weight=$(calcurateweight $brassicarapapekinensis_decayrate $brassicarapapekinensis_favorite $brassicarapapekinensis_repeatchoose $brassicarapapekinensis)
    sweetpotatoleaves_weight=$(calcurateweight $sweetpotatoleaves_decayrate $sweetpotatoleaves_favorite $sweetpotatoleaves_repeatchoose $sweetpotatoleaves)
    loofah_weight=$(calcurateweight $loofah_decayrate $loofah_favorite $loofah_repeatchoose $loofah)
    benincasapruriens_weight=$(calcurateweight $benincasapruriens_decayrate $benincasapruriens_favorite $benincasapruriens_repeatchoose $benincasapruriens)
    bitter_weight=$(calcurateweight $bitter_decayrate $bitter_favorite $bitter_repeatchoose $bitter)
    corn_weight=$(calcurateweight $corn_decayrate $corn_favorite $corn_repeatchoose $corn)
    okra_weight=$(calcurateweight $okra_decayrate $okra_favorite $okra_repeatchoose $okra)
    youngcorn_weight=$(calcurateweight $youngcorn_decayrate $youngcorn_favorite $youngcorn_repeatchoose $youngcorn)
    radish_weight=$(calcurateweight $radish_decayrate $radish_favorite $radish_repeatchoose $radish)
    potato_weight=$(calcurateweight $potato_decayrate $potato_favorite $potato_repeatchoose $potato)
    carrot_weight=$(calcurateweight $carrot_decayrate $carrot_favorite $carrot_repeatchoose $carrot)
    echo ".."
    bambooshoot_weight=$(calcurateweight $bambooshoot_decayrate $bambooshoot_favorite $bambooshoot_repeatchoose $bambooshoot)
    echo "....."
    cauliflower_weight=$(calcurateweight $cauliflower_decayrate $cauliflower_favorite $cauliflower_repeatchoose $cauliflower)

}

function showinfo(){
    echo "pork is "$pork
    echo "fish is "$fish
    echo "chicken is "$chicken
    echo "duck is "$duck
    echo "cabbage is "$cabbage
    echo "spinach is "$spinach
    echo "chingchiang is "$chingchiang
    echo "celery is "$celery
    echo "consin is "$consin
    echo "brassicarapapekinensis is "$brassicarapapekinensis
    echo "sweetpotatoleaves is "$sweetpotatoleaves
    echo "loofah is "$loofah
    echo "benincasapruriens is "$benincasapruriens
    echo "bitter is "$bitter
    echo "corn is "$corn
    echo "okra is "$okra
    echo "youngcorn is "$youngcorn
    echo "radish is "$radish
    echo "potato is "$potato
    echo "carrot is "$carrot
    echo "bambooshoot is "$bambooshoot
    echo "cauliflower is "$cauliflower
}

function showweight(){
    echo "The weight of pork is "$pork_weight
    echo "The weight of fish is "$fish_weight
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


####################Initial##############################
source priority_setting_decayrate.sh
source priority_setting_favorite.sh
source priority_setting_repeatchoose.sh
#read value from userresult.txt
pork=0
fish=0
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


updatedatafromuserresult

getresult

showweight