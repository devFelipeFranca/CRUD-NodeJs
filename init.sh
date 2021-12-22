echo "*create application node with typescript init"

yarn init -y
wait

echo "*installer dependecies"

yarn add express
wait

echo "*installer dev-dependecies"

yarn add typescript ts-node-dev @types/express -D
wait

echo "*typescript init"

yarn tsc --init
wait

echo "*creating files"

mkdir src

echo "// init application here" > ./src/server.ts

echo 'node_modules
./init.sh
./clear.sh
./instructions.txt
./commit.sh' > .gitignore

echo '
*OBS: CHANGE SOME CONFIGS IN TSCONFIG FILE AS...
target: es6 to es + current year
strict: True to False
'

echo '
*OBS: CREATE A SCRIPT DEV RUNNIGN IN PACKAGE.JSON FILE AS...
"scripts": {
    "start:dev": "ts-node-dev --transpile-only src/server.ts"
},
'