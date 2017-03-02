function x ()
{
  echo =====
  ls -l "/dev/fd/"
  echo -----
  stat "$1"
  echo -----
  cat "$1"
}
x             <(echo 1)
x /dev/fd/0 < <(echo 2)
x             <(echo 3|sed -e 's/3/4/g')
x /dev/fd/0 < <(echo 5|sed -e 's/5/6/g')
