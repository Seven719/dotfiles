{ config, pkgs, ... }:

{
    enable = true;
    settings = {
        global = {
            indicate_hidden = "yes";
            stack_duplicates = true;
            hide_duplicate_count = false;

            title = "Dunst";
            class = "Dunst";

            show_age_threshold = 30;
            ellipsize = "middle";
            ignore_newline = "no";
            show_indicators = "no";
            sticky_history = "no";
            history_length = 20;

            always_run_script = true;
            ignore_dbusclose = false;
            force_xinerama = false;

            sort = "yes";
            scale = 0;
            shrink = "no";
            word_wrap = "yes";

            width = 300;
            height = 200;
            origin = "top-right";
            offset = "12+48";

            padding = 20;
            horizontal_padding = 20;
            notification_limit = 10;
            separator_height = 2;

            progress_bar = true;
            progress_bar_height = 10;
            progress_bar_frame_width = 1;
            progress_bar_min_width = 150;
            progress_bar_max_width = 300;

            frame_width = 2;
            separator_color = "frame";

            line_height = 1;
            idle_threshold = 120;
            markup = "full";
            format = "<span font='13' weight='bold'>%s</span>\\n%b";
            alignment = "left";
            vertical_alignment = "center";

            max_icon_size = 64;

            highlight = "#ffffff";
            foreground = "#ffffff";
            background = "#000000";
            frame_color = "#ffffff";
        };
    };
}
