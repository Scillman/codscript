/**
 * Initializes the timer.
 */
init()
{
    level.timer_prefix = &"MOD_TIMER_PREFIX";
    preCacheString( level.timer_prefix );
}

/**
 * Terminates any active timers created using this code.
 */
killTimer()
{
    level notify("kill_timer");
    if (isDefined(level.timer))
        level.timer destroy();
}

/**
 * Starts a new new timer.
 * @param duration The duration to count down from in seconds.
 */
startTimer(duration)
{
    killTimer();
    level endon("kill_timer");

    level.timer_start_time = getTime();

    level.timer = maps\_hud_util::get_countdown_hud();
    level.timer SetPulseFX( 30, 900000, 700 );

    level.timer.label = level.timer_prefix;
    level.timer settenthstimer( duration );

    wait ( duration * 60 );
    level.timer destroy();

    level notify("timer_expired");
}

/**
 * Get the duration in milliseconds since the start of the timer.
 * @return float The time in milliseconds since starting the timer.
 */
getMilliseconds()
{
    assertex(isdefined(level.timer_start_time), "You must make a call to starTimer first!");
    current_time = getTime();
    elapsed_time = ( current_time - level.timer_start_time );
    return elapsed_time;
}

/**
 * Get the duration in seconds since the start of the timer.
 * @return float The time in seconds since starting the timer.
 */
getSeconds()
{
    return floor( getMilliseconds() / 1000 );
}

/**
 * Get the duration in minutes since the start of the timer.
 * @return float The time in minutes since starting the timer.
 */
getMinutes()
{
    return floor( getMilliseconds() / 60 / 1000 );
}
