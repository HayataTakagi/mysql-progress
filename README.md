# mysql-progress

# Usage
- Clone this repository.
```
git clone git@github.com:HayataTakagi/mysql-progress.git
```

- Write the connection information in a `.my.cnf` file and place it in the directory where you run script.
```
[client]
user=
password=
host=
database=
```


- If the number of records to be processed is 1000, use the following command.

```
../show-write-progress.sh 1000
```

## For Mac
This script uses GNU date to work on Linux systems.
Since the Mac defaults to using BSD date, you need to use an alias.

```
brew install coreutils
alias date='gdate'
```
