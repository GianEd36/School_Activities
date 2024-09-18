<?php
    echo 'Create an Array of Student Grades: ';
    $grades = array(55, 60, 65, 70, 75, 80, 85, 90, 95, 100);
    foreach ($grades as $grade) {
        echo $grade.', ';
    }
    //
    echo '<br>Create an Function to Calculate the Average Grade:';
    function calculateAverage(array $grades){
        $average = 0;
        foreach($grades as $grade){
            $average += $grade;
        }
        return $average / 10;
    }
    echo '<br>Average of the array is:'.calculateAverage(grades: $grades);
    //
    echo '<br>Create a function to Find the highest and lowest grades:';
    function findHighestGrade(array $grades){
        $highest = 0;
        foreach($grades as $grade){
            if($highest < $grade){
                $highest = $grade;
            }
        }
        return $highest;
    }
    function findLowestGrade(array $grades){
        $lowest = $grades[0];
        foreach($grades as $grade){
            if($lowest > $grade){
                $lowest = $grade;
            }
        }
        return $lowest;
    }
    echo '<br>Highest grade:'.findHighestGrade(grades: $grades);
    echo '<br>Lowest grade:'.findLowestGrade(grades: $grades).'<br>';
    //Create a function to Categorize Grades
    function categorizeGrades(array $grades){
        $categorized = [];
        foreach($grades as $grade){
            if ($grade >= 90 && $grade <= 100) {
                $categorized['Excellent'] = $grade;  
            } 
            elseif ($grade >= 80 && $grade < 90) {
                $categorized['Good'] = $grade;      
            } 
            elseif ($grade >= 70 && $grade < 80) {             //UMAY NA UMAY NA AKO SA ASSOCIATIVE ARRAYS
                $categorized['Average']= $grade;    
            } 
            elseif ($grade >= 60 && $grade < 70) {
                $categorized['Poor'] = $grade;      
            } 
            elseif ($grade < 59) {
                $categorized['Fail'] = $grade;
            }
            //echo "<br>".$categorized;
        }
        return $categorized;
    }
    $results = categorizeGrades($grades);
    foreach($results as $result=>$grade){ 
        echo "$result = $grade <br>";
    }

?>
