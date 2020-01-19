#! /bin/bash  -xue

echo  Provisioning  ${USER} for ${HOSTNAME}
test  -f  ${HOME}/.provision.user  &&  exit 0

for srcDir in  /tmp/VagrantConfig  /tmp/data/home/vagrant  ; do
    if  test -d ${srcDir} ; then
        chmod  -R   go-rwx  ${srcDir}
        rsync  -av  ${srcDir}/  ${HOME}/
    fi
done

if  test -d ${HOME}/.ssh ; then
    chmod  -R   go-rwx  ${HOME}/.ssh/
    chmod  700  ${HOME}/.ssh
fi

date  >  ${HOME}/.provision.user
