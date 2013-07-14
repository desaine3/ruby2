# Returns the grade from the mark
#  80 - 100  => 'a'
#  60 - 80   => 'b' 	
#  40 - 60   => 'c'
#  20 - 40   => 'd'
#  0  - 20   => 'e'



def grade (mark)

    if  mark >=80
        grade =  'a'
    end
    if mark <80 && mark>=60
        grade ='b'
    end
    if mark <60 && mark >=40 
        grade ='c'
    end
     if mark <40 && mark >=30 
        grade = 'd'
    end
     if mark <20
        grade ='e'
    end

    return grade
end

