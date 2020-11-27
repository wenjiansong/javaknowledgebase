#!/bin/bash -e

export now_time=$(date +%Y-%m-%d_%H-%M-%S)


#浠嶴VN涓嬭浇瀵瑰簲绋嬪簭
app=$1
version=$2
mkdir -p war
war=war/${app}_${version}.war

svn export svn://192.168.31.147/release/${app}_${version}.war $war

deploy_war(){
#瑙ｅ帇war 鍖�
target_dir=war/${app}_${version}_${now_time}
unzip -q $war -d $target_dir

#鍒涘缓杞欢閾炬帴
rm -f appwar
ln -sf $target_dir appwar

# 鍒涘缓ROOT.xml
target_ln=`pwd`/appwar

echo '<?xml version="1.0" encoding="UTF-8" ?>
<Context docBase="'$target_ln'" allowLinking="false">
</Context>' > conf/Catalina/localhost/ROOT.xml
 #閲嶅惎Tomcat 鏈嶅姟
 ./tomcat.sh restart


}

deploy_war