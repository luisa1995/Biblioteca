IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='insertalibros' AND XTYPE='P')
BEGIN
  DROP PROCEDURE insertalibros
END
go

create procedure insertalibros
  @titulo varchar (100),
  @years varchar (50),
  @noPaginas smallint = null,
  @identificacion varchar (250)
as
begin
   insert into libros(
          titulo,
          years,
          noPaginas,
          identificacion)   values(
   @titulo,
   @years,
   @noPaginas,
   @identificacion)
SELECT @@IDENTITY
end 

go

IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='cambiarlibros' AND XTYPE='P')
BEGIN
  DROP PROCEDURE cambiarlibros
END
go

create procedure cambiarlibros
  @id int,
  @titulo varchar (100),
  @years varchar (50),
  @noPaginas smallint = null,
  @identificacion varchar (250)
as
begin
   update libros set 
          titulo = @titulo,
          years = @years,
          noPaginas = @noPaginas,
          identificacion = @identificacion where 
   id = @id
end 

go


IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='obtenerlibros' AND XTYPE='P')
BEGIN
  DROP PROCEDURE obtenerlibros
END
go

create procedure obtenerlibros
as
begin
   select  
          isnull(id,0) id,
          isnull(titulo,'') titulo,
          isnull(years,'') years,
          isnull(noPaginas,0) noPaginas,
          isnull(identificacion,'') identificacion
 from libros
end 

go

