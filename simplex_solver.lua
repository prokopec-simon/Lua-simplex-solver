require "support_functions"

testMatrix = {
    {3, 5,78},
    {4, 1,36},
    {-5, -4,0}
}

--Appends an empty matrix with ones on diagnoal to the right of the original matrix
function extendMatrix(matrix)
    local newMatrix = {}
    for i = 1, #matrix do
        newMatrix[i] = {}
        for j = 1, #matrix do
            if(i==j) then
                newMatrix[i][j] = 1
            else
                newMatrix[i][j] = 0
            end
        end
    end

    local lastColumnPosition = #matrix[1]*2
    for i = 1, #matrix do
        rowLastColValue = matrix[i][#matrix]
        for j = 1, #matrix do
            matrix[i][j+#matrix-1] = newMatrix[i][j]
        end
        matrix[i][lastColumnPosition] = rowLastColValue
    end
    return matrix
end

--tablePrint(testMatrix)
extendMatrix(testMatrix)
tablePrint(testMatrix)