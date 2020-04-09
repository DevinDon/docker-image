for file in ./*/*
do
if [ "${file}" = "push.sh" ];
then
  echo "$file is file"
fi
done
