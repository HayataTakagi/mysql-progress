# mysql-progress

# Usage
Example when the number of records to be processed is 1000
```
../show-progress.sh 1000
```

## For Mac
This script uses GNU date to work on Linux systems.
Since the Mac defaults to using BSD date, you need to use an alias.

```
brew install coreutils
alias date='gdate'
```
