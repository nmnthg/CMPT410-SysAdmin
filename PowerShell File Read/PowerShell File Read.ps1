$depts = Get-Content C:\Users\John\Desktop\Departments.txt
$emps = Get-Content C:\Users\John\Desktop\Names.txt

$des = @()

foreach($d in $depts){
    if($d.Split(",")[1] -eq "Security Department"){
        $des+=$d.Split(",")[0]
    }
}

foreach($u in $des){
    foreach($e in $emps){
        if($u -eq $e.split(",")[2]){
            $out = $null
            $out = $e.split(",")[0] + "," + $e.split(",")[1]
            $out >> C:\Users\John\Desktop\SEC_EMP.txt.txt
        }
    }
}