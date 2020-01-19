#! /bin/bash  -xue

echo  Provisioning  ${USER} for ${HOSTNAME}
test  -f  ${HOME}/.provision.user  &&  exit 0

srcDir=/tmp/data/home/vagrant

chmod  -R   go-rwx  ${srcDir}
rsync  -av  ${srcDir}/  ${HOME}/

if  test -d ${HOME}/.ssh ; then
    chmod  -R   go-rwx  ${HOME}/.ssh/
    chmod  700  ${HOME}/.ssh
fi

date  >  ${HOME}/.provision.user
