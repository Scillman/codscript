/**
 * Converts the value in the range of [min_src,max_src] into the range of
 * [min_dest,max_dest]. The function does clamp the output value if the source
 * value is below the minimum or above the maximum.
 *
 * @param value The value to convert from the source to the destination range.
 * @param min_src_value The minimum source value.
 * @param max_src_value The maximum source value.
 * @param min_dest_value The minimum value of the calculated value.
 * @param max_dest_value The maximum value of the calculated value.
 *
 * @return The source value converted from the source range into the destination range.
 */
convertToRange(value, min_src_value, max_src_value, min_dest_value, max_dest_value)
{
    if (value >= min_src_value && value <= max_src_value)
    {
        max_src = ( max_src_value - min_src_value );
        max_dest = ( max_dest_value - min_dest_value );

        value -= min_src_value;

        result = ( ( value * max_dest ) / max_src );

        return result + min_dest_value;
    }
    else if (value > max_src_value)
    {
        return max_dest_value;
    }
    else
    {
        return min_dest_value;
    }
}
