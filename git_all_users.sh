code_path="C:\Users\wps\Scripts\moffice"

cd $code_path

git log --format='%ae' | sort | uniq
