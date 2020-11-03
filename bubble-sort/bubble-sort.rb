def bubbleSort(sortingArray)
    sortFlag = false

    until sortFlag 
        sortFlag = true
        sortingArray[0, (sortingArray.length - 1)].each_with_index do |elm, idx| 
            if sortingArray[idx] > sortingArray[idx + 1]
                sortFlag = false
                sortingArray[idx], sortingArray[idx + 1] = sortingArray[idx + 1], sortingArray[idx]
            end
        end
    end
    sortingArray
end

p bubbleSort([4,3,78,2,0,2])