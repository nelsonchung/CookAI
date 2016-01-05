RESULT_FILE="result.html"

function getguildfromicook(){
    curl -o $RESULT_FILE https://icook.tw/recipes/search?q=$1
}

rm $RESULT_FILE
getguildfromicook $1
