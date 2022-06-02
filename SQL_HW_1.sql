--  1. ������� ��� ���� � ��� ������.
select * from public.students
--  2.  ������� ���� ��������� � �������
select students from public.students
--  3. ������� ������ Id �������������
select id from public.students
--  4. ������� ������ ��� �������������
select name from public.students
--  5. ������� ������ email �������������
select email from public.students
--  6. ������� ��� � email �������������
select name, email from public.students
--  7. ������� id, ���, email � ���� �������� �������������
select name, email, created_on from public.students
--  8. ������� ������������� ��� password 12333
select students from public.students
where password = 12333
--  9.  ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select students from public.students
where created_on = '2021-03-26 00:00:00'
--  10. ������� ������������� ��� � ����� ���� ����� ����
select students from public.students
where name like '%����%'
--  11.������� ������������� ��� � ����� � ����� ���� 8
select students from public.students
where name like '%8'
--  12.  ������� ������������� ��� � ����� � ���� ����� �
select students from public.students
where name like '%a%'
--  13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select students from public.students
where created_on = '2021-07-12 00:00:00'
--  14.  ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select students from public.students
where created_on = '2021-07-12 00:00:00' and password = 1m313
--  15.  ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select students from public.students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%'
--  16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select students from public.students
where created_on = '2021-07-12 00:00:00' and name like '%8%'
--  17. ������� ������������ � ������� id ����� 110
select students from public.students
where id = 110
--  18. ������� ������������ � ������� id ����� 153
select students from public.students
where id = 153
--  19.  ������� ������������ � ������� id ������ 140
select students from public.students
where id > 140
--  20.������� ������������ � ������� id ������ 130
select students from public.students
where id < 130
--  21. ������� ������������ � ������� id ������ 127 ��� ������ 188
select students from public.students
where id < 127 or id > 188
--  22. ������� ������������ � ������� id ������ ���� ����� 137
select students from public.students
where id <= 137
--  23.  ������� ������������ � ������� id ������ ���� ����� 137
select students from public.students
where id >= 137
--  24. ������� ������������ � ������� id ������ 180 �� ������ 190
select students from public.students
where id > 180 and id < 190
--  25. ������� ������������ � ������� id ����� 180 � 190
select students from public.students
where id in (180-190)
--  26. ������� ������������� ��� password ����� 12333, 1m313, 123313
select students from public.students
where password in (12333, 1m313, 123313)
--  27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select students from public.students
where password in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
--  28. ������� ����������� id
select min(id) from public.students
--  29. ������� ������������.
select max(id) from public.students
--  30. ������� ���������� �������������
select count(students) from public.students
--  31.  ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select id, name, created_on from public.students
order by created_on
--  32.������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select id, name, created_on from public.students
order by created_on desc