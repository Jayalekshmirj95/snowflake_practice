create or replace warehouse test_wh
with warehouse_size = xsmall
auto_suspend=300
auto_resume= TRUE
initially_suspended=TRUE
comment='X-Small virtual warehouse for database administrator queries';

drop warehouse test_wh;
