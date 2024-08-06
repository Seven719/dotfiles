{ config, pkgs, ... }:

{
    enable = true;
    customPaneNavigationAndResize = true;
    baseIndex = 1;
    prefix = "C-Space";
    mouse = true;
    sensibleOnTop = true;

    extraConfig = ''
        # Set correct colours
        set-option -sa terminal-overrides ",xterm*:Tc"
        # Set bar position to top
        set -g status-position top

        # Shift Alt vim keys to switch windows
        bind -n M-H previous-window
        bind -n M-L next-window

        # Open panes in current working directory
        bind '"' split-window -v -c "#{pane_current_path}"
        bind % split-window -h -c "#{pane_current_path}"
        bind c new-window -c "#{pane_current_path}"
    '';

    plugins = with pkgs.tmuxPlugins; [
        {
            plugin = vim-tmux-navigator;
        }

        {
            plugin = rose-pine;
            extraConfig = ''
            set -g @rose_pine_variant 'main'
            '';
        }

        {
            plugin = yank;
            extraConfig = ''
            set-window-option -g mode-keys vi
            bind-key -T copy-mode-vi v send-keys -X begin-selection
            bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
            bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
            '';
        }
    ];
}
