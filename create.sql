CREATE TYPE public.window_state as ENUM ('open', 'closed'); -- Window state for display val
CREATE TYPE public.curtain_state as ENUM ('open', 'closed'); --  Curtain state for display val
CREATE TYPE public.mode as ENUM ('automatic', 'manual override'); -- Mode to follow (can be 0 or 1 also)


CREATE TABLE public.users
        (
            username text,
            window_ctrl INTEGER,
            curtain_ctrl INTEGER,
            temp_thresh INTEGER NOT NULL,
            temp_win_state INTEGER NOT NULL,
            auto_rain_win_state INTEGER NOT NULL,
            auto_rain_curt_state INTEGER NOT NULL,
            temp_inside INTEGER,
            temp_outside INTEGER,
            humidity INTEGER,
            window_state public.window_state,
            curtain_state public.curtain_state,
            mode public.mode,

            PRIMARY KEY(username)
        )