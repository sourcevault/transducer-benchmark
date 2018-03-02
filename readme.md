## Transducer Benchmark

Experiment to see which transducer implementation is most performant.

| Implementation | time (milisecond) |
|------:|----:|
|[`ramda/ramda`](https://github.com/ramda/ramda) | 453 |
|[`jlongster/transducers.js`](https://github.com/jlongster/transducers.js)  | 539 |
| [`cognitect-labs/transducers-js`](https://github.com/cognitect-labs/transducers-js) | 566 |


** Parameters **

-  `10,000,000` array elements.

- combinator used `filter -> map -> map`

- hardware used - `i7-3667U CPU (2 GHz 2.5 GHz), (x64, 7.86 RAM)`

