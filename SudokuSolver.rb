#puts "hello world"
#2D array representing the problem - unfilled cells are represented by -1
sudo_problem = [
    [-1,-1,-1,2,6,-1,7,-1,1],
    [6,8,-1,-1,7,-1,-1,9,-1],
    [1,9,-1,-1,-1,4,5,-1,-1],
    [8,2,-1,1,-1,-1,-1,4,-1],
    [-1,-1,4,6,-1,2,9,-1,-1],
    [-1,5,-1,-1,-1,3,-1,2,8],
    [-1,-1,9,3,-1,-1,-1,7,4],
    [-1,4,-1,-1,5,-1,-1,3,6],
    [7,-1,3,-1,1,8,-1,-1,-1],
]
#make row subarrays
Row1=sudo_problem[0]
Row2=sudo_problem[1]
Row3=sudo_problem[2]
Row4=sudo_problem[3]
Row5=sudo_problem[4]
Row6=sudo_problem[5]
Row7=sudo_problem[6]
Row8=sudo_problem[7]
Row9=sudo_problem[8]
#make column subarrays
Col1=[Row1[0],Row2[0],Row3[0],Row4[0],Row5[0],Row6[0],Row7[0],Row8[0],Row9[0]]
Col2=[Row1[1],Row2[1],Row3[1],Row4[1],Row5[1],Row6[1],Row7[1],Row8[1],Row9[1]]
Col3=[Row1[2],Row2[2],Row3[2],Row4[2],Row5[2],Row6[2],Row7[2],Row8[2],Row9[2]]
Col4=[Row1[3],Row2[3],Row3[3],Row4[3],Row5[3],Row6[3],Row7[3],Row8[3],Row9[3]]
Col5=[Row1[4],Row2[4],Row3[4],Row4[4],Row5[4],Row6[4],Row7[4],Row8[4],Row9[4]]
Col6=[Row1[5],Row2[5],Row3[5],Row4[5],Row5[5],Row6[5],Row7[5],Row8[5],Row9[5]]
Col7=[Row1[6],Row2[6],Row3[6],Row4[6],Row5[6],Row6[6],Row7[6],Row8[6],Row9[6]]
Col8=[Row1[7],Row2[7],Row3[7],Row4[7],Row5[7],Row6[7],Row7[7],Row8[7],Row9[7]]
Col9=[Row1[8],Row2[8],Row3[8],Row4[8],Row5[8],Row6[8],Row7[8],Row8[8],Row9[8]]
#make boxes subarrays
Box1=[sudo_problem[0][0],sudo_problem[0][1],sudo_problem[0][2],sudo_problem[1][0],sudo_problem[1][1],sudo_problem[1][2],sudo_problem[2][0],sudo_problem[2][1],sudo_problem[2][2]]
Box2=[sudo_problem[0][3],sudo_problem[0][4],sudo_problem[0][5],sudo_problem[1][3],sudo_problem[1][4],sudo_problem[1][5],sudo_problem[2][3],sudo_problem[2][4],sudo_problem[2][5]]
Box3=[sudo_problem[0][6],sudo_problem[0][7],sudo_problem[0][8],sudo_problem[1][6],sudo_problem[1][7],sudo_problem[1][8],sudo_problem[2][6],sudo_problem[2][7],sudo_problem[2][8]]
Box4=[sudo_problem[3][0],sudo_problem[3][1],sudo_problem[3][2],sudo_problem[4][0],sudo_problem[4][1],sudo_problem[4][2],sudo_problem[5][0],sudo_problem[5][1],sudo_problem[5][2]]
Box5=[sudo_problem[3][3],sudo_problem[3][4],sudo_problem[3][5],sudo_problem[4][3],sudo_problem[4][4],sudo_problem[4][5],sudo_problem[5][3],sudo_problem[5][4],sudo_problem[5][5]]
Box6=[sudo_problem[3][6],sudo_problem[3][7],sudo_problem[3][8],sudo_problem[4][6],sudo_problem[4][7],sudo_problem[4][8],sudo_problem[5][6],sudo_problem[5][7],sudo_problem[5][8]]
Box7=[sudo_problem[6][0],sudo_problem[6][1],sudo_problem[6][2],sudo_problem[7][0],sudo_problem[7][1],sudo_problem[7][2],sudo_problem[8][0],sudo_problem[8][1],sudo_problem[8][2]]
Box8=[sudo_problem[6][3],sudo_problem[6][4],sudo_problem[6][5],sudo_problem[7][3],sudo_problem[7][4],sudo_problem[7][5],sudo_problem[8][3],sudo_problem[8][4],sudo_problem[8][5]]
Box9=[sudo_problem[6][6],sudo_problem[6][7],sudo_problem[6][8],sudo_problem[7][6],sudo_problem[7][7],sudo_problem[7][8],sudo_problem[8][6],sudo_problem[8][7],sudo_problem[8][8]]

#Find the numbers not present in a row  
def numbersNotInRow(array)
    numNotInRow=[]
    for num in (0..9)
        if(!array.include?(num))
            numNotInRow<<num
        end
    end
    return numNotInRow
end

#checks if row,column and box are valid
def valid(array1,array2,array3)
    for num in (0..9)
        if(!array.include?(num))
            return false
        end
    end
    return true
end


missingR9=numbersNotInRow(Row9)
allR9Combinations=missingR9.permutation().to_a

