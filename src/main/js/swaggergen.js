const path = require('path');
const codegen = require('swagger-node-codegen');

console.log(process.env);

let swagger_file="src/docs/swagger/flashlex-backend-swagger.yaml"
let build_dir="build/site/flashlex-docs/1.2/swagger"

if(process.env.GIT_BRANCH=="dev"){
    swagger_file="src/docs/swagger/dev-flashlex-backend-swagger.yaml"
    build_dir="build/site/flashlex-docs/1.2.dev/swagger"
}

codegen.generate({
  swagger: path.resolve(__dirname, `../../../${swagger_file}`),
  target_dir: path.resolve(__dirname, `../../../${build_dir}`)
}).then(() => {
  console.log('Done!');
}).catch(err => {
  console.error(`Something went wrong: ${err.message}`);
});

