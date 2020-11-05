require 'pp'

#make column subarrays
=begin
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
=end
#Find the numbers not present in a row  
def numbersNotInRow(array)
    numNotInRow=[]
    for num in (1..9)
        if(!array.include?(num))
            numNotInRow<<num
        end
    end
    return numNotInRow
end

#checks if row,column and box are valid
def valid(array1,array2,array3)
    for num in (1..9)
        if(!array1.include?(num))
            return false
        end
        if(!array2.include?(num))
            return false
        end
        if(!array3.include?(num))
            return false
        end
    end
    return true
end

def generateBoardCombination(rows)
    sudo_problem = [
        [-1,-1,-1,2,6,9,7,-1,1],
        [6,8,-1,5,7,1,4,9,-1],
        [1,9,-1,8,3,4,5,6,-1],
        [8,2,-1,1,9,-1,3,4,-1],
        [-1,-1,4,6,8,2,9,1,-1],
        [-1,5,-1,7,4,3,6,2,8],
        [-1,-1,9,3,2,-1,-1,7,4],
        [-1,4,-1,9,5,-1,1,3,6],
        [7,-1,3,4,1,8,2,5,9],
    ]
    sudo_combination=sudo_problem
    counter=[0,0,0,0,0,0,0,0,0]
    for i in (0..8)
        for j in (0..8)
            if(sudo_problem[i][j]==-1)
                sudo_combination[i][j]=rows[i][counter[i]]
                counter[i]=counter[i]+1
            end
        end
    end
    return sudo_combination
end

def getCol(board)
    col1=[]
    col2=[]
    col3=[]
    col4=[]
    col5=[]
    col6=[]
    col7=[]
    col8=[]
    col9=[]
    for num in (0..8)
        col1<<board[num][0]
        col2<<board[num][1]
        col3<<board[num][2]
        col4<<board[num][3]
        col5<<board[num][4]
        col6<<board[num][5]
        col7<<board[num][6]
        col8<<board[num][7]
        col9<<board[num][8]
    end
    colValues=[col1,col2,col3,col4,col5,col6,col7,col8,col9]
    return colValues
end

def getBox(board)
    box1=[board[0][0],board[0][1],board[0][2],board[1][0],board[1][1],board[1][2],board[2][0],board[2][1],board[2][2]]
    box2=[board[0][3],board[0][4],board[0][5],board[1][3],board[1][4],board[1][5],board[2][3],board[2][4],board[2][5]]
    box3=[board[0][6],board[0][7],board[0][8],board[1][6],board[1][7],board[1][8],board[2][6],board[2][7],board[2][8]]
    box4=[board[3][0],board[3][1],board[3][2],board[4][0],board[4][1],board[4][2],board[5][0],board[5][1],board[5][2]]
    box5=[board[3][3],board[3][4],board[3][5],board[4][3],board[4][4],board[4][5],board[5][3],board[5][4],board[5][5]]
    box6=[board[3][6],board[3][7],board[3][8],board[4][6],board[4][7],board[4][8],board[5][6],board[5][7],board[5][8]]
    box7=[board[6][0],board[6][1],board[6][2],board[7][0],board[7][1],board[7][2],board[8][0],board[8][1],board[8][2]]
    box8=[board[6][3],board[6][4],board[6][5],board[7][3],board[7][4],board[7][5],board[8][3],board[8][4],board[8][5]]
    box9=[board[6][6],board[6][7],board[6][8],board[7][6],board[7][7],board[7][8],board[8][6],board[8][7],board[8][8]]
    boxValues=[box1,box2,box3,box4,box5,box6,box7,box8,box9]
    return boxValues
end


def validBoard(combination)
    #rowArray is same as combination
    colArray=getCol(combination)
    boxArray=getBox(combination)
    for i in (0..8)
        if(!valid(combination[i],colArray[i],boxArray[i]))
            return false
        end
    end
    return true
end





#go through every combination
def bruteSolve()
    #2D array representing the problem - unfilled cells are represented by -1
    sudo_problem = [
        [-1,-1,-1,2,6,9,7,-1,1],
        [6,8,-1,5,7,1,4,9,-1],
        [1,9,-1,8,3,4,5,6,-1],
        [8,2,-1,1,9,-1,3,4,-1],
        [-1,-1,4,6,8,2,9,1,-1],
        [-1,5,-1,7,4,3,6,2,8],
        [-1,-1,9,3,2,-1,-1,7,4],
        [-1,4,-1,9,5,-1,1,3,6],
        [7,-1,3,4,1,8,2,5,9],
    ]
    #make row subarrays
    row1=sudo_problem[0]
    row2=sudo_problem[1]
    row3=sudo_problem[2]
    row4=sudo_problem[3]
    row5=sudo_problem[4]
    row6=sudo_problem[5]
    row7=sudo_problem[6]
    row8=sudo_problem[7]
    row9=sudo_problem[8]
    #generate arrays of the numbers missing on each row
    missingR1=numbersNotInRow(row1)
    missingR2=numbersNotInRow(row2)
    missingR3=numbersNotInRow(row3)
    missingR4=numbersNotInRow(row4)
    missingR5=numbersNotInRow(row5)
    missingR6=numbersNotInRow(row6)
    missingR7=numbersNotInRow(row7)
    missingR8=numbersNotInRow(row8)
    missingR9=numbersNotInRow(row9)
    #generate all permutations of missing numbers in each row
    allR1Combinations=missingR1.permutation().to_a
    allR2Combinations=missingR2.permutation().to_a
    allR3Combinations=missingR3.permutation().to_a
    allR4Combinations=missingR4.permutation().to_a
    allR5Combinations=missingR5.permutation().to_a
    allR6Combinations=missingR6.permutation().to_a
    allR7Combinations=missingR7.permutation().to_a
    allR8Combinations=missingR8.permutation().to_a
    allR9Combinations=missingR9.permutation().to_a

    allR1Combinations.each_with_index do |value1,index1|
        allR2Combinations.each_with_index do |value2,index2|
            allR3Combinations.each_with_index do |value3,index3|
                allR4Combinations.each_with_index do |value4,index4|
                    allR5Combinations.each_with_index do |value5,index5|
                        allR6Combinations.each_with_index do |value6,index6|
                            allR7Combinations.each_with_index do |value7,index7|
                                allR8Combinations.each_with_index do |value8,index8|
                                    allR9Combinations.each_with_index do |value9,index9|
                                        rowsToPlugIn=[value1,value2,value3,value4,value5,value6,value7,value8,value9]
                                        combination=generateBoardCombination(rowsToPlugIn)
                                        if(validBoard(combination))
                                            return combination
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    puts "No valid combination found"
end    
solution=bruteSolve()
pp solution                     