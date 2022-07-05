function tablePrint(matrix)
    for i = 1, #matrix do
        for j = 1, #matrix[i] do
            if matrix[i][j] ~= nil then
                io.write(matrix[i][j], " ")
            else
                io.write("nil", " ")
            end
        end
        io.write("\n")
    end
end