{ config, pkgs, ... }:

{
    enable = true;

    package = pkgs.ncmpcpp.override {
        visualizerSupport = true;
    };

    bindings = [
        { key = "h"; command = "previous_column"; }
        { key = "j"; command = "scroll_down"; }
        { key = "k"; command = "scroll_up"; }
        { key = "l"; command = "next_column"; }
    ];

    settings = {
        visualizer_fps = "144";
        visualizer_type = "wave";
        visualizer_look = "∗▐";
        visualizer_color = "199,200,201,202,166,130,94,58,22";
        visualizer_spectrum_smooth_look = "yes";
        # GENERAL
        # ---
        connected_message_on_startup = "yes";
        cyclic_scrolling = "yes";
        mouse_support = "no";
        mouse_list_scroll_whole_page = "yes";
        lines_scrolled = "1";
        message_delay_time = "1";
        playlist_shorten_total_times = "yes";
        playlist_display_mode = "columns";
        browser_display_mode = "columns";
        search_engine_display_mode = "columns";
        playlist_editor_display_mode = "columns";
        autocenter_mode = "yes";
        centered_cursor = "yes";
        user_interface = "classic";
        follow_now_playing_lyrics = "yes";
        locked_screen_width_part = "50";
        ask_for_locked_screen_width_part = "yes";
        display_bitrate = "yes";
        external_editor = "nvim";
        main_window_color = "default";
        startup_screen = "playlist";
        show_hidden_files_in_local_browser = "no";

        # PROGRESS BAR
        # ---
        progressbar_look = "━━━";
        progressbar_color = "black";
        progressbar_elapsed_color = "blue";

        # UI VISIBILITY
        # ---
        header_visibility = "no";
        statusbar_visibility = "yes";
        titles_visibility = "yes";
        enable_window_title = "yes";

        # COLORS
        # ---
        statusbar_color = "white";
        color1 = "white";
        color2 = "black";

        # UI APPEARANCE
        # ---
        now_playing_prefix = "$b$6$6 ";
        now_playing_suffix = "  $/b$8";
        current_item_prefix = "$b$6$/b$6 ";
        current_item_suffix = "  $8";
        song_columns_list_format = "(50)[]{t|fr:Title} (0)[magenta]{a}";
        song_list_format = " {%t $R  $8%a$8}|{%f $R  $8%l$8} $8";
        song_status_format = "{{%a{ - %t}}|{ - %f}{ - %b{ (%y)}}}";
        song_window_title_format = "Now Playing ..";
    };
}
