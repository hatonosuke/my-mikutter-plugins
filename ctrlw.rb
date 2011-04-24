# -*- coding: utf-8 -*-

Module.new do
    plugin = Plugin::create(:ctrlw)

    plugin.add_event(:keypress) do  |key|
        if "Control + w" == key
            Gtk.main_quit 
        end
    end
end
