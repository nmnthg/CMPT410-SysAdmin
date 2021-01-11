$Dept = Import-Csv ./Departments.txt -Header 'No','DeptName'
$Names = Import-Csv ./Names.txt -Header 'First', 'Last', 'No'
foreach ($employee in $Dept){
 if($employee.DeptName -eq 'Security Department'){
  foreach ($name in $Names){
   if($name.No -eq $employee.No){
    $out = $name.First + " " + $name.Last
    $out >> ./SEC_EMP.txt
   }
  }
 }
}
