require "support_functions"

testMatrix = {
    {1, 2},
    {4, 5},
    {-5, -4}
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

    for i = 1, #matrix do
        for j = 1, #matrix do
            matrix[i][j+#matrix-1] = newMatrix[i][j]
        end
    end
    return matrix
end

tablePrint(testMatrix)
extendMatrix(testMatrix)
tablePrint(testMatrix)