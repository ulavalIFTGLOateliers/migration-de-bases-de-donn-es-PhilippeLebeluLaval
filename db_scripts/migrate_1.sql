ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician ADD role varchar(50);
UPDATE musician
set role = case
    when singerName = 'Alina' then 'vocals'
    when singerName = 'Mysterio' then 'guitar'
    when singerName = 'Rainbow' then 'percussion'
    when singerName = 'Luna' then 'piano'
end;

ALTER TABLE musician ADD bandName varchar(50);
UPDATE musician
set bandName = case
    when singerName = 'Alina' or singerName = 'Rainbow' then 'Crazy Duo'
    when singerName = 'Mysterio' then 'Mysterio'
    when singerName = 'Luna' then 'Luna'
end;

ALTER TABLE musician CHANGE singerName musicianName varchar(50);

CREATE TABLE band (bandName char(50), creation year, genre varchar(50), primary key (bandName));

INSERT INTO band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band (bandName, creation, genre) VALUES ('Luna', 2009, 'classical');
INSERT INTO band (bandName, creation, genre) VALUES ('Mysterio', 2019, 'pop');



