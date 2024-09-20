code_path="C:\Users\wps\Scripts\moffice"

cd $code_path

# 统计所有的用户email
git log --format='%an <%ae>' | sort | uniq
