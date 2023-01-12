## How it Works

If the result of the number be 1, so the number is odd. Otherwise is even.

I will use four bits values for simplify. 

Verifing the number 5. Five in binary -> `0101`


- Subtract 1 from 5 => `0100`
- XOR (eXclusive OR) of `0101` and `0100` => 

|    |      |	 	|	  	|
|  :--	  |    --    |	  --	|	  --:	|
| 0	| 1 | 0	| 1	|
| 0 | 1 | 0	| 0	|
| 0 | 0 | 0	| 1	|

- The number is `odd`.

### With a PAR number

The number will be 2.

|    |      |	 	|	  	|
|  :--	  |    --    |	  --	|	  --:	|
| 1	| 0 | 0	| 0	|
| 0 | 1 | 0	| 1	|
| 1 | 1 | 0	| 1	|


## Dependencies

- nasm => The assembler. To install with yay use: `yay -S nasm`.
- LD => Linkeditor.

## Build and run

I don't know how run this on windows.

```bash
nasm -felf64 imparPar.asm -o app.o
ld app.o -o app
./app
```
