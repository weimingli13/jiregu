if[ -d $1 ]; then
 echo "$1 已经存在"
 exit
else
mkdir $1
cd $1
mkdir css js
touch index.html css/style.css js/main.js
echo " <!DOCTYPE>
<html>
<head>
 <title>Hello</title>
</head>
<body>
 <h1>Hi</h1>
</body>
</html>
"  > index.html
echo "h1{color: red;}" > css/style.css
echo "var string = 'Hello World'
 alert(string)" > js/main.js
exit
fi