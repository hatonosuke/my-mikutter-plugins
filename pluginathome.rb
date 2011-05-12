# -*- coding: utf-8 -*-#
# mikutterのpluginディレクトリ以下に配置すると~/mikutter_plugin以下の
# プラグインを読み込む

dir = File.expand_path("~/.mikutter_plugin")
if FileTest.directory?(dir)
    Dir.glob(dir + "/*.rb").each do |rb|
        require rb
    end
end
