IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='insertaautores' AND XTYPE='P')
BEGIN
  DROP PROCEDURE insertaautores
END
go

create procedure insertaautores
  @identificacion varchar (250),
  @nombreCompleto varchar (250),
  @fechaNacimiento date,
  @ciudad varchar (300) = null,
  @email varchar (150) = null
as
begin
   insert into autores(
          identificacion,
          nombreCompleto,
          fechaNacimiento,
          ciudad,
          email)   values(
   @identificacion,
   @nombreCompleto,
   @fechaNacimiento,
   @ciudad,
   @email)
SELECT @@IDENTITY
end 

go

IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='cambiarautores' AND XTYPE='P')
BEGIN
  DROP PROCEDURE cambiarautores
END
go

create procedure cambiarautores
  @id int,
  @identificacion varchar (250),
  @nombreCompleto varchar (250),
  @fechaNacimiento date,
  @ciudad varchar (300) = null,
  @email varchar (150) = null
as
begin
   update autores set 
          nombreCompleto = @nombreCompleto,
          fechaNacimiento = @fechaNacimiento,
          ciudad = @ciudad,
          email = @email where 
   identificacion = @identificacion
end 

go



IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='obtenerautores' AND XTYPE='P')
BEGIN
  DROP PROCEDURE obtenerautores
END
go

create procedure obtenerautores
as
begin
   select  
          isnull(id,0) id,
          isnull(identificacion,'') identificacion,
          isnull(nombreCompleto,'') nombreCompleto,
          isnull(fechaNacimiento,'') fechaNacimiento,
          isnull(ciudad,'') ciudad,
          isnull(email,'') email
 from autores
end 

go
