CREATE TABLE PLAN(
	id_plan serial NOT NULL,
	plan varchar(30) NOT NULL,
	clave varchar(10) NOT NULL,
	id_carrera varchar(10) NOT NULL
	);

CREATE TABLE CARRERA(
	clave varchar(10) NOT NULL,
	carrera varchar(50) NOT NULL
	);

CREATE TABLE ASIGNATURA(
	id_asignatura serial NOT NULL,
	asignatura varchar(50)NOT NULL,
	carrera varchar(10) NOT NULL,
	semestre numeric(2) NOT NULL,
	creditos numeric(2) NOT NULL
);

CREATE TABLE PLAN_ASIGNATURA(
	idasigna integer NOT NULL,
	idplan integer NOT NULL,
	idasig_seriacion integer NOT NULL,
	idplan_seriacion integer NOT NULL
);

CREATE TABLE GRUPO(
	id_grupo integer NOT NULL,
	id_asignatura integer NOT NULL,
	id_plan integer NOT NULL
);

alter table "plan" add PRIMARY KEY(id_plan);
alter table "carrera" add PRIMARY KEY(clave);
alter table "asignatura" add PRIMARY KEY(id_asignatura);
alter table "plan_asignatura" add PRIMARY KEY(idasigna, idplan);
alter table "grupo" add PRIMARY KEY(id_grupo);

alter table "plan" add FOREIGN KEY(id_carrera) references carrera(clave);
alter table "plan_asignatura" ADD FOREIGN KEY (idasigna)references "asignatura" (id_asignatura);
alter table "plan_asignatura" add FOREIGN KEY(idplan) references "plan" (id_plan);

alter table "grupo" add foreign key(id_asignatura) references "plan_asignatura"(idasigna);
alter table "grupo" add foreign key(id_plan) references "plan_asignatura"(idplan);

insert into carrera values(305, 'DERECHO');
insert into carrera values(310, 'RELACIONES INTERNACIONALES');
insert into carrera values(121, 'MATEMATICAS APLICADAS Y COMPUTACIÓN');

--MATERIAS DERECHO
insert into asignatura values(1106, 'INTRODUCCIÓN AL ESTUDIO DEL DERECHO', '1106', 1, 8);
insert into asignatura values(1208, 'TEORÍA ECONÓMICA', '1208', 2, 8);
insert into asignatura values(1206, 'ÉTICA JURÍDICA', '1206', 2, 8);
insert into asignatura values(1406, 'CONTRAROS CIVILES', '1406', 4, 12);
insert into asignatura values(1405, 'ARGUMENTACIÓN JURÍDICA', '1405', 4, 4);

--MATERIAS RELACIONES
insert into asignatura values(2125, 'INTRODUCCIÓN A LA SOCIOLOGÍA', '2125', 1, 8);
insert into asignatura values(2201, 'DERECHO CONSTITUCIONAL', '2201', 2, 8);
insert into asignatura values(2202, 'ESTADÍSTICA INFERENCIAL', '2202', 2, 10);
insert into asignatura values(2205, 'TEORÍA DEL ESTADO Y DEL GOBIERNO', '2205', 2, 8);
insert into asignatura values(2304, 'POLÍTICA MUNDIAL II', '2304', 3, 8);

--MATERIAS MAC
insert into asignatura values(1378, 'ÁLGEBRA SUPERIOR', '1378', 1, 12);
insert into asignatura values(1352, 'PROGRAMACIÓN I', '1352', 1, 10);
insert into asignatura values(1310, 'TEORÍA DE GRÁFICAS', '1310', 3, 8);
insert into asignatura values(1308, 'MÉTODOS NUMÉRICOS II', '1308', 4, 6);
insert into asignatura values(1476, 'BASE DE DATOS', '1406', 4, 10);

