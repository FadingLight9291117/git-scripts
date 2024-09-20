# !/bin/bash
git_code_count() {
    user_email=$1
    repository_path=$2
    
    cd $repository_path
    # 统计某个用户的代码量
    echo User: $user_email
    git log --author=$user_email --pretty=tformat: --numstat \
    | awk '{add+=$1; del+=$2} END {print "Added lines:", add, "\n" "Deleted lines:", del}'
}

user_email=$1
code_path="C:\Users\wps\Scripts\moffice"


git_code_count $user_email $code_path
