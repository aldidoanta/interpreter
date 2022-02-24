LittleBasic
===========
> Forked from https://github.com/mateiw/littlebasic

A boilerplate to implement programming language interpreter using [ANTLR 4](http://www.antlr.org/) and Java.
This boilerplate uses a toy programming language called `Lang`.

### Repository Structure
- `main`
  - Grammar definition
  - Interpreter implementation
- `test`
  - Test implementation
  - Test cases written in `Lang` language.
### Syntax

Check the grammar file `src/main/antlr4/basic/LittleBasic.g4` and the test files `src/test/resources/*.bas`

Example:
```PureBasic
REM Greatest common divisor
INPUT "A=" ain
INPUT "B=" bin
a = VAL(ain)
b = VAL(bin)

WHILE b > 0
    t = a MOD b
    a = b
    b = t
END

PRINT "GCD=" + a
```
Output:
```
A= 36
B= 27
GCD=9
```

### Building

It's built with Maven, so simply execute this in the project directory:

```
mvn install
```
You'll find the jar in the `/target` directory.

### Running

In the console:

```
java -jar LittleBasic.jar /path/to/MyAwesomeProgram.bas
```
