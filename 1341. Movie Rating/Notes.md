## (SELECT... ORDER BY..) UNION (SELECT .. ORDER BY...) does work.

```sql
Select <column1>
      ,<column2>
      ,<aggregate column3>
From <Table1>
<Some joins in there>
Where <conditions>
group by <column2>, <column1>

union

select <column2>
      ,<column3>
      ,<aggregate column4>
From <Table2>
<Some more joins here>
Where <conditions>
group by <column2>, <column3>
order by <column2>

```

#### will through UNION error instead create two seperate CTE and use UNION in

```sql
SELECT * FROM cte1
UNION
SELECT * FROM cte2
```

#### UNION Clause

#### The UNION clause has this general form:

#### select_statement UNION [ ALL | DISTINCT ] select_statement

#### select_statement is any SELECT statement without an ORDER BY, LIMIT, FOR NO KEY UPDATE, FOR UPDATE, FOR SHARE, or FOR KEY SHARE clause. (ORDER BY and LIMIT can be attached to a subexpression if it is enclosed in parentheses. Without parentheses, these clauses will be taken to apply to the result of the UNION, not to its right-hand input expression.)
