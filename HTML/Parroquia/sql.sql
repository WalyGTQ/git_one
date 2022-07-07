CREATE TABLE `bdcensoguate`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `personaApellidos` VARCHAR(45) NOT NULL,
  `personaNombres` VARCHAR(45) NOT NULL,
  `personaEdad` INT NOT NULL,
  `personaIngresoQ` DECIMAL(7,2) NULL DEFAULT 0,
  `personaDpi` VARCHAR(15) NULL DEFAULT 'No especificado',
  `personaNit` VARCHAR(15) NULL DEFAULT 'No especificado',
  `personaOficio` INT NULL DEFAULT 0,
  `personaRaza` INT NULL DEFAULT 0,
  `personaProfesion` INT NULL DEFAULT 0,
  `personaReligion` INT NULL DEFAULT 0,
  `personaNivelacademico` INT NULL DEFAULT 0,
  `personaCicloVital` INT NULL DEFAULT 0,
  `personaDepartamento` INT NULL DEFAULT 0,
  `personaRegion` INT NULL DEFAULT 0,
  PRIMARY KEY (`idpersona`),
  UNIQUE INDEX `personaDpi_UNIQUE` (`personaDpi` ASC) VISIBLE,
  UNIQUE INDEX `personaNit_UNIQUE` (`personaNit` ASC) VISIBLE,
  INDEX `fk_persona_etapa_vital_idx` (`personaCicloVital` ASC) VISIBLE,
  INDEX `fk_persona_nivel_academico_idx` (`personaNivelacademico` ASC) VISIBLE,
  INDEX `fk_persona_oficio_idx` (`personaOficio` ASC) VISIBLE,
  INDEX `fk_persona_profesion_idx` (`personaProfesion` ASC) VISIBLE,
  INDEX `fk_persona_raza_idx` (`personaRaza` ASC) VISIBLE,
  INDEX `fk_persona_religion_idx` (`personaReligion` ASC) VISIBLE,
  INDEX `fk_persona_departamento_idx` (`personaDepartamento` ASC) VISIBLE,
  INDEX `fk_persona_region_idx` (`personaRegion` ASC) VISIBLE,
  CONSTRAINT `fk_persona_etapa_vital`
    FOREIGN KEY (`personaCicloVital`)
    REFERENCES `bdcensoguate`.`etapaciclovital` (`idetapaciclovital`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_nivel_academico`
    FOREIGN KEY (`personaNivelacademico`)
    REFERENCES `bdcensoguate`.`nivelacademico` (`idnivelacademico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_oficio`
    FOREIGN KEY (`personaOficio`)
    REFERENCES `bdcensoguate`.`oficio` (`idoficio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_profesion`
    FOREIGN KEY (`personaProfesion`)
    REFERENCES `bdcensoguate`.`profesion` (`idprofesion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_raza`
    FOREIGN KEY (`personaRaza`)
    REFERENCES `bdcensoguate`.`raza` (`idraza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_religion`
    FOREIGN KEY (`personaReligion`)
    REFERENCES `bdcensoguate`.`religion` (`idreligion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_departamento`
    FOREIGN KEY (`personaDepartamento`)
    REFERENCES `bdcensoguate`.`departamento` (`iddepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_region`
    FOREIGN KEY (`personaRegion`)
    REFERENCES `bdcensoguate`.`region` (`idregion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


    INSERT INTO bdcensoguate.departamento
(iddepartamento, namedepartamento)
VALUES
(1,"Chimaltenango"),
(null,"Guatemala"),
(null,"Sacatepequez"),
(null,"Quetzaletenango"),
(null,"Zacapa");

INSERT INTO bdcensoguate.etapaciclovital
(idetapaciclovital, etapaciclovitalcol)
VALUES
(1,"Niñez"),
(2,"Adulto"),
(3,"Joven"),
(4,"Adolecente"),
(5,"Anciano");


INSERT INTO bdcensoguate.nivelacademico
(idnivelacademico, nivelacademico_col)
VALUES
(1,"Kinder"),
(2,"Pre-Primaria"),
(3,"Primaria"),
(4,"Diversificado"),
(5,"Superior");


INSERT INTO bdcensoguate.oficio
(idoficio, oficio_nombre)
VALUES
(1,"Dependiente"),
(2,"Trabajador"),
(3,"Propio"),
(4,"Gerente"),
(5,"Couch");


INSERT INTO bdcensoguate.profesion
(idprofesion, profesion_nombre)
VALUES
(1,"Abogado"),
(2,"Doctor"),
(3,"Ingeniero"),
(4,"Licenciado"),
(5,"Master");



INSERT INTO bdcensoguate.raza
(idraza, raza_nombre)
VALUES
(1,"Indigena"),
(2,"LAtino"),
(3,"Americano"),
(4,"Europeo"),
(5,"Maya");



INSERT INTO bdcensoguate.region
(idregion, region_nombre)
VALUES
(1,"Norte"),
(2,"Sur"),
(3,"Oriente"),
(4,"Occidente"),
(5,"Central");


INSERT INTO bdcensoguate.religion
(idreligion, religion_nombre)
VALUES
(1,"Evangelico"),
(2,"Catolico"),
(3,"Pentecostal"),
(4,"ROmano"),
(5,"Anglicano");



INSERT INTO bdcensoguate.personas
(idpersona, personaApellido, personaNombre, personaEdad, personaIngresoQ, personaDpi, personaNit)
VALUES
(1,"Acuta Rumpich","Walter Roberto",25,2000,12345678,1234),
(2,"MArtinez Calel","Moreno Valenco",22,2055,65848595,3215),
(3,"Arrega Gonzales","Carlos Antonio",32,1600,23658456,3621),
(4,"Valdemar Cum","Andre Bartolo",12,5000,68545896,23158),
(5,"Trepecio Jacalo","Jacobo Arroz",18,3000,236584584,3216);

UPDATE bdcensoguate.personas
SET
personaNombre = "Walter Roberto"
WHERE 
idpersona = 5;


DELETE FROM bdcensoguate.personas
WHERE idpersona = 5;

TRUNCATE TABLE bdcensoguate.personas;

describe personas;

describe personas;

DESCRIBE personas;

DROP TABLE personas;

