use LAB3

-- ¬Ќ
--при удалении видео с записью игры удал€ютс€ тайм-коды выступлени€ команд в этой игре,
--если же это видео с нарезками выступлений определенной команды, то удал€етс€ информаци€ об этой нарезке

if object_id('dbo.videotr', 'tr') is not null drop trigger dbo.videotr

--чтобы сразу удала€лась информаци€ о нарезках(video_selection), сделать on delete cascade на video_id в video_selection

alter table video_selection
drop constraint "VIDEO_FK"

alter table video_selection 
add constraint "VIDEO_FK"
foreign key(video_id)
references videos(video_id)	on delete cascade

--в таблице с информацией об игре(game) сделать чтобы при удалении видео video_id стало null

alter table	game 
drop constraint "VIDEO_FK_2"

alter table game 
add constraint "VIDEO_FK_2"
foreign key(video_id)
references videos(video_id) on delete set null

--сам триггер

go
create trigger videotr on videos
instead of delete as 
begin
	delete from time_code
	where game_id in 
	(select game_id 
		from game, deleted
		where deleted.video_id = game.video_id)
	delete from videos
	where video_id in
	(select video_id
		from deleted)
end

select count(*)
	from time_code
select count(*)
	from videos
delete from videos where video_id = 42
select count(*)
	from time_code
select count(*)
	from videos


select count(*)
	from video_selection
select count(*)	
	from videos

delete from videos where video_id = 100000

select count(*)
	from video_selection
select count(*)	
	from videos