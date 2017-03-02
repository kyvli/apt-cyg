set -x
readarray -t x < <(echo "y/N"|sed -e 's:/:\n:g')
for i in "${x[@]}";do
  echo "[$i]"
done

echo "$SHELL"
set|grep -i bash
ldd "$SHELL"
echo "$PATH"|sed -e 's/:/\n/g'
