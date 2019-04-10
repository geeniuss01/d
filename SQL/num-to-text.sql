with  
c(n, d, p) as ( VALUES(51, 6, 1) UNION ALL SELECT n/10, n%10, p*10 from c where n > 0 limit 5),
bb(d) as (select d*p from c ORDER by p desc) ,
cr as (select d from c WHERE p > 99 UNION SELECT 100 ),
cb as (SELECT d*p from c where p < 100 order by p DESC),
r as (SELECT * from cr UNION all select * from cb)
select chq.txt from chq, r where chq.nm = r.d
