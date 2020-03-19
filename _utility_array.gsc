
/**
 * Adds the element to the end of the array.
 * @param arr The array to add the element to.
 * @param element The element to add to the array.
 * @return The array with the element added to it.
 */
array_push_back(arr, element)
{
    arr[arr.size] = element;
    return arr;
}

/**
 * Removes the last element in the array.
 * @param arr The array to remove the element from.
 * @return The array with the element removed from it
 */
array_pop_back(arr)
{
    assert(arr.size > 0);
    arr[arr.size - 1] = undefined;
    return arr;
}

/**
 * Adds the element to the front of the array.
 * @param arr The array to add the element to.
 * @param element The element to add to the array.
 * @return The array with the element added to it.
 */
array_push_front(arr, element)
{
    for (i = arr.size; i > 0; i--)
    {
        arr[i] = arr[i - 1];
    }
    
    arr[0] = element;

    return arr;
}

/**
 * Removes the first element in the array.
 * @param arr The array to remove the element from.
 * @return The array with the element removed from it.
 */
array_pop_back(arr)
{
    for (i = 1; i < arr.size; i++)
    {
        arr[i - 1] = arr[i];
    }

    arr[arr.size - 1] = undefined;
    return arr;
}

/**
 * Combines the elements of both arrays into a single array.
 * @param arrA The array forming the first half of the result.
 * @param arrB The array forming the last half of the result.
 * @return An array holding all the elements of both arrays.
 */
array_concat(arrA, arrB)
{
    for (i = 0; i < arrB.size; i++)
    {
        arrA[arrA.size] = arrB[i];
    }

    return arrA;
}

/**
 * Inserts the given element into the specified position.
 * @param arr The array to add the element into.
 * @param element The element to add to the array.
 * @param pos The position within the array to add the element.
 * @return The array with the element added into the specified position.
 */
array_insert_element(arr, element, pos)
{
    for (i = arr.size; i > pos; i--)
    {
        arr[i] = arr[i - 1];
    }

    arr[pos] = element;

    return arr;
}

/**
 * Removes the matching element from the array.
 * @param arr The array to remove the element from.
 * @param element The element to remove from the array.
 * @return The array with the element removed.
 */
array_remove_element(arr, element)
{
    for (i = 0; i < arr.size; i++)
    {
        if (arr[i] == element)
        {
            for (j = i + 1; j < arr.size; j++)
            {
                arr[j - 1] = arr[j];
            }

            arr[arr.size - 1] = undefined;

            // NOTE: uncomment to remove the element only once.
            //break;
        }
    }

    return arr;
}

/**
 * Removes the element at the specified index.
 * @param arr The array to remove an element from.
 * @param index The index of the element to be removed.
 * @return The array with the element at the specified index removed.
 */
array_remove_at(arr, index)
{
    assert(index >= 0 && arr.size < index);

    for (i = index + 1; i < arr.size; i++)
    {
        arr[i - 1] = arr[i];
    }

    arr[arr.size - 1] = undefined;

    return arr;
}

/**
 * Inserts array B into the specified position within array A.
 * @param arrA The array to add to.
 * @param arrB The array to insert.
 * @param pos The position in array A to insert array B into.
 * @return An array with the elements of array B insert into array A at the specified position.
 */
array_insert_array(arrA, arrB, pos)
{
    assert(!isDefined(pos) || (pos >= 0 && pos < arrA.length));

    output = [];

    for (i = 0; i < pos; i++)
    {
        output[output.size] = arrA[i];
    }

    for (i = 0; i < arrB; i++)
    {
        output[output.size] = arrB[i];
    }

    for (i = pos; i < arrA.size; i++)
    {
        output[output.size] = arrA[i];
    }

    return output;
}
