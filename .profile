
alias java_ls='/usr/libexec/java_home -Vq 2>&1 | grep -E "\d\.\d\.\d(_\d+)?.*," | cut -d , -f 1 | cut -c 5-'
function java_use() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
    java -version
}
