
from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import get_color

class Grey(ColorScheme):
    progress_bar_color = 242

    def use(self, context):
        fg, bg, attr = 7, -1, 0

        if context.in_browser:
            if context.selected:
                fg, bg, attr = 0, 242, 0
            elif context.directory:
                fg, bg, attr = 7, -1, 1
            elif context.executable:
                fg, bg, attr = 242, -1, 0
            elif context.link:
                fg, bg, attr = 7, -1, 0

        elif context.in_titlebar:
            if context.hostname:
                fg, bg, attr = 7, 242, 0
            else:
                fg, bg, attr = 7, 242, 0

        elif context.in_statusbar:
            fg, bg, attr = 7, 242, 0

        elif context.in_taskview:
            fg, bg, attr = 7, -1, 0

        return fg, bg, attr
