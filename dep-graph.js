// super ugly code, just a quick hack, sorry
var deps = {}

process.argv.slice(2).forEach(function(p) {
  p = require(p);
  deps[p.name] = p.dependencies;
});
var keys = Object.keys(deps);
for(var k in deps) {
 // console.log(k, deps[k]);
  console.log(k + ';');
  (Object.keys(deps[k]||{}))
    .filter(function(v) { return v in deps; })
    .forEach(function(v) { console.log(k, '>', v, ';');});
  
}
//console.log(deps);
