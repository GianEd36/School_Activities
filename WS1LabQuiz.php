<?php
    echo 'Create an Array of Student Grades: <br>';
    $grades = [
        "Gian"=>85, 
        "Kyra"=>86,
        "Ruan Mei"=>100, 
        "Jediah"=>83,
        "Yanna"=>75,  
        "Jervan"=>84,  
        "Pia"=>76, 
        "Talyn"=>60,  
        "Mike"=>79,
        "Acheron"=>69,
        "Hook"=>50
    ];
    foreach ($grades as $keys=>$value) {
        echo $keys.': '.$value.'<br>';
    }
    //
    echo '<br>Create an Function to Calculate the Average Grade:';
    function calculateAverage(array $grades){
        return $average = array_sum($grades)/count($grades);//readable
    }
    echo '<br>Average of the students is:'.calculateAverage($grades).'<br>';
    //
    echo '<br>Create a function to Find the highest and lowest grades:<br>';
    function findHighestGrade(array $grades){
        $highkey='';// We are declaring to catch the array values for the conditional value
        $highval=null;// of the assoc array
        foreach ($grades as $key => $value) {
            if($highval === null || $value > $highval){
                $highkey= $key;// catches the highest key
                $highval= $value;// catches the value that we used for conditionals
            }
        }
        return [$highkey=>$highval];
        //return max($grades); // easiest way optional
    }
    function findLowestGrade(array $grades){
        $lkey = '';//same as highest but different naming convention
        $lvalue = null;
        foreach ($grades as $key => $value) {
            if($lvalue === null || $value < $lvalue){//the difference
                $lkey = $key;
                $lvalue = $value;
            }
        }
        return [$lkey=>$lvalue];
        //return min($grades);
    }
    //Create a function to Categorize Grades
    function categorizeGrades(array $grades){
        $categorized = [];
        //We're inserting the keys from the grades assoc arrays and giving it the rating
        //on this category
        foreach($grades as $keys=>$values){
            if ($values >= 90 && $values <= 100) {
                $categorized[$keys] = "Excellent";
            } 
            elseif ($values >= 80 && $values < 90) {
                $categorized[$keys] = "Good";       
            } 
            elseif ($values >= 70 && $values < 80) {             //UMAY NA UMAY NA AKO SA ASSOCIATIVE ARRAY
                $categorized[$keys] = "Average";      
            } 
            elseif ($values >= 60 && $values < 70) {
                $categorized[$keys] = "Poor";       
            } 
            else{
                $categorized[$keys] = "Fail";   
            }
        }
        return $categorized;
    }

    $highest=findHighestGrade($grades);
    $lowest=findLowestGrade($grades);
    $results = categorizeGrades($grades);

    foreach($highest as $keys=> $values){
        echo "The Highest grader of the class is $keys with a grade of : $values<br>";
    }
    foreach($lowest as $keys=> $values){
        echo "The lowest grader of the class is $keys with a grade of : $values<br>";
    }
    echo '<br>Categorized grades:<br>';
    foreach($results as $keys=>$values){ 
        echo "$keys: $values<br>";
    }

?>
