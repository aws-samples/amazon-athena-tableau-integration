SELECT "student_view"."age" AS "age",
  "student_view"."sex" AS "sex",
  SUM("student_view"."studytime") AS "sum:studytime:ok"
FROM "studentdb"."student_view" "student_view"
GROUP BY "student_view"."age",
  "student_view"."sex"