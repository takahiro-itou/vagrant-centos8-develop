# Vagrantfile for Ubuntu 18.04 (bionic64)

## 使い方

###  ダウンロード

```
git  clone git@gitlab.com:takahiro-itou/vagrant-ubuntu-develop.git
cd   vagrant-ubuntu-develop
```

###  準備

プロビジョニングにより、以下のデータが仮想マシンに転送される。
- ホームディレクトリに ~/VagrantConfig/ ディレクトリがあれば転送される
    - 暫定的に、現バージョンでは上記ディレクトリがなければエラーになる
- このレポジトリの data ディレクトリの内容が転送される

###  起動

```
cd   vagrant
time vagrant destroy -f ; time vagrant up ; echo $?
```