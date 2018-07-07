#!/bin/bash 

FILES=`dpkg -L opencv | \
    grep -v man | \
    grep -v doc  | \
    grep -v include | \
    grep -v '\.py$' | \
    grep -v share | \
    grep -v '\.so\.3\.4$' | \
    grep -v '\.so\.3\.4\.1$' | \
    grep -v pkgconfig | \
    grep '\.so$'`

D=deps.tmp
echo -n '' > $D
for file in $FILES
do
    echo "Checking [$file] .."
    ldd $file >> $D
done

DEPS=`cat $D | \
    perl -pe 's/^.*? => //; s/\(0x.*?\)//; s/ //g; s/\t//g;' | \
    sort -u | \
    grep -v linux-vdso.so.1`
rm -f $D

R=requires.tmp
for dep in $DEPS
do
    echo "Checking [$dep] .."
    dpkg -S $dep >> $R
done

RESULT=release/install_requires_related2opencv.sh
echo '#!/bin/sh -x' > $RESULT
echo 'sudo apt-get install \' >> $RESULT
chmod +x $RESULT

cat ${R} | \
    grep -v ^opencv | \
    perl -pe 's/:.*?$//;' | \
    sort -u | \
    sed -e 's/$/ \\/;' >> $RESULT

echo ' ' >> $RESULT

rm -f ${R}
