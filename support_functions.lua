function tablePrint(matrix)
    for i = 1, #matrix do
        for j = 1, #matrix[i] do
            if matrix[i][j] ~= nil then
                local emptySpaces = " ";
                if matrix[i][j] >= 0 then
                    emptySpaces = emptySpaces .. " ";
                end
                io.write(emptySpaces, matrix[i][j])
            else
                io.write("nil", " ")
            end
        end
        io.write("\n")
    end
end