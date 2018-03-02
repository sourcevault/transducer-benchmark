var T, C, R, A, res$, i$, I, CT, RT, TT, Tstart, Tfinal;
T = require('transducers.js');
C = require('transducers-js');
R = require('ramda');
res$ = [];
for (i$ = 1; i$ <= 100000000; ++i$) {
  I = i$;
  res$.push(I);
}
A = res$;
CT = C.comp(C.filter(function(x){
  if (x % 2 === 0) {
    return true;
  } else {
    return false;
  }
}), C.map(function(x){
  return x * 2 * 2;
}), C.map(function(x){
  return x / 10;
}));
RT = R.compose(R.map(function(x){
  return x / 10;
}), R.map(function(x){
  return x * 2 * 2;
}), R.filter(function(x){
  if (x % 2 === 0) {
    return true;
  } else {
    return false;
  }
}));
TT = T.compose(T.filter(function(x){
  if (x % 2 === 0) {
    return true;
  } else {
    return false;
  }
}), T.map(function(x){
  return x * 2 * 2;
}), T.map(function(x){
  return x / 10;
}));
global.gc();
Tstart = new Date().getTime();
RT(A).length;
Tfinal = new Date().getTime();
console.log('Ramda : ', Tfinal - Tstart);