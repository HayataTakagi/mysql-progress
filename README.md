# mysql-progress

![sample-for-update-progress](https://user-images.githubusercontent.com/28585609/216870086-b216a229-602f-4047-921a-9980f4ef1f2b.gif)

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


- If the number of records to be processed is 10000, use the following command.

```
# For write query
./show-write-progress.sh 10000

# For update query
./show-update-progress.sh 10000

# For delete query
./show-delete-progress.sh 10000
```

## For Mac
This script uses GNU date to work on Linux systems.
Since the Mac defaults to using BSD date, you need to use an alias.

```
brew install coreutils
alias date='gdate'
```
