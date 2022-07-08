## Python 3 language
- Start minimal web server: ```python3 -m http.server```. This is useful for testing a small idea cause Chrome and Firefox don't allow loading local files.

### Basic data types

```
>>> type(123)
<class 'int'>
>>> type(55.20)
<class 'float'>
>>> type(4+9j)
<class 'complex'>
>>> type('hello world!')
<class 'str'>
>>> type([1, 2, 3, 4])
<class 'list'>
>>> type((1, 2, 3, 4))
<class 'tuple'>
>>> type({'a': 1, 'b': 2})
<class 'dict'>
>>> type(frozenset([4, 8, 3, 0]))
<class 'frozenset'>
>>> type(set([4, 8, 3, 0]))
<class 'set'>
>>> type({2, 9, 4, 6})
<class 'set'>
>>> type(range(3,8,2))
<class 'range'>
```

| Data type | Mutability |   Order   |          Contructor          |   Indexing    |
|-----------|------------|-----------|------------------------------|---------------|
| string    | inmutable  |           |                              |               |
| numbers   | inmutable  |           |                              |               |
| frozenset | inmutable  | unordered | frozenset(['a', 'b'])        | No: 'a' in fs |
| set       | mutable    | unordered | {'a', 'b'} / set(['a', 'b']) | No: 'a' in s  |
| list      | mutable    |           | ['a', 'b']                   | l[0]          |
| dict      | mutable    |           | {'a': 4, 'b': 5}             | d['a']        |
| tuple     | inmutable  |           | ('a', 'b')                   | t[0]          |
| range     | inmutable  |           | range(1,9,2) / range(5)      | r[0]          |

### Indexing lists, tuples, dictionaries

```
>>> e=[1, 2, 3, 4] # list
>>> f=(1, 2, 3, 4) # tuple
>>> g={'a': 1, 'b': 2} # dict
>>> e[0] # list first element
1
>>> f[0] # tuple first element
1
>>> g['a'] # dict first element
1
```

### Sorting lists of pairs by first or second element
```
my_list = [{'a': 4, 'b': 15}, {'a': 0, 'b': 4}, {'a': 12, 'b': 3}, {'a': 7, 'b': 8}]
my_list.sort(key = lambda elem: (elem['a'])) # choose sort criteria
my_list.sort(key = lambda elem: (elem['b']))
```

#python