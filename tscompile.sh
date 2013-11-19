#!/bin/bash
#rm -f *.log
#rm -f *.heapsnapshot


# ///<reference path='app.d.ts'/>
find ./types.d/ -name "*.d.ts" -printf "/// <reference path='%p'/>\n" > project.d.ts
find ./src/ -name "*.ts" -printf "/// <reference path='%p'/>\n" >> project.d.ts

#find ./src/ -name "*.ts" -printf %p\ | xargs node ./node_modules/typescript/bin/tsc.js --nolib --sourcemap app.ts
#find ./src/ -name "*.ts" -printf %p\ | xargs node ./typescript-0.9.0/tsc.js --nolib --sourcemap tsapp.ts

node ./node_modules/typescript/bin/tsc.js --module commonjs --nolib --sourcemap app.ts

#cd www && ./tscompile.sh