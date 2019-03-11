# Proyecto Egresados Colmex
# Encuesta de Seguimiento a Egresados de El Colegio de Mexico
# Mauricio Rodriguez Abreu // Stephano Soriano Urbán 
# Agosto 2017... Noviembre 2017

# Script para analizar la base de datos 


# La base Completa:

BaseC <- load("BaseC.Rda") #  591
dataC <- data
dataC$BaseCom <- rep("C", length(data$id))
# Ordenando la base para que aparezca BaseCom en la primera columna
dataC <- dataC[c(395, 1:394)]


# La base Incompleta:

BaseI <- load("BaseI.Rda") #  409
dataI <- data
dataI$BaseCom <- rep("I", length(data$id))
# Ordenando la base para que aparezca BaseCom en la primera columna
dataI <- dataI[c(395, 1:394)]


# Unificando BaseC y BaseI

data <- rbind(dataC, dataI)
save(data, file = "BaseU.Rda")


load("BaseU.Rda")




# ********************************************************************************

# Primera fase, renombrar las variables de la base de datos 

# ********************************************************************************

colnames(data)[4] <- "date"
colnames(data)[5] <- "Nombre(s)"
colnames(data)[6] <- "Apellido"
colnames(data)[7] <- "Email"
colnames(data)[8] <- "Sexo"
colnames(data)[9] <- "Edad"
colnames(data)[10] <- "EntNac"
colnames(data)[11] <- "Nacionalidad"
colnames(data)[12] <- "Residencia"
colnames(data)[13] <- "EdoCon"
colnames(data)[14] <- "Hijos"
# Antecedentes familiares
colnames(data)[15] <- "PadreEsc"
colnames(data)[16] <- "MadreEsc"
colnames(data)[17] <- "PadreOc15"
colnames(data)[18] <- "MadreOc15"
colnames(data)[19] <- "PadreOTRA"
colnames(data)[20] <- "MadreOTRA"
# Antecedentes escolares
colnames(data)[21] <- "PrimTipo"
colnames(data)[22] <- "PrimInicio"
colnames(data)[23] <- "PrimTermino"
colnames(data)[24] <- "SecuTipo"
colnames(data)[25] <- "SecuInicio"
colnames(data)[26] <- "SecuTermino"
colnames(data)[27] <- "BachTipo"
colnames(data)[28] <- "BachInicio"
colnames(data)[29] <- "BachTermino"
colnames(data)[30] <- "LicInstitucion"
colnames(data)[31] <- "LicPais"
colnames(data)[32] <- "LicTipo"
colnames(data)[33] <- "LicPrograma"
colnames(data)[34] <- "LicCentro"
colnames(data)[35] <- "LicInicio"
colnames(data)[36] <- "LicTermino"
colnames(data)[37] <- "LicTitulo"
colnames(data)[38] <- "LicAnioTit"
colnames(data)[39] <- "LicInstitucion2"
colnames(data)[40] <- "LicPais2"
colnames(data)[41] <- "LicTipo2"
colnames(data)[42] <- "LicPrograma2"
colnames(data)[43] <- "LicCentro2"
colnames(data)[44] <- "LicInicio2"
colnames(data)[45] <- "LicTermino2"
colnames(data)[46] <- "LicTitulo2"
colnames(data)[47] <- "LicAnioTit2"
colnames(data)[48] <- "MaesInstitucion"
colnames(data)[49] <- "MaesPais"
colnames(data)[50] <- "MaesTipo"
colnames(data)[51] <- "MaesPrograma"
colnames(data)[52] <- "MaesCentro"
colnames(data)[53] <- "MaesInicio"
colnames(data)[54] <- "MaesCompleta"
colnames(data)[55] <- "MaesTermino"
colnames(data)[56] <- "MaesTitulo"
colnames(data)[57] <- "MaesAnioTit"
colnames(data)[58] <- "MaesInstitucion2"
colnames(data)[59] <- "MaesPais2"
colnames(data)[60] <- "MaesTipo2"
colnames(data)[61] <- "MaesPrograma2"
colnames(data)[62] <- "MaesCentro2"
colnames(data)[63] <- "MaesInicio2"
colnames(data)[64] <- "MaesCompleta2"
colnames(data)[65] <- "MaesTermino2"
colnames(data)[66] <- "MaesTitulo2"
colnames(data)[67] <- "MaesAnioTit2"
colnames(data)[68] <- "DocInstitucion"
colnames(data)[69] <- "DocPais"
colnames(data)[70] <- "DocTipo"
colnames(data)[71] <- "DocPrograma"
colnames(data)[72] <- "DocCentro"
colnames(data)[73] <- "DocInicio"
colnames(data)[74] <- "DocCompleto"
colnames(data)[75] <- "DocTermino"
colnames(data)[76] <- "DocTitulo"
colnames(data)[77] <- "DocAnioTit"
colnames(data)[78] <- "DocInstitucion2"
colnames(data)[79] <- "DocPais2"
colnames(data)[80] <- "DocTipo2"
colnames(data)[81] <- "DocPrograma2"
colnames(data)[82] <- "DocCentro2"
colnames(data)[83] <- "DocInicio2"
colnames(data)[84] <- "DocCompleto2"
colnames(data)[85] <- "DocTermino2"
colnames(data)[86] <- "DocTitulo2"
colnames(data)[87] <- "DocAnioTit2"
colnames(data)[88] <- "NoTitulo1"
colnames(data)[89] <- "NoTitulo2"
# Razones para elegir el Colegio de Mexico
colnames(data)[90] <- "RazonColmex"
colnames(data)[91] <- "RazonColmex2"
colnames(data)[92] <- "RazonPrograma"
colnames(data)[93] <- "RazonPrograma2"
colnames(data)[94] <- "-OtroPrograma"
colnames(data)[95] <- "RazonColmexB"
colnames(data)[96] <- "RazonColmexB2"
colnames(data)[97] <- "RazonProgramaB"
colnames(data)[98] <- "RazonProgramaB2"
colnames(data)[99] <- "OtroProgramaB"
colnames(data)[100] <- "RazonColmexC"
colnames(data)[101] <- "RazonProgramaC"
colnames(data)[102] <- "RazonProgramaC2"
# Antecedentes laborales
colnames(data)[103] <- "ExpPrevia"
colnames(data)[104] <- "TP1_Empresa"
colnames(data)[105] <- "TP1_AnioI"
colnames(data)[106] <- "TP1_AnioF"
colnames(data)[107] <- "TP2_Empresa"
colnames(data)[108] <- "TP2_AnioI"
colnames(data)[109] <- "TP2_AnioF"
colnames(data)[110] <- "TP3_Empresa"
colnames(data)[111] <- "TP3_AnioI"
colnames(data)[112] <- "TP3_AnioF"
colnames(data)[113] <- "TP4_Empresa"
colnames(data)[114] <- "TP4_AnioI"
colnames(data)[115] <- "TP4_AnioF"
colnames(data)[116] <- "TP5_Empresa"
colnames(data)[117] <- "TP5_AnioI"
colnames(data)[118] <- "TP5_AnioF"
colnames(data)[119] <- "TP6_Empresa"
colnames(data)[120] <- "TP6_AnioI"
colnames(data)[121] <- "TP6_AnioF"
colnames(data)[122] <- "TP7_Empresa"
colnames(data)[123] <- "TP7_AnioI"
colnames(data)[124] <- "TP7_AnioF"
colnames(data)[125] <- "TP8_Empresa"
colnames(data)[126] <- "TP8_AnioI"
colnames(data)[127] <- "TP8_AnioF"
# Empleo despues del colmex
colnames(data)[128] <- "EmpleoSalir"
colnames(data)[129] <- "EmpleoBusqueda"
colnames(data)[130] <- "NumTrabajos"
colnames(data)[131] <- "RazonNoTraba1"
colnames(data)[132] <- "RazonNoTraba2"
colnames(data)[133] <- "BusquedaTiempo"
colnames(data)[134] <- "Demora1"
colnames(data)[135] <- "Demora2"
colnames(data)[136] <- "Medio1"
colnames(data)[137] <- "Medio2"
colnames(data)[138] <- "Factor1"
colnames(data)[139] <- "Factor2"
colnames(data)[140] <- "Factor3"
colnames(data)[141] <- "Factor4"
colnames(data)[142] <- "Factor5"
colnames(data)[143] <- "Factor6"
colnames(data)[144] <- "Factor7"
colnames(data)[145] <- "Factor8"
colnames(data)[146] <- "Factor9"
colnames(data)[147] <- "Factor10"
colnames(data)[148] <- "Factor11"
#Primer empleo
colnames(data)[149] <- "T1InicioM"
colnames(data)[150] <- "T1InicioA"
colnames(data)[151] <- "T1Puesto"
colnames(data)[152] <- "T1Puesto2"
colnames(data)[153] <- "T1Institucion"
colnames(data)[154] <- "T1Regimen"
colnames(data)[155] <- "T1Funcion"
colnames(data)[156] <- "T1Funcion2"
colnames(data)[157] <- "T1Contrato"
colnames(data)[158] <- "T1Ingreso1"
colnames(data)[159] <- "T1Ingreso2"
colnames(data)[160] <- "T1Prestaciones1"
colnames(data)[161] <- "T1Prestaciones2"
colnames(data)[162] <- "T1Prestaciones3"
colnames(data)[163] <- "T1Prestaciones4"
colnames(data)[164] <- "T1Prestaciones5"
colnames(data)[165] <- "T1Prestaciones6"
colnames(data)[166] <- "T1Prestaciones7"
colnames(data)[167] <- "T1Prestaciones8"
colnames(data)[168] <- "T1Prestaciones9"
colnames(data)[169] <- "T1Horas"
colnames(data)[170] <- "T1DuracionA"
colnames(data)[171] <- "T1DuracionM"
colnames(data)[172] <- "T1Coincidencia"
colnames(data)[173] <- "T1Trabaja"
colnames(data)[174] <- "TARazon"
colnames(data)[175] <- "TARazon2"
colnames(data)[176] <- "TAMedio"
colnames(data)[177] <- "TAMedio2"
colnames(data)[178] <- "TAPuesto"
colnames(data)[179] <- "TAPuesto2"
colnames(data)[180] <- "TAInstitucion"
colnames(data)[181] <- "TARegimen"
colnames(data)[182] <- "TAFuncion"
colnames(data)[183] <- "TAContrato"
colnames(data)[184] <- "TAIngreso1"
colnames(data)[185] <- "TAIngreso2"
colnames(data)[186] <- "TAPrestaciones1"
colnames(data)[187] <- "TAPrestaciones2"
colnames(data)[188] <- "TAPrestaciones3"
colnames(data)[189] <- "TAPrestaciones4"
colnames(data)[190] <- "TAPrestaciones5"
colnames(data)[191] <- "TAPrestaciones6"
colnames(data)[192] <- "TAPrestaciones7"
colnames(data)[193] <- "TAPrestaciones8"
colnames(data)[194] <- "TAPrestaciones9"
colnames(data)[195] <- "TAHoras"
colnames(data)[196] <- "TADuracionA"
colnames(data)[197] <- "TADuracionM"
colnames(data)[198] <- "TACoincidencia"
colnames(data)[199] <- "TAOtroTrabajo"
colnames(data)[200] <- "TAHorasT2"
colnames(data)[201] <- "MejorTrabajo"
colnames(data)[202] <- "Busca"
colnames(data)[203] <- "Busca2"
colnames(data)[204] <- "BuscaHace"
colnames(data)[205] <- "BuscaHace2"
# Trabajo Inicial
colnames(data)[206] <- "TIPuesto"
colnames(data)[207] <- "TIPuesto2"
colnames(data)[208] <- "TIInstitucion"
colnames(data)[209] <- "TIFuncion"
colnames(data)[210] <- "TIFuncion2"
# Empleos subsecuentes
colnames(data)[211] <- "T2Puesto"
colnames(data)[212] <- "T2Institucion"
colnames(data)[213] <- "T2Funcion"
colnames(data)[214] <- "T2Entrada"
colnames(data)[215] <- "T2Salida"
colnames(data)[216] <- "T3Puesto"
colnames(data)[217] <- "T3Institucion"
colnames(data)[218] <- "T3Funcion"
colnames(data)[219] <- "T3Entrada"
colnames(data)[220] <- "T3Salida"
colnames(data)[221] <- "T4Puesto"
colnames(data)[222] <- "T4Institucion"
colnames(data)[223] <- "T4Funcion"
colnames(data)[224] <- "T4Entrada"
colnames(data)[225] <- "T4Salida"
colnames(data)[226] <- "T5Puesto"
colnames(data)[227] <- "T5Institucion"
colnames(data)[228] <- "T5Funcion"
colnames(data)[229] <- "T5Entrada"
colnames(data)[230] <- "T5Salida"
colnames(data)[231] <- "T6Puesto"
colnames(data)[232] <- "T6Institucion"
colnames(data)[233] <- "T6Funcion"
colnames(data)[234] <- "T6Entrada"
colnames(data)[235] <- "T6Salida"
colnames(data)[236] <- "T7Puesto"
colnames(data)[237] <- "T7Institucion"
colnames(data)[238] <- "T7Funcion"
colnames(data)[239] <- "T7Entrada"
colnames(data)[240] <- "T7Salida"
colnames(data)[241] <- "T8Puesto"
colnames(data)[242] <- "T8Institucion"
colnames(data)[243] <- "T8Funcion"
colnames(data)[244] <- "T8Entrada"
colnames(data)[245] <- "T8Salida"
colnames(data)[246] <- "T9Puesto"
colnames(data)[247] <- "T9Institucion"
colnames(data)[248] <- "T9Funcion"
colnames(data)[249] <- "T9Entrada"
colnames(data)[250] <- "T9Salida"
colnames(data)[251] <- "T10Puesto"
colnames(data)[252] <- "T10Institucion"
colnames(data)[253] <- "T10Funcion"
colnames(data)[254] <- "T10Entrada"
colnames(data)[255] <- "T10Salida"
# Exigencias del desempenio profesional
colnames(data)[256] <- "Exigencia1"
colnames(data)[257] <- "Exigencia2"
colnames(data)[258] <- "Exigencia3"
colnames(data)[259] <- "Exigencia4"
colnames(data)[260] <- "Exigencia5"
colnames(data)[261] <- "Exigencia6"
colnames(data)[262] <- "Exigencia7"
colnames(data)[263] <- "Exigencia8"
colnames(data)[264] <- "Exigencia9"
colnames(data)[265] <- "Exigencia10"
colnames(data)[266] <- "Exigencia11"
colnames(data)[267] <- "Organizacion1"
colnames(data)[268] <- "Organizacion2"
colnames(data)[269] <- "Organizacion3"
colnames(data)[270] <- "Organizacion4"
colnames(data)[271] <- "Organizacion5"
colnames(data)[272] <- "Organizacion6"
colnames(data)[273] <- "Organizacion7"
colnames(data)[274] <- "Organizacion8"
colnames(data)[275] <- "Organizacion9"
colnames(data)[276] <- "Organizacion10"
colnames(data)[277] <- "Recomendacion1"
colnames(data)[278] <- "Recomendacion2"
colnames(data)[279] <- "Recomendacion3"
colnames(data)[280] <- "Recomendacion4"
colnames(data)[281] <- "Recomendacion5"
colnames(data)[282] <- "Recomendacion6"
colnames(data)[283] <- "Recomendacion7"
colnames(data)[284] <- "Recomendacion8"
colnames(data)[285] <- "Recomendacion9"
colnames(data)[286] <- "Recomendacion10"
colnames(data)[287] <- "PlanEstudios1"
colnames(data)[288] <- "PlanEstudios2"
colnames(data)[289] <- "PlanEstudios3"
colnames(data)[290] <- "PlanEstudios4"
colnames(data)[291] <- "PlanEstudios5"
colnames(data)[292] <- "PlanEstudios6"
colnames(data)[293] <- "Sugerencias"
colnames(data)[294] <- "Programa"
colnames(data)[295] <- "Tecnica"
colnames(data)[296] <- "Relacion"
colnames(data)[297] <- "SugProfe"
colnames(data)[298] <- "MismaInstitucion"
colnames(data)[299] <- "OtraInstitucion"
colnames(data)[300] <- "MismoPrograma"
colnames(data)[301] <- "--OtroPrograma"
colnames(data)[302] <- "ProgramaB"
colnames(data)[303] <- "Exigencia1B"
colnames(data)[304] <- "Exigencia2B"
colnames(data)[305] <- "Exigencia3B"
colnames(data)[306] <- "Exigencia4B"
colnames(data)[307] <- "Exigencia5B"
colnames(data)[308] <- "Exigencia6B"
colnames(data)[309] <- "Exigencia7B"
colnames(data)[310] <- "Exigencia8B"
colnames(data)[311] <- "Exigencia9B"
colnames(data)[312] <- "Exigencia10B"
colnames(data)[313] <- "Exigencia11B"
colnames(data)[314] <- "Organizacion1B"
colnames(data)[315] <- "Organizacion2B"
colnames(data)[316] <- "Organizacion3B"
colnames(data)[317] <- "Organizacion5B"
colnames(data)[318] <- "Organizacion6B"
colnames(data)[319] <- "Organizacion7B"
colnames(data)[320] <- "Organizacion8B"
colnames(data)[321] <- "Organizacion9B"
colnames(data)[322] <- "Organizacion10B"
colnames(data)[323] <- "Recomendacion1B"
colnames(data)[324] <- "Recomendacion2B"
colnames(data)[325] <- "Recomendacion3B"
colnames(data)[326] <- "Recomendacion4B"
colnames(data)[327] <- "Recomendacion5B"
colnames(data)[328] <- "Recomendacion6B"
colnames(data)[329] <- "Recomendacion7B"
colnames(data)[330] <- "Recomendacion8B"
colnames(data)[331] <- "Recomendacion9B"
colnames(data)[332] <- "Recomendacion10B"
colnames(data)[333] <- "PlanEstudios1B"
colnames(data)[334] <- "PlanEstudios2B"
colnames(data)[335] <- "PlanEstudios3B"
colnames(data)[336] <- "PlanEstudios4B"
colnames(data)[337] <- "PlanEstudios5B"
colnames(data)[338] <- "PlanEstudios6B"
colnames(data)[339] <- "SugerenciasB"
colnames(data)[340] <- "-ProgramaB"
colnames(data)[341] <- "TecnicaB"
colnames(data)[342] <- "RelacionB"
colnames(data)[343] <- "SugProfeB"
colnames(data)[344] <- "MismaInstitucionB"
colnames(data)[345] <- "OtraInstitucionB"
colnames(data)[346] <- "MismoProgramaB"
colnames(data)[347] <- "-OtroProgramaB"
colnames(data)[348] <- "ProgramaC"
colnames(data)[349] <- "Exigencia1C"
colnames(data)[350] <- "Exigencia2C"
colnames(data)[351] <- "Exigencia3C"
colnames(data)[352] <- "Exigencia4C"
colnames(data)[353] <- "Exigencia5C"
colnames(data)[354] <- "Exigencia6C"
colnames(data)[355] <- "Exigencia7C"
colnames(data)[356] <- "Exigencia8C"
colnames(data)[357] <- "Exigencia9C"
colnames(data)[358] <- "Exigencia10C"
colnames(data)[359] <- "Exigencia11C"
colnames(data)[360] <- "Organizacion1C"
colnames(data)[361] <- "Organizacion2C"
colnames(data)[362] <- "Organizacion3C"
colnames(data)[363] <- "Organizacion5C"
colnames(data)[364] <- "Organizacion6C"
colnames(data)[365] <- "Organizacion7C"
colnames(data)[366] <- "Organizacion8C"
colnames(data)[367] <- "Organizacion9C"
colnames(data)[368] <- "Organizacion10C"
colnames(data)[369] <- "Recomendacion1C"
colnames(data)[370] <- "Recomendacion2C"
colnames(data)[371] <- "Recomendacion3C"
colnames(data)[372] <- "Recomendacion4C"
colnames(data)[373] <- "Recomendacion5C"
colnames(data)[374] <- "Recomendacion6C"
colnames(data)[375] <- "Recomendacion7C"
colnames(data)[376] <- "Recomendacion8C"
colnames(data)[377] <- "Recomendacion9C"
colnames(data)[378] <- "Recomendacion10C"
colnames(data)[379] <- "PlanEstudios1C"
colnames(data)[380] <- "PlanEstudios2C"
colnames(data)[381] <- "PlanEstudios3C"
colnames(data)[382] <- "PlanEstudios4C"
colnames(data)[383] <- "PlanEstudios5C"
colnames(data)[384] <- "PlanEstudios6C"
colnames(data)[385] <- "SugerenciasC"
colnames(data)[386] <- "-ProgramaC"
colnames(data)[387] <- "TecnicaC"
colnames(data)[388] <- "RelacionC"
colnames(data)[389] <- "SugProfeC"
colnames(data)[390] <- "MismaInstitucionC"
colnames(data)[391] <- "OtraInstitucionC"
colnames(data)[392] <- "MismoProgramaC"
colnames(data)[393] <- "OtroProgramaC"

# ********************************************************************************
# ********************************************************************************
# ********************************************************************************
# ********************************************************************************
# Segunda fase, analisis de la calidad de las respuestas
# ********************************************************************************
# ********************************************************************************
# ********************************************************************************
# ********************************************************************************
# Valores perdidos de cada variable
for (Var in names(data)) {
    missing <- sum(is.na(data[, Var]))
    if (missing > 0) {
        print(c(Var, missing))
    }
}



# ********************************************************************************
# *******************************************************************************

# instalando y utilizando libreria; dplyr   

if (!("dplyr" %in% rownames(installed.packages()))) {
    install.packages("dplyr")
}

library(dplyr)

# instalando y activando la libreria; stringr    Para convertir caracteres a codificacion "UTF-8"   

if (!("stringr" %in% rownames(installed.packages()))) {
    install.packages("stringr")
}

library(stringr)


# filtrando la columna "Sexo" de quienes pusieron m o M
# Seleccionando el id y el nombre de quienes pusieron m o M 

Sexofil <- filter(data, Sexo == "m" | Sexo == "M");
select(Sexofil, "id", "Nombre(s)")

# Cuando se analiza por medio del nombre quien es del sexo femenino o masculino se insertan los numeros de id

data$Sexor <- ifelse(data$id == 71, 2, data$Sexo);
data$Sexor <- ifelse(data$id == 641, 2, data$Sexor);
data$Sexor <- ifelse(data$id == 737, 2, data$Sexor);
data$Sexor <- ifelse(data$id == 755, 2, data$Sexor);
data$Sexor <- ifelse(data$id == 816, 2, data$Sexor);
data$Sexor <- ifelse(data$id == 1040, 2, data$Sexor);

# Para encontrar patrones en los datos... 

data$Sexor <- gsub("(?i)m", 1, data$Sexor);

data$Sexor <- gsub("(?i)(.*)f(.*)", 2, data$Sexor);
data$Sexor <- gsub("(?i)muj(.*)", 2, data$Sexor);
data$Sexor <- gsub("(?i)(.*)lino(.*)", 1, data$Sexor);
data$Sexor <- gsub("1ujer", 2, data$Sexor);

data$Sexo = data$Sexor

# Edad

data$Edad <- gsub("(.*)(.*)", "\\1", data$Edad);
data$Edad <- gsub("(.*) (.*)", "\\1", data$Edad);
data$Edad <- gsub("(.*)mm", "\\1", data$Edad);
data$Edad <- gsub("Setenta y un", "71", data$Edad);

data$Edad = data$Edad
data$EdadNum <- as.numeric(data$Edad)
summary(data$EdadNum)

# ********************************************************************************
# Informacion sobre licenciatura


# Pais en donde se realizaron los estudios de licenciatura

data$temp<-0

# La siguiente linea es por si respondienron solamente en la segunda opcion, 
# dejando la primera vacia

table(data$LicPais, exclude=F)

data$temp<-ifelse(is.na(data$LicPais) & !is.na(data$LicPais2),data$LicPais2,data$LicPais)
data$LicPais2<-ifelse(is.na(data$LicPais) & !is.na(data$LicPais2),NA,data$LicPais2)
data$LicPais<-data$temp

table(data$LicPais, exclude=F)

# Ahora recodificamos las distintas respuestas:


data$temp <- gsub("(?i)mx", "MEX", data$LicPais);
data$temp <- gsub("(.*)(?i)xico", "MEX", data$temp);
data$temp <- gsub("(.*)(?i)sico", "MEX", data$temp);
data$temp <- gsub("(?i)m(.*)x(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)df(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)d(.*)f(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)cdm(.*)", "MEX", data$temp);


data$temp <- gsub("(?i)a(.*)g(.*)na", "LATAM", data$temp);
data$temp <- gsub("(?i)b(.*)l(.*)via", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i)asil", "LATAM", data$temp);
data$temp <- gsub("(?i)chile", "LATAM", data$temp);
data$temp <- gsub("(?i)colombia", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) rica", "LATAM", data$temp);
data$temp <- gsub("(?i)cuba", "LATAM", data$temp);
data$temp <- gsub("(?i)ecuador", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) salvador", "LATAM", data$temp);
data$temp <- gsub("(?i)guatemala", "LATAM", data$temp);
data$temp <- gsub("(?i)per(.*)", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) rico", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) dom(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)uruguay", "LATAM", data$temp);
data$temp <- gsub("(?i)venez(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)pana(.*)", "LATAM", data$temp);


data$temp <- gsub("(?i)usa", "OTRO", data$temp);
data$temp <- gsub("(?i)eua", "OTRO", data$temp);
data$temp <- gsub("(?i)eeuu", "OTRO", data$temp);
data$temp <- gsub("(?i)e(.*)u(.*)a(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)esp(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)ital(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)reino(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)urss", "OTRO", data$temp);
data$temp <- gsub("(?i)canad(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)filip(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)francia", "OTRO", data$temp);
data$temp <- gsub("(?i)suecia", "OTRO", data$temp);

# Uso 99 para los missing/ Ya no, poner NA
data$temp <- ifelse(is.na(data$LicPais), NA, data$temp)
data$temp <- ifelse(data$temp=="MEX",1,data$temp)
data$temp <- ifelse(data$temp=="LATAM",2,data$temp)
data$temp <- ifelse(data$temp=="OTRO",3,data$temp)

#data$temp <- factor(data$temp, levels=c(1,2,3,99),labels=c("MEX","LATAM","OTRO","NE"))
data$LicPaisT = data$temp


# Para la segunda licenciatura, si es que tuvieron
table(data$LicPais2, exclude = NULL)
data$temp<-NA

data$temp <- gsub("(?i)mx", "MEX", data$LicPais2);
data$temp <- gsub("(.*)(?i)xico", "MEX", data$temp);
data$temp <- gsub("(.*)(?i)sico", "MEX", data$temp);
data$temp <- gsub("(?i)m(.*)x(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)df(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)d(.*)f(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)cdm(.*)", "MEX", data$temp);


data$temp <- gsub("(?i)a(.*)g(.*)na", "LATAM", data$temp);
data$temp <- gsub("(?i)b(.*)l(.*)via", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i)asil", "LATAM", data$temp);
data$temp <- gsub("(?i)chile", "LATAM", data$temp);
data$temp <- gsub("(?i)colombia", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) rica", "LATAM", data$temp);
data$temp <- gsub("(?i)cuba", "LATAM", data$temp);
data$temp <- gsub("(?i)ecuador", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) salvador", "LATAM", data$temp);
data$temp <- gsub("(?i)guatemala", "LATAM", data$temp);
data$temp <- gsub("(?i)per(.*)", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) rico", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) dom(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)urug(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)venez(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)pana(.*)", "LATAM", data$temp);


data$temp <- gsub("(?i)usa", "OTRO", data$temp);
data$temp <- gsub("(?i)eua", "OTRO", data$temp);
data$temp <- gsub("(?i)eeuu", "OTRO", data$temp);
data$temp <- gsub("(?i)e(.*)u(.*)a(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)esp(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)ital(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)reino(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)urss", "OTRO", data$temp);
data$temp <- gsub("(?i)canad(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)filip(.*)", "OTRO", data$temp);
data$temp <- gsub("(?i)francia", "OTRO", data$temp);
data$temp <- gsub("(?i)suecia", "OTRO", data$temp);
data$temp <- gsub("Australia", "OTRO", data$temp);

data$temp <- ifelse(is.na(data$LicPais2), NA, data$temp)
data$temp <- ifelse(data$temp=="MEX",1,data$temp)
data$temp <- ifelse(data$temp=="LATAM",2,data$temp)
data$temp <- ifelse(data$temp=="OTRO",3,data$temp)
#data$temp <- factor(data$temp, levels=c(1,2,3,99),labels=c("MEX","LATAM","OTRO","NE"))
data$LicPaisT2 = data$temp


# Recodificando institucion

data$temp <- 0
data$LicInstitucion <- str_conv(data$LicInstitucion, "UTF-8")
data$temp <- ifelse(is.na(data$LicInstitucion) & !is.na(data$LicInstitucion2), data$LicInstitucion2, data$LicInstitucion)
data$LicInstitucion2<-ifelse(is.na(data$LicInstitucion) & !is.na(data$LicInstitucion2), NA, data$LicInstitucion2)
data$LicInstitucion<-data$temp

data$temp <- gsub("(?i)Ben(.*) Uni(.*) Aut(.*) (.*) Pue(.*)", "BUAP", data$LicInstitucion);
data$temp <- gsub("(?i)buap", "BUAP", data$temp);

data$temp <- gsub("(?i)unam(*)", "UNAM", data$temp);
data$temp <- gsub("unam", "UNAM", data$temp);
data$temp <- gsub("(?i)unam (.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*)unam (.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*) unam", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*) unam(.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*)unam", "UNAM", data$temp);
data$temp <- gsub("(?i)unam(.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)Universidad Nacional Aut??noma de M??xico", "UNAM", data$temp);
data$temp <- gsub("UNIVERSIDAD NACIONAL AUT??NOMA DE M??XICO", "UNAM", data$temp);

data$temp <- gsub("(?i)centro de inv(*)", "CIDE", data$temp);
data$temp <- gsub("(?i)cide", "CIDE", data$temp);
data$temp <- gsub("(?i)cide(.*)", "CIDE", data$temp);

data$temp <- gsub("(?i)colmex", "COLMEX", data$temp);
data$temp <- gsub("(?i)col(.*) de (.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(?i)(.*) colegio", "COLMEX", data$temp);
data$temp <- gsub("(?i)colegio (.*)", "COLMEX", data$temp);
data$temp <- gsub("(?i)el col(.*)", "COLMEX", data$temp);

data$temp <- gsub("(?i)uni(.*) aut(.*) met(.*)", "UAM", data$temp);
data$temp <- gsub("(?i)uam", "UAM", data$temp);
data$temp <- gsub("(?i)uam(.*)", "UAM", data$temp);

data$temp <- gsub("(?i)ins(.*) tec(.*) aut(.*)", "ITAM", data$temp);
data$temp <- gsub("(?i)itam", "ITAM", data$temp);

data$temp <- gsub("(?i)ins(.*) tec(.*) y de est(.*)", "ITESM", data$temp);
data$temp <- gsub("(?i)itesm", "ITESM", data$temp);
data$temp <- gsub("(?i)itesm(.*)", "ITESM", data$temp);
data$temp <- gsub("(?i)itesm", "ITESM", data$temp);

data$temp <- gsub("(?i)(.*) ibero(.*)", "IBERO", data$temp);
data$temp <- gsub("(?i)ibero", "IBERO", data$temp);

data$temp <- gsub("(?i)(.*) uni(.*) de las a(.*)icas, (.*)", "UDLA", data$temp);
data$temp <- gsub("(?i)uni(.*) de las a(.*)icas (.*)", "UDLA", data$temp);
data$temp <- gsub("(?i)udla(.*)", "UDLA", data$temp);
data$temp <- gsub("(?i)udla (.*)", "UDLA", data$temp);

data$temp <- gsub("(?i)escuela nacional de ant(.*)", "ENAH", data$temp);
data$temp <- gsub("(?i)enah", "ENAH", data$temp);

data$temp <- gsub("(?i)ins(.*) pol(.*) nac(.*)", "IPN", data$temp);
data$temp <- gsub("(?i)ipn", "IPN", data$temp);
data$temp <- gsub("(?i)ipn (.*)", "IPN", data$temp);

data$temp <- gsub("(?i)(.*) veracruzana", "UV", data$temp);
data$temp <- gsub("(?i)uv", "UV", data$temp);

data$temp <- gsub("(?i)un(.*) aut(.*) del est(.*) de m(.*)", "UAEMEX", data$temp);
data$temp <- gsub("(?i)uaem(.*)x", "UAEMEX", data$temp);
data$temp <- gsub("(?i)uaeme(.*)", "UAEMEX", data$temp);

data$temp <- ifelse(data$temp != "UNAM" & data$temp != "COLMEX" & data$temp != "BUAP" & data$temp != "CIDE" & data$temp != "UAM" & data$temp != "ITAM" & data$temp != "ITESM" & data$temp != "IBERO" & data$temp != "UTLA" & data$temp != "ENAH" & data$temp != "IPN" & data$temp != "UV" & data$temp != "UAEMEX" & data$LicPaisT == "MEX", "OtraMex", data$temp)
data$temp <- ifelse(data$temp != "UNAM" & data$temp != "COLMEX" & data$temp != "BUAP" & data$temp != "CIDE" & data$temp != "UAM" & data$temp != "ITAM" & data$temp != "ITESM" & data$temp != "IBERO" & data$temp != "UTLA" & data$temp != "ENAH" & data$temp != "IPN" & data$temp != "UV" & data$temp != "UAEMEX" & data$LicPaisT != "MEX", "OtraExt", data$temp)
data$temp<-ifelse(is.na(data$temp),99,data$temp)

table(data$temp)
data$temp <- ifelse(data$temp=="COLMEX",1,data$temp)
data$temp <- ifelse(data$temp=="UNAM",2,data$temp)
data$temp <- ifelse(data$temp=="UAM",3,data$temp)
data$temp <- ifelse(data$temp=="UAEMEX",4,data$temp)
data$temp <- ifelse(data$temp=="IBERO",5,data$temp)
data$temp <- ifelse(data$temp=="BUAP",6,data$temp)
data$temp <- ifelse(data$temp=="IPN",7,data$temp)
data$temp <- ifelse(data$temp=="ITAM",8,data$temp)
data$temp <- ifelse(data$temp=="ITESM",9,data$temp)
data$temp <- ifelse(data$temp=="UV",10,data$temp)
data$temp <- ifelse(data$temp=="ENAH",11,data$temp)
data$temp <- ifelse(data$temp=="CIDE",12,data$temp)
data$temp <- ifelse(data$temp=="OtraMex",13,data$temp)
data$temp <- ifelse(data$temp=="OtraExt",14,data$temp)

#data$temp <- factor(data$temp, levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,99),
                    #labels=c("COLMEX","UNAM","UAM","UAEMEX","IBERO","BUAP","IPN","ITAM","ITESM","UV",
                            # "ENAH","CIDE","OtrMex","OtraExt","NE"))
data$LicInstitucionT = data$temp

# Uso 99 para los missing
# Fecha inicio

data$temp<-NA

data$temp<-as.numeric(as.character(data$LicInicio))

data$temp<-ifelse(data$temp==88,1988,data$temp)
data$temp<-ifelse(data$temp==91,1991,data$temp)
data$temp<-ifelse(data$temp==93,1993,data$temp)
data$temp<-ifelse(data$temp==1194,1994,data$temp)
data$temp<-ifelse(data$temp==19667,1966,data$temp)
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$LicInicioT<-data$temp

data$temp<-NA

#Termino Lic

data$temp<-as.numeric(as.character(data$LicTermino))

data$temp<-ifelse(data$temp==93,1993,data$temp)
data$temp<-ifelse(data$temp==94,1994,data$temp)
data$temp<-ifelse(data$temp==98,1998,data$temp)
data$temp<-ifelse(data$temp==220,NA,data$temp)

data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$LicTerminoT<-data$temp

data$temp <- NA
data$LicInstitucion2 <- str_conv(data$LicInstitucion2, "UTF-8")

data$temp <- gsub("(?i)Ben(.*) Uni(.*) Aut(.*) (.*) Pue(.*)", "BUAP", data$LicInstitucion2);
data$temp <- gsub("(?i)buap", "BUAP", data$temp);


data$temp <- gsub("(?i)unam(*)", "UNAM", data$temp);
data$temp <- gsub("unam", "UNAM", data$temp);
data$temp <- gsub("(?i)unam (.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*)unam (.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*) unam", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*) unam(.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)(.*)unam", "UNAM", data$temp);
data$temp <- gsub("(?i)unam(.*)", "UNAM", data$temp);
data$temp <- gsub("(?i)Universidad Nacional Aut??noma de M??xico", "UNAM", data$temp);
data$temp <- gsub("UNIVERSIDAD NACIONAL AUT??NOMA DE M??XICO", "UNAM", data$temp);

data$temp <- gsub("(?i)centro de inv(*)", "CIDE", data$temp);
data$temp <- gsub("(?i)cide", "CIDE", data$temp);
data$temp <- gsub("(?i)cide(.*)", "CIDE", data$temp);

data$temp <- gsub("(?i)colmex", "COLMEX", data$temp);
data$temp <- gsub("(?i)col(.*) de (.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(?i)(.*) colegio", "COLMEX", data$temp);
data$temp <- gsub("(?i)colegio (.*)", "COLMEX", data$temp);
data$temp <- gsub("(?i)el col(.*)", "COLMEX", data$temp);

data$temp <- gsub("(?i)uni(.*) aut(.*) met(.*)", "UAM", data$temp);
data$temp <- gsub("(?i)uam", "UAM", data$temp);
data$temp <- gsub("(?i)uam(.*)", "UAM", data$temp);

data$temp <- gsub("(?i)ins(.*) tec(.*) aut(.*)", "ITAM", data$temp);
data$temp <- gsub("(?i)itam", "ITAM", data$temp);

data$temp <- gsub("(?i)ins(.*) tec(.*) y de est(.*)", "ITESM", data$temp);
data$temp <- gsub("(?i)itesm", "ITESM", data$temp);
data$temp <- gsub("(?i)itesm(.*)", "ITESM", data$temp);
data$temp <- gsub("(?i)itesm", "ITESM", data$temp);

data$temp <- gsub("(?i)(.*) ibero(.*)", "IBERO", data$temp);
data$temp <- gsub("(?i)ibero", "IBERO", data$temp);

data$temp <- gsub("(?i)(.*) uni(.*) de las a(.*)icas, (.*)", "UDLA", data$temp);
data$temp <- gsub("(?i)uni(.*) de las a(.*)icas (.*)", "UDLA", data$temp);
data$temp <- gsub("(?i)udla(.*)", "UDLA", data$temp);
data$temp <- gsub("(?i)udla (.*)", "UDLA", data$temp);

data$temp <- gsub("(?i)escuela nacional de ant(.*)", "ENAH", data$temp);
data$temp <- gsub("(?i)enah", "ENAH", data$temp);

data$temp <- gsub("(?i)ins(.*) pol(.*) nac(.*)", "IPN", data$temp);
data$temp <- gsub("(?i)ipn", "IPN", data$temp);
data$temp <- gsub("(?i)ipn (.*)", "IPN", data$temp);

data$temp <- gsub("(?i)(.*) veracruzana", "UV", data$temp);
data$temp <- gsub("(?i)uv", "UV", data$temp);

data$temp <- gsub("(?i)un(.*) aut(.*) del est(.*) de m(.*)", "UAEMEX", data$temp);
data$temp <- gsub("(?i)uaem(.*)x", "UAEMEX", data$temp);
data$temp <- gsub("(?i)uaeme(.*)", "UAEMEX", data$temp);

data$temp <- ifelse(data$temp != "UNAM" & data$temp != "COLMEX" & data$temp != "BUAP" & data$temp != "CIDE" & data$temp != "UAM" & data$temp != "ITAM" & data$temp != "ITESM" & data$temp != "IBERO" & data$temp != "UTLA" & data$temp != "ENAH" & data$temp != "IPN" & data$temp != "UV" & data$temp != "UAEMEX" & data$LicPaisT2 == "MEX", "OtraMex", data$temp)
data$temp <- ifelse(data$temp != "UNAM" & data$temp != "COLMEX" & data$temp != "BUAP" & data$temp != "CIDE" & data$temp != "UAM" & data$temp != "ITAM" & data$temp != "ITESM" & data$temp != "IBERO" & data$temp != "UTLA" & data$temp != "ENAH" & data$temp != "IPN" & data$temp != "UV" & data$temp != "UAEMEX" & data$LicPaisT2 != "MEX", "OtraExt", data$temp)

data$temp <- ifelse(is.na(data$LicInstitucion2), 99, data$temp)
data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp <- ifelse(data$temp=="COLMEX",1,data$temp)
data$temp <- ifelse(data$temp=="UNAM",2,data$temp)
data$temp <- ifelse(data$temp=="UAM",3,data$temp)
data$temp <- ifelse(data$temp=="UAEMEX",4,data$temp)
data$temp <- ifelse(data$temp=="IBERO",5,data$temp)
data$temp <- ifelse(data$temp=="BUAP",6,data$temp)
data$temp <- ifelse(data$temp=="IPN",7,data$temp)
data$temp <- ifelse(data$temp=="ITAM",8,data$temp)
data$temp <- ifelse(data$temp=="ITESM",9,data$temp)
data$temp <- ifelse(data$temp=="UV",10,data$temp)
data$temp <- ifelse(data$temp=="ENAH",11,data$temp)
data$temp <- ifelse(data$temp=="CIDE",12,data$temp)
data$temp <- ifelse(data$temp=="OtraMex",13,data$temp)
data$temp <- ifelse(data$temp=="OtraExt",14,data$temp)

#data$temp <- factor(data$temp, levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,99),
                    #labels=c("COLMEX","UNAM","UAM","UAEMEX","IBERO","BUAP","IPN","ITAM","ITESM","UV",
                             #"ENAH","CIDE","OtrMex","OtraExt","NE"))

data$LicInstitucionT2 = data$temp

# Anio inicio lic 2

data$temp<-as.numeric(as.character(data$LicInicio2))
data$LicInicioT2<-data$temp

data$temp<-NA
data$temp<-as.numeric(as.character(data$LicTermino2))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$LicTerminoT2<-data$temp

data$temp<-NA

data$LicColmex<-ifelse(data$LicInstitucionT=="COLMEX",1,ifelse(data$LicInstitucionT2=="COLMEX",1,0))

data$temp <- NA
data$LicPrograma <- str_conv(data$LicPrograma, "UTF-8")
data$temp <- ifelse(is.na(data$LicPrograma) & !is.na(data$LicPrograma2), data$LicPrograma2, data$LicPrograma)
data$LicPrograma2<-ifelse(is.na(data$LicPrograma) & !is.na(data$LicPrograma2), NA, data$LicPrograma2)
data$LicPrograma<-data$temp

data$LicPColmex<-NA
data$LicPColmex<-ifelse(data$LicColmex==1 & data$LicInstitucionT=="COLMEX",data$LicPrograma,0)
data$LicPColmex<-ifelse(data$LicColmex==1 & data$LicInstitucionT2=="COLMEX",data$LicPrograma2,data$LicPColmex)

# Recodificando
data$LicPColmex <- gsub("(?i)ri", "RRII", data$LicPColmex);
data$LicPColmex <- gsub("(?i)(.*)inte(.*)", "RRII", data$LicPColmex);
data$LicPColmex <- gsub("(?i)(.*)rri(.*)", "RRII", data$LicPColmex);

data$LicPColmex <- gsub("(?i)(.*)blica", "PAP", data$LicPColmex);
data$LicPColmex <- gsub("(LAP|APP)", "PAP", data$LicPColmex);

data$LicPColmex <- gsub("(?i)formaci(.*)", NA, data$LicPColmex);
data$LicPColmex <- gsub("(?i)LEAD(.*)", NA, data$LicPColmex);
data$LicPColmex <- gsub("(?i)icenciatu(.*)", NA, data$LicPColmex);
data$LicPColmex<-ifelse(is.na(data$LicPColmex),99,data$LicPColmex)

data$LicPColmex <- ifelse(data$LicPColmex=="RRII",1,data$LicPColmex)
data$LicPColmex <- ifelse(data$LicPColmex=="PAP",2,data$LicPColmex)



# Ahora repito para maestria

data$MaesPais = str_conv(data$MaesPais, "UTF-8")
data$MaesPais2 = str_conv(data$MaesPais2, "UTF-8")

table(data$MaesPais, exclude=F)

data$temp<-NA

data$temp<-ifelse(is.na(data$MaesPais) & !is.na(data$MaesPais2),data$MaesPais2,data$MaesPais)
data$MaesPais2<-ifelse(is.na(data$MaesPais) & !is.na(data$MaesPais2),NA,data$MaesPais2)
data$MaesPais<-data$temp

# Pais donde estudio

data$temp<-NA

data$temp <- gsub("(?i)mx", "MEX", data$MaesPais);
data$temp <- gsub("(.*)(?i)xico", "MEX", data$temp);
data$temp <- gsub("(.*)(?i)sico", "MEX", data$temp);
data$temp <- gsub("(?i)m(.*)x(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)df(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)d(.*)f(.*)", "MEX", data$temp);
data$temp <- gsub("(?i)cdm(.*)", "MEX", data$temp);


data$temp <- gsub("(?i)a(.*)g(.*)na", "LATAM", data$temp);
data$temp <- gsub("(?i)b(.*)l(.*)via", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i)asil", "LATAM", data$temp);
data$temp <- gsub("(?i)chile", "LATAM", data$temp);
data$temp <- gsub("(?i)colombia", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) rica", "LATAM", data$temp);
data$temp <- gsub("(?i)cuba", "LATAM", data$temp);
data$temp <- gsub("(?i)ecuador", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) salvador", "LATAM", data$temp);
data$temp <- gsub("(?i)guatemala", "LATAM", data$temp);
data$temp <- gsub("(?i)per(.*)", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) rico", "LATAM", data$temp);
data$temp <- gsub("(.*)(?i) dom(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)uruguay", "LATAM", data$temp);
data$temp <- gsub("(?i)venez(.*)", "LATAM", data$temp);
data$temp <- gsub("(?i)pana(.*)", "LATAM", data$temp);
data$temp <- gsub("(.*)LATAM", "LATAM", data$temp);


data$temp <- gsub("(?i)usa", "EUAC", data$temp);
data$temp <- gsub("(?i)eua", "EUAC", data$temp);
data$temp <- gsub("(?i)ee.uu.", "EUAC", data$temp);
data$temp <- gsub("(?i)eu", "EUAC", data$temp);
data$temp <- gsub("(?i)eeuu", "EUAC", data$temp);
data$temp <- gsub("(?i)e(.*)u(.*)a(.*)", "EUAC", data$temp);
data$temp <- gsub("(?i)estados uni(.*)", "EUAC", data$temp);
data$temp <- gsub("(?i)united sta(.*)", "EUAC", data$temp);

data$temp <- gsub("(?i)canad(.*)", "EUAC", data$temp);

data$temp <- gsub("(?i)esp(.*)", "EUR", data$temp);
data$temp <- gsub("(?i)alem(.*)", "EUR", data$temp);
data$temp <- gsub("(?i)reino(.*)", "EUR", data$temp);
data$temp <- gsub("(?i)urss", "EUR", data$temp);
data$temp <- gsub("(?i)francia", "EUR", data$temp);
data$temp <- gsub("(?i)(.*)breta(.*)", "EUR", data$temp);
data$temp <- gsub("(?i)(.*)glaterr(.*)", "EUR", data$temp);
data$temp <- gsub("(?i)uk", "EUR", data$temp);
data$temp <- gsub("(?i)Holand(.*)", "EUR", data$temp);


data$temp <- gsub("(?i)china", "OTRO", data$temp);
data$temp <- gsub("(?i)egipto", "OTRO", data$temp);
data$temp <- gsub("(?i)jap??n", "OTRO", data$temp);
data$temp <- gsub("Jap(.*)n", "OTRO", data$temp);

# Este es despues de una revision visual
data$temp <- ifelse(data$id == 86, "MEX", data$temp)
data$temp <- ifelse(data$id == 786, "MEX", data$temp)

data$temp<-ifelse(is.na(data$MaesPais) & is.na(data$MaesPais2) & 
  !is.na(data$LicPais),"SinMaes",data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="MEX",1,data$temp)
data$temp<-ifelse(data$temp=="EUAC",2,data$temp)
data$temp<-ifelse(data$temp=="EUR",3,data$temp)
data$temp<-ifelse(data$temp=="LATAM",4,data$temp)
data$temp<-ifelse(data$temp=="OTRO",5,data$temp)
data$temp<-ifelse(data$temp=="SinMaes",9,data$temp)


data$MaesPaisT = data$temp # Aqui por ejemplo, ya asignamos los valores de temp a la variables MaesPaisT

data$temp<-NA 

# Segunda maestria

data$temp <- gsub("(?i)EXIC(.*)", "MEX", data$MaesPais2);
data$temp <- gsub("(?i)XICO", "MEX", data$temp);
data$temp <- gsub("(?i)xico", "MEX", data$temp);
data$temp <- gsub("(?i)MEX", "MEX", data$temp);
data$temp <- gsub("M(.*)MEX", "MEX", data$temp);
data$temp <- gsub("m(.*)MEX", "MEX", data$temp);
data$temp <- gsub("mMEX", "MEX", data$temp);
data$temp <- gsub("MEX(.*)", "MEX", data$temp);

data$temp <- gsub("Guatemala", "LATAM", data$temp);

data$temp <- gsub("Cana(.*)", "EUAC", data$temp);
data$temp <- gsub("EE(.*)", "EUAC", data$temp);
data$temp <- gsub("Estad(.*)", "EUAC", data$temp);
data$temp <- gsub("USA(.*)", "EUAC", data$temp);
data$temp <- gsub("ESTAD(.*)", "EUAC", data$temp);
data$temp <- gsub("EUA(.*)", "EUAC", data$temp);
data$temp <- gsub("EU", "EUAC", data$temp);
data$temp <- gsub("EUACAC", "EUAC", data$temp);

data$temp <- gsub("Espa(.*)", "EUR", data$temp);
data$temp <- gsub("espa(.*)", "EUR", data$temp);
data$temp <- gsub("FRAN(.*)", "EUR", data$temp);
data$temp <- gsub("Franc(.*)", "EUR", data$temp);
data$temp <- gsub("GB", "EUR", data$temp);
data$temp <- gsub("Gran Br(.*)", "EUR", data$temp);
data$temp <- gsub("Rein(.*)", "EUR", data$temp);

data$temp <- gsub("COREA(.*)", "OTRO", data$temp);
data$temp <- gsub("China", "OTRO", data$temp);
data$temp <- gsub("Japon", "OTRO", data$temp);


data$temp <- gsub("jap??n", "OTRO", data$temp);
data$temp <- gsub("Jap(.*)n", "OTRO", data$temp);

data$temp<-ifelse(!is.na(data$MaesPais) & is.na(data$MaesPais2),"SinMaes2",data$temp)
data$temp<- ifelse(is.na(data$temp) & data$MaesPaisT=="SinMaes","SinMaes",data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="MEX",1,data$temp)
data$temp<-ifelse(data$temp=="EUAC",2,data$temp)
data$temp<-ifelse(data$temp=="EUR",3,data$temp)
data$temp<-ifelse(data$temp=="LATAM",4,data$temp)
data$temp<-ifelse(data$temp=="OTRO",5,data$temp)
data$temp<-ifelse(data$temp=="SinMaes2",8,data$temp)
data$temp<-ifelse(data$temp=="SinMaes",9,data$temp)

data$MaesPaisT2 = data$temp

data$temp<-NA 

# Recodificando institucion de maestria

data$temp<-NA

data$temp<-ifelse(is.na(data$MaesInstitucion) & !is.na(data$MaesInstitucion2),data$MaesInstitucion2,data$MaesInstitucion)
data$MaesInstitucion2<-ifelse(is.na(data$MaesInstitucion) & !is.na(data$MaesInstitucion2),NA,data$MaesInstitucion2)
data$MaesInstitucion<-data$temp

data$temp <- gsub("(.*)COLMEX(.*)", "COLMEX", data$MaesInstitucion);
data$temp <- gsub("EL COLMEX", "COLMEX", data$temp);
data$temp <- gsub("El COLMEX", "COLMEX", data$temp);
data$temp <- gsub("el COLMEX", "COLMEX", data$temp);
data$temp <- gsub("colegio de m(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("COLEGIO DE MEXICO", "COLMEX", data$temp);
data$temp <- gsub("COLEGIO DE M?????XICO, A.C.", "COLMEX", data$temp);
data$temp <- gsub("COLMEX A.C.", "COLMEX", data$temp);
data$temp <- gsub("PIEM(.*)", "COLMEX", data$temp);
data$temp <- gsub("CEEA, COLMEX", "COLMEX", data$temp);
data$temp <- gsub("(?i)colmex", "COLMEX", data$temp);
data$temp <- gsub("El Colegio de  M(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(.*)olegio de  M(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(.*)olegio de (.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(.*)olegio de (.*)xcio", "COLMEX", data$temp);
data$temp <- gsub("Coegio de M(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("Colegio de M(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("Co(.*)gio de M(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("COLEGIO DE M(.*)", "COLMEX", data$temp);


data$temp <- ifelse(data$id == 1030, "COLMEX", data$temp);
data$temp <- ifelse(data$id == 785, "COLMEX", data$temp);
data$temp <- ifelse(data$id == 168, "COLMEX", data$temp);
data$temp <- ifelse(data$id == 781, "COLMEX", data$temp);
data$temp <- ifelse(data$id == 340, "COLMEX", data$temp);
data$temp <- ifelse(data$id == 168, "COLMEX", data$temp);
data$temp <- ifelse(data$id == 245,"COLMEX",data$temp);

data$temp <- ifelse(data$temp != "COLMEX" & data$MaesPaisT == "MEX", "OtraMex", data$temp)
data$temp <- ifelse(data$temp != "COLMEX" & data$MaesPaisT != "MEX", "OtraExt", data$temp)

data$temp <- ifelse(data$MaesPaisT == "99", 99, data$temp)
data$temp <- ifelse(data$MaesPaisT != "99" & is.na(data$temp), "SinMaes", data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp<-ifelse(data$temp=="COLMEX",1,data$temp)
data$temp<-ifelse(data$temp=="OtraMex",2,data$temp)
data$temp<-ifelse(data$temp=="OtraExt",3,data$temp)
data$temp<-ifelse(data$temp=="SinMaes",4,data$temp)


data$MaesInstitucionT = data$temp

data$temp<-NA

data$temp<-data$MaesInicio

data$temp<-ifelse(data$temp=="!967","1967",data$temp)
data$temp<-ifelse(data$temp=="91","1991",data$temp)
data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)

data$MaesInicioT<-data$temp

data$temp<-NA

data$temp<-data$MaesTermino
data$temp<-ifelse(data$temp=="!977","1977",data$temp)
data$temp<-ifelse(data$temp=="50",NA,data$temp)
data$temp<-ifelse(data$temp=="1","2014",data$temp)
data$temp<-ifelse(data$temp=="s\303\255","2009",data$temp)

data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$MaesTerminoT<-data$temp

data$temp<-NA

data$temp<-gsub("Colme(.*)", "COLMEX", data$MaesInstitucion2);
data$temp<-gsub("colme(.*)", "COLMEX", data$temp);
data$temp<-gsub("(.*)colme(.*)", "COLMEX", data$temp);
data$temp<-gsub("(.*)de mex(.*)", "COLMEX", data$temp);
data$temp<-gsub("(.*)El Colegio de M(.*)", "COLMEX", data$temp);
data$temp<-gsub("(.*)EL COLEGIO DE M(.*)", "COLMEX", data$temp);
data$temp<-gsub("(.*)Colegio de M(.*)xico", "COLMEX", data$temp);
data$temp<-gsub("comex", "COLMEX", data$temp);

data$temp<-ifelse(data$temp!="COLMEX" & data$MaesPaisT2=="MEX","OtraMex",data$temp)
data$temp<-ifelse(data$temp!="COLMEX" & data$MaesPaisT2!="MEX","OtraExt",data$temp)

data$temp<-ifelse(is.na(data$MaesPaisT2),NA,data$temp)
data$temp<-ifelse(data$MaesPaisT2=="SinMaes","SinMaes",data$temp)
data$temp<-ifelse(data$MaesPaisT2=="SinMaes2","SinMaes2",data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp<-ifelse(data$temp=="COLMEX",1,data$temp)
data$temp<-ifelse(data$temp=="OtraMex",2,data$temp)
data$temp<-ifelse(data$temp=="OtraExt",3,data$temp)
data$temp<-ifelse(data$temp=="SinMaes",4,data$temp)
data$temp<-ifelse(data$temp=="SinMaes2",5,data$temp)


data$MaesInstitucionT2<-data$temp

data$temp<-NA

data$MaesColmex<-ifelse(data$MaesInstitucionT=="COLMEX",1,0)
data$MaesColmex<-ifelse(data$MaesInstitucionT2=="COLMEX",1,data$MaesColmex)

data$temp<-data$MaesInicio2
data$temp<-ifelse(data$temp=="!997","1997",data$temp)
data$temp<-ifelse(data$temp=="191","1978",data$temp)
data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$MaesInicioT2<-data$temp

data$temp<-NA

data$temp<-data$MaesTermino2
data$temp<-ifelse(data$temp=="s\303\255","2009",data$temp)
data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$MaesTerminoT2<-data$temp

data$temp<-NA

# Ahora para el doctorado

data$temp<-NA

data$temp<-ifelse(is.na(data$DocPais) & !is.na(data$DocPais2),data$DocPais2,data$DocPais)
data$DocPais2<-ifelse(is.na(data$DocPais) & !is.na(data$DocPais2),NA,data$DocPais2)
data$temp<-ifelse(is.na(data$temp),NA,data$temp)
data$DocPais<-data$temp

data$temp<-NA

data$temp <- gsub("(?i)mx", "MEX", data$DocPais);
data$temp <- gsub("(.*)(?i)xico", "MEX", data$temp);
data$temp <- gsub("(.*)(?i)sico", "MEX", data$temp);
data$temp <- gsub("(?i)m(.*)x(.*)", "MEX", data$temp);
data$temp <- gsub("UNAM", "MEX", data$temp);

data$temp <- gsub("EU(.*)", "EUAC", data$temp);
data$temp <- gsub("Cana(.*)", "EUAC", data$temp);
data$temp <- gsub("EE(.*)", "EUAC", data$temp);
data$temp <- gsub("ESTAD(.*)", "EUAC", data$temp);
data$temp <- gsub("Estad(.*)", "EUAC", data$temp);
data$temp <- gsub("ee(.*)", "EUAC", data$temp);
data$temp <- gsub("USA", "EUAC", data$temp);

data$temp <- gsub("Chile", "LATAM", data$temp);
data$temp <- gsub("Brasil", "LATAM", data$temp);
data$temp <- gsub("BRASIL", "LATAM", data$temp);
data$temp <- gsub("Bolivia", "LATAM", data$temp);
data$temp <- gsub("Cuba", "LATAM", data$temp);
data$temp <- gsub("VENEZUELA", "LATAM", data$temp);

data$temp <- gsub("Alemania", "EUR", data$temp);
data$temp <- gsub("B(.*)gica", "EUR", data$temp);
data$temp <- gsub("ESPA(.*)", "EUR", data$temp);
data$temp <- gsub("Espa(.*)", "EUR", data$temp);
data$temp <- gsub("FRAN(.*)", "EUR", data$temp);
data$temp <- gsub("Fran(.*)", "EUR", data$temp);
data$temp <- gsub("GRAN(.*)", "EUR", data$temp);
data$temp <- gsub("Gran(.*)", "EUR", data$temp);
data$temp <- gsub("GB", "EUR", data$temp);
data$temp <- gsub("ING(.*)", "EUR", data$temp);
data$temp <- gsub("Ing(.*)", "EUR", data$temp);
data$temp <- gsub("Hol(.*)", "EUR", data$temp);
data$temp <- gsub("Pais(.*)", "EUR", data$temp);
data$temp <- gsub("REIN(.*)", "EUR", data$temp);
data$temp <- gsub("Rein(.*)", "EUR", data$temp);
data$temp <- gsub("SPAI(.*)", "EUR", data$temp);
data$temp <- gsub("espa(.*)", "EUR", data$temp);
data$temp <- gsub("UK", "EUR", data$temp);
data$temp <- gsub("REP(.*)", "EUR", data$temp);

data$temp <- gsub("Jap(.*)", "OTRO", data$temp);
data$temp <- gsub("REP(.*)", "OTRO", data$temp);
data$temp <- gsub("URSS", "OTRO", data$temp);


data$temp<-ifelse(is.na(data$DocPais) & is.na(data$DocPais2) & 
                    !is.na(data$MaesPaisT) & data$MaesPaisT!="SinMaes","SinDoc",data$temp)
data$temp<-ifelse(data$MaesPaisT=="SinMaes" & is.na(data$temp),"SinMaes",data$temp)

data$temp<-ifelse(data$id==786,"MEX",data$temp)
data$temp<-ifelse(data$id==760,"SinDoc",data$temp)
data$temp<-ifelse(data$id==245,"LATAM",data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="MEX",1,data$temp)
data$temp<-ifelse(data$temp=="EUAC",2,data$temp)
data$temp<-ifelse(data$temp=="EUR",3,data$temp)
data$temp<-ifelse(data$temp=="LATAM",4,data$temp)
data$temp<-ifelse(data$temp=="OTRO",5,data$temp)
data$temp<-ifelse(data$temp=="SinDoc",8,data$temp)
data$temp<-ifelse(data$temp=="SinMaes",9,data$temp)



data$DocPaisT<-data$temp

# Inicio Doc

data$temp<-NA
data$temp<-data$DocInicio
data$temp<-ifelse(data$temp=="1789","1989",data$temp)
data$temp<-ifelse(data$temp=="1912",NA,data$temp)
data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$DocInicioT<-data$temp

data$temp<-NA

data$temp<-data$DocTermino
data$temp<-ifelse(data$temp=="1791","1991",data$temp)
data$temp<-ifelse(data$temp=="1883","1983",data$temp)
data$temp<-ifelse(data$temp=="(exenta)",NA,data$temp)
data$temp<-ifelse(data$temp=="(exenta)",NA,data$temp)
data$temp<-ifelse(data$temp=="1",NA,data$temp)
data$temp<-ifelse(data$temp=="199","1999",data$temp)

data$temp<-as.numeric(as.character(data$temp))
table(data$temp)
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$DocTerminoT<-data$temp


# Pais donde estudio doc2

data$temp<-NA

data$temp <- gsub("Mexico", "MEX", data$DocPais2);
data$temp <- gsub("M(.*)ico", "MEX", data$temp);
data$temp <- gsub("Alemania", "EUR", data$temp);
data$temp <- gsub("EUA", "EUAC", data$temp);
data$temp <- gsub("Suecia", "EUR", data$temp);
data$temp <- gsub("Espa(.*)", "EUR", data$temp);

data$temp<-ifelse(data$DocPaisT=="SinDoc","SinDoc",data$temp)
data$temp<-ifelse(data$DocPaisT=="SinMaes","SinMaes",data$temp)
data$temp<-ifelse(data$DocPaisT!="SinMaes" & data$DocPaisT!="SinDoc" &
                    !is.na(data$DocPaisT) & is.na(data$temp),"SinDoc2",data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="MEX",1,data$temp)
data$temp<-ifelse(data$temp=="EUAC",2,data$temp)
data$temp<-ifelse(data$temp=="EUR",3,data$temp)
data$temp<-ifelse(data$temp=="SinDoc",4,data$temp)
data$temp<-ifelse(data$temp=="SinDoc2",5,data$temp)
data$temp<-ifelse(data$temp=="SinMaes",6,data$temp)


data$DocPaisT2<-data$temp

data$temp<-NA


# Doctorado institucion

data$temp<-ifelse(is.na(data$DocInstitucion) & !is.na(data$DocInstitucion2),data$DocInstitucion2,data$DocInstitucion)
data$DocInstitucion2<-ifelse(is.na(data$DocInstitucion) & !is.na(data$DocInstitucion2),NA,data$DocInstitucion2)
data$DocInstitucion<-data$temp

data$temp<-NA

data$temp <- gsub("(.*)colme(.*)", "COLMEX", data$DocInstitucion);
data$temp <- gsub("(.*)Colme(.*)", "COLMEX", data$temp);
data$temp <- gsub("colme(.*)", "COLMEX", data$temp);
data$temp <- gsub("(.*)legio de m(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(.*)legio(.*)M(.*)ico", "COLMEX", data$temp);
data$temp <- gsub("(.*)M(.*)xico", "COLMEX", data$temp);
data$temp <- gsub("(.*)OLEGIO DE M(.*)XICO", "COLMEX", data$temp);
data$temp <- gsub("(.*)OLEGIO DEM(.*)XICO", "COLMEX", data$temp);
data$temp <- gsub("(.*)COLME(.*)", "COLMEX", data$temp);

data$temp<-ifelse(data$temp!="COLMEX" & !is.na(data$temp) & data$DocPaisT=="MEX","OtraMex",data$temp)
data$temp<-ifelse(data$temp!="COLMEX" & !is.na(data$temp) & data$DocPaisT=="EUAC","OtraExt",data$temp)
data$temp<-ifelse(data$temp!="COLMEX" & !is.na(data$temp) & data$DocPaisT=="LATAM","OtraExt",data$temp)
data$temp<-ifelse(data$temp!="COLMEX" & !is.na(data$temp) & data$DocPaisT=="OTRO","OtraExt",data$temp)
data$temp<-ifelse(data$temp!="COLMEX" & !is.na(data$temp) & data$DocPaisT=="EUR","OtraExt",data$temp)

data$temp<-ifelse(is.na(data$temp) & !is.na(data$DocPaisT),99,data$temp)
data$temp<-ifelse(data$temp=="-",NA,data$temp)

data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="COLMEX",1,data$temp)
data$temp<-ifelse(data$temp=="OtraMex",2,data$temp)
data$temp<-ifelse(data$temp=="OtraExt",3,data$temp)


data$DocInstT<-data$temp
data$temp<-NA

data$temp <- gsub("UNAM", "OtraMex", data$DocInstitucion2);
data$temp <- gsub("(.*)xico", "OtraMex", data$temp);
data$temp <- gsub("(.*)nesota", "OtraExt", data$temp);
data$temp <- gsub("(.*)Estocolmo", "OtraExt", data$temp);
data$temp <- gsub("(.*)ximilian", "OtraExt", data$temp);
data$temp <- gsub("(.*)Zaragoza", "OtraExt", data$temp);

data$temp <- ifelse(data$DocPaisT2=="SinDoc","SinDoc",data$temp)
data$temp <- ifelse(data$DocPaisT2=="SinDoc2","SinDoc2",data$temp)
data$temp <- ifelse(data$DocPaisT2=="SinMaes","SinMaes",data$temp)


data$temp<-ifelse(is.na(data$temp),99,data$temp)
table(data$temp)

data$DocInstT2<-data$temp

data$temp<-NA

data$temp<-data$DocInicio2

data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$DocInicioT2<-data$temp

data$temp<-NA

data$temp<-data$DocTermino2

data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(is.na(data$temp),9999,data$temp)
data$DocTerminoT2<-data$temp

data$temp<-NA

data$DocColmex<-NA
data$DocColmex<-ifelse(data$DocInstT=="COLMEX",1,0)
data$DocColmex<-ifelse(data$DocInstT2=="COLMEX",1,data$DocColmex)


# Programas en Colmex
data$ColmexT<-data$LicColmex+data$MaesColmex+data$DocColmex
table(data$ColmexT)


# Licenciatura
data$temp<-ifelse(data$LicColmex==1 & data$LicInstitucionT=="COLMEX",
                  data$LicPrograma,data$temp)
data$temp<-ifelse(data$LicColmex==1 & data$LicInstitucionT!="COLMEX" &
                    data$LicInstitucionT2=="COLMEX",data$LicPrograma2,data$temp)

data$temp <- gsub("APP", "PAP", data$temp);
data$temp <- gsub("(.*)ADMINI(.*)", "PAP", data$temp);
data$temp <- gsub("(.*)Admini(.*)", "PAP", data$temp);
data$temp <- gsub("LAP", "PAP", data$temp);

data$temp<-ifelse(data$temp=="RI","Internacion",data$temp)
data$temp <- gsub("(.*)Inter(.*)", "RRII", data$temp);
data$temp <- gsub("(.*)INTER(.*)", "RRII", data$temp);
data$temp <- gsub("(.*)inter(.*)", "RRII", data$temp);
data$temp <- gsub("(.*)en RI", "RRII", data$temp);
data$temp <- gsub("(.*)licenciatura RI", "RRII", data$temp);
data$temp <- gsub("LRI", "RRII", data$temp);

data$temp <- gsub("(.*)formac(.*)", "OTRO", data$temp);
data$temp <- gsub("LEAD", "OTRO", data$temp);

data$temp <- gsub("Licenciatura", "NE", data$temp);

data$temp <-ifelse(data$temp=="RRII",1,data$temp)
data$temp <-ifelse(data$temp=="PAP",2,data$temp)
data$temp <-ifelse(data$temp=="OTRO",3,data$temp)
data$temp <-ifelse(data$temp=="NE",9,data$temp)
data$temp <-ifelse(is.na(data$temp),99,data$temp)


data$LicPColmex<-data$temp

data$temp<-NA

# Maestria

data$temp<-ifelse(data$MaesColmex==1 & data$MaesInstitucionT=="COLMEX",
                  data$MaesPrograma,data$temp)
data$temp<-ifelse(data$MaesColmex==1 & data$MaesInstitucionT!="COLMEX" &
                    data$MaesInstitucionT2=="COLMEX",data$MaesPrograma2,data$temp)

data$temp <- gsub("(.*)oct(.*)", "DOCT", data$temp);
data$temp <- gsub("(.*)OCTO(.*)", "DOCT", data$temp);

data$temp <- gsub("(.*)FRICA(.*)", "MEAA", data$temp);
data$temp <- gsub("(.*)frica(.*)", "MEAA", data$temp);
data$temp <- gsub("(.*)ASIA(.*)", "MEAA", data$temp);
data$temp <- gsub("(.*)Asia(.*)", "MEAA", data$temp);
data$temp <- gsub("(.*)asia(.*)", "MEAA", data$temp);
data$temp <- gsub("(.*)Orien(.*)", "MEAA", data$temp);
data$temp <- gsub("China", "MEAA", data$temp);
data$temp <- gsub("Estudios de A y A", "MEAA", data$temp);
data$temp <- gsub("ceaa", "MEAA", data$temp);

data$temp <- gsub("(.*)ECONO(.*)", "MEcon", data$temp);
data$temp <- gsub("(.*)econo(.*)", "MEcon", data$temp);
data$temp <- gsub("(.*)Econo(.*)", "MEcon", data$temp);

data$temp <- gsub("(.*)emogra(.*)", "MDemo", data$temp);
data$temp <- gsub("(.*)EMOGRA(.*)", "MDemo", data$temp);

data$temp <- gsub("MEU", "MEUA", data$temp);
data$temp <- gsub("(.*)urbano(.*)", "MEUA", data$temp);
data$temp <- gsub("(.*)Urbano(.*)", "MEUA", data$temp);
data$temp <- gsub("(.*)URBANO(.*)", "MEUA", data$temp);
data$temp <- gsub("(.*)DESA(.*)", "MEUA", data$temp);
data$temp <- gsub("(.*)desa(.*)", "MEUA", data$temp);
data$temp <- gsub("(.*)Desa(.*)", "MEUA", data$temp);

data$temp <- gsub("(.*)LITER(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)liter(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)Liter(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)ling(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)LING(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)Ling(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)HISP(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)hisp(.*)", "MLLH", data$temp);
data$temp <- gsub("(.*)Hisp(.*)", "MLLH", data$temp);

data$temp <- gsub("(.*)HIST(.*)", "MHIST", data$temp);
data$temp <- gsub("(.*)Hist(.*)", "MHIST", data$temp);
data$temp <- gsub("(.*)hist(.*)", "MHIST", data$temp);
data$temp <- gsub("(.*)HIst(.*)", "MHIST", data$temp);

data$temp <- gsub("(.*)NERO(.*)", "MGEN", data$temp);
data$temp <- gsub("(.*)nero(.*)", "MGEN", data$temp);
data$temp <- gsub("(.*)Muj(.*)", "MGEN", data$temp);
data$temp <- gsub("(.*)MUJ(.*)", "MGEN", data$temp);
data$temp <- gsub("(.*)muj(.*)", "MGEN", data$temp);
data$temp <- gsub("PIEM", "MGEN", data$temp);

data$temp <- gsub("(.*)TRAD(.*)", "MTRAD", data$temp);
data$temp <- gsub("(.*)trad(.*)", "MTRAD", data$temp);
data$temp <- gsub("(.*)Trad(.*)", "MTRAD", data$temp);
data$temp <- gsub("PFT", "MTRAD", data$temp);

data$temp <- gsub("(.*)POL(.*)", "MCPO", data$temp);
data$temp <- gsub("(.*)pol(.*)", "MCPO", data$temp);
data$temp <- gsub("(.*)pol(.*)", "MCPO", data$temp);
data$temp <- gsub("(.*)Pol(.*)", "MCPO", data$temp);

data$temp <- gsub("(.*)ESTA(.*)", "MOTRA", data$temp);
data$temp <- gsub("(.*)Esta(.*)", "MOTRA", data$temp);
data$temp <- gsub("(.*)Rela(.*)", "MOTRA", data$temp);
data$temp <- gsub("(.*)RELA(.*)", "MOTRA", data$temp);
data$temp <- gsub("(.*)Bibli(.*)", "MOTRA", data$temp);
data$temp <- gsub("Asunto(.*)", "MOTRA", data$temp);

data$temp <- gsub("LEAD(.*)", "LEAD", data$temp);

data$temp <- gsub("MAESTRIA", "MEcon", data$temp);
data$temp <- gsub("MAESTR\303\215A", "MEcon", data$temp);

data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="MEAA",1,data$temp)
data$temp<-ifelse(data$temp=="MDemo",2,data$temp)
data$temp<-ifelse(data$temp=="MEcon",3,data$temp)
data$temp<-ifelse(data$temp=="MEUA",4,data$temp)
data$temp<-ifelse(data$temp=="MCPO",5,data$temp)
data$temp<-ifelse(data$temp=="MHIST",6,data$temp)
data$temp<-ifelse(data$temp=="MGEN",7,data$temp)
data$temp<-ifelse(data$temp=="MLLH",8,data$temp)
data$temp<-ifelse(data$temp=="MTRAD",9,data$temp)
data$temp<-ifelse(data$temp=="MOTRA",10,data$temp)
data$temp<-ifelse(data$temp=="LEAD",11,data$temp)
data$temp<-ifelse(data$temp=="DOCT",12,data$temp)


data$MaesPColmex<-data$temp

data$temp<-NA

# Doctorado

data$temp<-ifelse(data$DocColmex==1 & data$DocInstT=="COLMEX",
                  data$DocPrograma,data$temp)
data$temp<-ifelse(data$DocColmex==1 & data$DocInstT!="COLMEX" &
                    data$DocInstT2=="COLMEX",data$DocPrograma2,data$temp)

table(data$temp)

data$temp <- gsub("(.*)FRICA(.*)", "DEAA", data$temp);
data$temp <- gsub("(.*)frica(.*)", "DEAA", data$temp);
data$temp <- gsub("(.*)ASIA(.*)", "DEAA", data$temp);
data$temp <- gsub("(.*)Asia(.*)", "DEAA", data$temp);
data$temp <- gsub("(.*)asia(.*)", "DEAA", data$temp);
data$temp <- gsub("(.*)Orien(.*)", "DEAA", data$temp);
data$temp <- gsub("China", "DEAA", data$temp);
data$temp <- gsub("Estudios de A y A", "DEAA", data$temp);
data$temp <- gsub("ceaa", "DEAA", data$temp);

data$temp <- gsub("(.*)POBLA(.*)", "DPOB", data$temp);
data$temp <- gsub("(.*)pobla(.*)", "DPOB", data$temp);
data$temp <- gsub("(.*)Pobla(.*)", "DPOB", data$temp);

data$temp <- gsub("(.*)ocio(.*)", "DSOC", data$temp);
data$temp <- gsub("(.*)OCIO(.*)", "DSOC", data$temp);
data$temp <- gsub("(.*)ciencia social(.*)", "DSOC", data$temp);
data$temp <- gsub("(.*)iencia Social(.*)", "DSOC", data$temp);
data$temp <- gsub("(.*)CIENCIAS SOCIALES(.*)", "DSOC", data$temp);
data$temp <- gsub("(.*)CIENCIA SOCIAL(.*)", "DSOC", data$temp);
data$temp <- gsub("Ciencias Sociales", "DSOC", data$temp);
data$temp <- gsub("Doctorado en DSOC", "DSOC", data$temp);
data$temp <- gsub("Doctorado en C. Sociales", "DSOC", data$temp);
data$temp <- gsub("DCSS", "DSOC", data$temp);

data$temp <- gsub("(.*)LING(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)ling(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)Ling(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)LITE(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)Lite(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)lite(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)Hisp(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)hisp(.*)", "DLLH", data$temp);
data$temp <- gsub("(.*)HISP(.*)", "DLLH", data$temp);

data$temp <- gsub("(.*)HIST(.*)", "DHIST", data$temp);
data$temp <- gsub("(.*)Hist(.*)", "DHIST", data$temp);
data$temp <- gsub("(.*)HIst(.*)", "DHIST", data$temp);
data$temp <- gsub("(.*)hist(.*)", "DHIST", data$temp);

data$temp <- gsub("(.*)ECON(.*)", "DECON", data$temp);
data$temp <- gsub("(.*)econ(.*)", "DECON", data$temp);
data$temp <- gsub("(.*)Econ(.*)", "DECON", data$temp);

data$temp <- gsub("(.*)rbano(.*)", "DEUA", data$temp);
data$temp <- gsub("(.*)RBANO(.*)", "DEUA", data$temp);

data$temp <- gsub("(.*)ticas(.*)", "DOTRO", data$temp);
data$temp <- gsub("(.*)ntropo(.*)", "DOTRO", data$temp);
data$temp <- gsub("(.*)Relac(.*)", "DOTRO", data$temp);

data$temp<-ifelse(data$id==563,"DHIST",data$temp)
data$temp<-ifelse(data$id==598,"DLLH",data$temp)
data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp<-ifelse(data$temp=="DHIST",1,data$temp)
data$temp<-ifelse(data$temp=="DLLH",2,data$temp)
data$temp<-ifelse(data$temp=="DSOC",3,data$temp)
data$temp<-ifelse(data$temp=="DPOB",4,data$temp)
data$temp<-ifelse(data$temp=="DEUA",5,data$temp)
data$temp<-ifelse(data$temp=="DEAA",6,data$temp)
data$temp<-ifelse(data$temp=="DECON",7,data$temp)
data$temp<-ifelse(data$temp=="DOTRO",8,data$temp)


data$DocPColmex<-data$temp

data$temp<-NA

# Toca por Centro

# Licenciatura

data$temp<-ifelse(data$LicColmex==1 & data$LicInstitucionT=="COLMEX",
                  data$LicCentro,data$temp)

data$temp<-ifelse(data$LicColmex==1 & data$LicInstitucionT!="COLMEX" &
                    data$LicInstitucionT2=="COLMEX",data$LicCentro2,data$temp)

data$temp <- gsub("(.*)nternaciona(.*)", "CEI", data$temp);
data$temp <- gsub("(.*)NTERNACIO(.*)", "CEI", data$temp);
data$temp <- gsub("INternacionales", "CEI", data$temp);
data$temp <- gsub("CI", "CEI", data$temp);

data$temp <- gsub("(.*)Demog(.*)", "OTRO", data$temp);
data$temp <- gsub("(.*)liter(.*)", "OTRO", data$temp);
data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp<-ifelse(data$temp=="CEI",1,data$temp)
data$temp<-ifelse(data$temp=="OTRO",2,data$temp)


data$LicCCentro<-data$temp

data$temp<-NA

# Maestria

data$temp<-ifelse(data$MaesColmex==1 & data$MaesInstitucionT=="COLMEX",
                  data$MaesCentro,data$temp)

data$temp<-ifelse(data$MaesColmex==1 & data$MaesInstitucionT!="COLMEX" &
                    data$MaesInstitucionT2=="COLMEX",data$MaesCentro2,data$temp)

data$temp <- gsub("(.*)Hist(.*)", "CEH", data$temp);
data$temp <- gsub("(.*)hist(.*)", "CEH", data$temp);
data$temp <- gsub("(.*)HIST(.*)", "CEH", data$temp);

data$temp <- gsub("(.*)ibliote(.*)", "BDCV", data$temp);

data$temp <- gsub("CED(.*)", "CEDUA", data$temp);
data$temp <- gsub("cedua", "CEDUA", data$temp);
data$temp <- gsub("ceddu", "CEDUA", data$temp);
data$temp <- gsub("cedu", "CEDUA", data$temp);
data$temp <- gsub("Cedua", "CEDUA", data$temp);
data$temp <- gsub("SEDUA", "CEDUA", data$temp);
data$temp <- gsub("(.*)emogr(.*)", "CEDUA", data$temp);
data$temp <- gsub("(.*)EMOGR(.*)", "CEDUA", data$temp);

data$temp <- gsub("(.*)conom(.*)", "CEE", data$temp);
data$temp <- gsub("(.*)micos(.*)", "CEE", data$temp);
data$temp <- gsub("(.*)MICOS(.*)", "CEE", data$temp);
data$temp <- gsub("cee", "CEE", data$temp);
data$temp <- gsub("Cee", "CEE", data$temp);

data$temp <- gsub("(.*)nterna(.*)", "CEI", data$temp);
data$temp <- gsub("(.*)NTERNA(.*)", "CEI", data$temp);

data$temp <- gsub("(.*)frica(.*)", "CEAA", data$temp);
data$temp <- gsub("(.*)FRICA(.*)", "CEAA", data$temp);
data$temp <- gsub("CEAA(.*)", "CEAA", data$temp);
data$temp <- gsub("ceaa(.*)", "CEAA", data$temp);

data$temp <- gsub("(.*)ING(.*)", "CELL", data$temp);
data$temp <- gsub("(.*)ing(.*)", "CELL", data$temp);
data$temp <- gsub("(.*)raductor(.*)", "CELL", data$temp);
data$temp <- gsub("CEL(.*)", "CELL", data$temp);
data$temp <- gsub("PFT", "CELL", data$temp);
data$temp <- gsub("No s(.*)", "CELL", data$temp);

data$temp <- gsub("(.*)ociol(.*)", "CES", data$temp);
data$temp <- gsub("(.*)OCIOL(.*)", "CES", data$temp);
data$temp <- gsub("(.*)IEM(.*)", "CES", data$temp);
data$temp <- gsub("(.*)ujer(.*)", "CES", data$temp);

data$temp<-ifelse(data$temp=="1977","CEAA",data$temp)
data$temp<-ifelse(data$temp=="CCE","CEE",data$temp)
data$temp<-ifelse(data$temp=="CEEA","CEAA",data$temp)
data$temp<-ifelse(data$temp=="COLMEX","CELL",data$temp)
data$temp<-ifelse(data$temp=="Colmex","CEAA",data$temp)
data$temp<-ifelse(data$temp=="CEEE","CEE",data$temp)

data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MEcon","CEE",data$temp)
data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MEUA","CEDUA",data$temp)
data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MDemo","CEDUA",data$temp)
data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MOTRA","OTRO",data$temp)

data$temp <- gsub("(.*)olegi(.*)", "OTRO", data$temp);
data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp<-ifelse(data$temp=="CEDUA",1,data$temp)
data$temp<-ifelse(data$temp=="CEE",2,data$temp)
data$temp<-ifelse(data$temp=="CEAA",3,data$temp)
data$temp<-ifelse(data$temp=="CELL",4,data$temp)
data$temp<-ifelse(data$temp=="CES",5,data$temp)
data$temp<-ifelse(data$temp=="CEH",6,data$temp)
data$temp<-ifelse(data$temp=="CEI",7,data$temp)
data$temp<-ifelse(data$temp=="CEED",8,data$temp)
data$temp<-ifelse(data$temp=="BDCV",9,data$temp)
data$temp<-ifelse(data$temp=="OTRO",10,data$temp)


data$MaesCCentro<-data$temp

data$temp<-NA

# Doctorado

data$temp<-ifelse(data$DocColmex==1 & data$DocInstT=="COLMEX",
                  data$DocCentro,data$temp)

data$temp<-ifelse(data$DocColmex==1 & data$DocInstT!="COLMEX" &
                    data$DocInstT2=="COLMEX",data$DocCentro2,data$temp)

data$temp <- gsub("(.*)Hist(.*)", "CEH", data$temp);
data$temp <- gsub("(.*)hist(.*)", "CEH", data$temp);
data$temp <- gsub("(.*)HIST(.*)", "CEH", data$temp);
data$temp <- gsub("(.*)HIst(.*)", "CEH", data$temp);
data$temp <- ifelse(data$temp=="ceh","CEH", data$temp);
data$temp <- ifelse(data$temp=="Ceh","CEH", data$temp);
data$temp <- ifelse(data$temp=="X","CEH", data$temp);
data$temp <- gsub("CCH", "CEH", data$temp);

data$temp <- gsub("(.*)ibliote(.*)", "BDCV", data$temp);

data$temp <- gsub("CED(.*)", "CEDUA", data$temp);
data$temp <- gsub("cedua", "CEDUA", data$temp);
data$temp <- gsub("ceddu", "CEDUA", data$temp);
data$temp <- gsub("cedu", "CEDUA", data$temp);
data$temp <- gsub("Cedua", "CEDUA", data$temp);
data$temp <- gsub("SEDUA", "CEDUA", data$temp);
data$temp <- gsub("(.*)emogr(.*)", "CEDUA", data$temp);
data$temp <- gsub("(.*)EMOGR(.*)", "CEDUA", data$temp);

data$temp <- gsub("(.*)conom(.*)", "CEE", data$temp);
data$temp <- gsub("(.*)micos(.*)", "CEE", data$temp);
data$temp <- gsub("(.*)MICOS(.*)", "CEE", data$temp);
data$temp <- gsub("cee", "CEE", data$temp);
data$temp <- gsub("Cee", "CEE", data$temp);

data$temp <- gsub("(.*)nterna(.*)", "CEI", data$temp);
data$temp <- gsub("(.*)NTERNA(.*)", "CEI", data$temp);

data$temp <- gsub("(.*)frica(.*)", "CEAA", data$temp);
data$temp <- gsub("(.*)FRICA(.*)", "CEAA", data$temp);
data$temp <- gsub("CEAA(.*)", "CEAA", data$temp);
data$temp <- gsub("ceaa(.*)", "CEAA", data$temp);

data$temp <- gsub("(.*)ING(.*)", "CELL", data$temp);
data$temp <- gsub("(.*)ing(.*)", "CELL", data$temp);
data$temp <- gsub("(.*)raductor(.*)", "CELL", data$temp);
data$temp <- gsub("CEL(.*)", "CELL", data$temp);
data$temp <- gsub("PFT", "CELL", data$temp);
data$temp <- gsub("No s(.*)", "CELL", data$temp);
data$temp <- ifelse(data$temp=="cell","CELL", data$temp);
data$temp <- ifelse(data$temp=="Cell","CELL", data$temp);

data$temp <- gsub("(.*)ociol(.*)", "CES", data$temp);
data$temp <- gsub("(.*)OCIOL(.*)", "CES", data$temp);
data$temp <- gsub("(.*)IEM(.*)", "CES", data$temp);
data$temp <- gsub("(.*)ujer(.*)", "CES", data$temp);
data$temp <- gsub("2006", "CES", data$temp);
data$temp <- gsub("s\303\255", "CES", data$temp);
data$temp <- ifelse(data$temp=="CEES","CES", data$temp);

data$temp<-ifelse(data$temp=="1977","CEAA",data$temp)
data$temp<-ifelse(data$temp=="CCE","CEE",data$temp)
data$temp<-ifelse(data$temp=="CEEA","CEAA",data$temp)
data$temp<-ifelse(data$temp=="COLMEX","CELL",data$temp)
data$temp<-ifelse(data$temp=="Colmex","CEAA",data$temp)
data$temp<-ifelse(data$temp=="CEEE","CEE",data$temp)

data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MEcon","CEE",data$temp)
data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MEUA","CEDUA",data$temp)
data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MDemo","CEDUA",data$temp)
data$temp<-ifelse(data$temp=="CEED" & data$MaesPColmex=="MOTRA","OTRO",data$temp)
data$temp<-ifelse(is.na(data$temp),99,data$temp)

data$temp<-ifelse(data$temp=="CEDUA",1,data$temp)
data$temp<-ifelse(data$temp=="CELL",2,data$temp)
data$temp<-ifelse(data$temp=="CEH",3,data$temp)
data$temp<-ifelse(data$temp=="CES",4,data$temp)
data$temp<-ifelse(data$temp=="CEAA",5,data$temp)
data$temp<-ifelse(data$temp=="CEE",6,data$temp)
data$temp<-ifelse(data$temp=="CEI",7,data$temp)



data$DocCCentro<-data$temp

data$temp<-NA

data$ExpPrevia <- str_conv(data$ExpPrevia, "UTF-8")

data$temp<-NA
data$temp <- gsub("S(.*)","Si",data$ExpPrevia);
data$temp <- gsub("N(.*)","No",data$temp);
table(data$temp, exclude=F)
data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="Si",1,data$temp)
data$temp <- ifelse(data$temp == "No", 2, data$temp)

data$TrabPrevio<-data$temp

data$temp<-NA

data$TP1_AnioI <- str_conv(data$TP1_AnioI, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP1_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);
data$temp <- gsub("(.*)98(.*)", "1998", data$temp);
data$temp <- gsub("(.*)84(.*)", "1985", data$temp);
data$temp <- gsub("(.*)1990(.*)", "1990", data$temp);
data$temp <- gsub("(.*)2999(.*)", "1999", data$temp);
data$temp <- gsub("(.*)972(.*)", "1972", data$temp);

data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(data$temp==19,NA,data$temp)

data$TrabPevio1I<-data$temp

data$temp<-NA

data$TP1_AnioF <- str_conv(data$TP1_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP1_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp <- gsub("(.*)95(.*)", "1995", data$temp);
data$temp <- gsub("(.*)99 mayo", "1999", data$temp);
data$temp <- gsub("19985", "1985", data$temp);

data$temp <- gsub("(.*)ontin(.*)","8888",data$temp)
data$temp <- gsub("(.*)ONTIN(.*)","8888",data$temp)
data$temp <- ifelse(data$temp=="a la fecha","8888",data$temp)
data$temp <- ifelse(data$temp=="actualidad","8888",data$temp)
data$temp <- ifelse(data$temp=="vigente","8888",data$temp)

data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(data$temp==19,NA,data$temp)

data$TrabPrevioF1<-data$temp

data$temp<-NA


data$TP2_AnioI <- str_conv(data$TP2_AnioI, "UTF-8")
table(data$TP2_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP2_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio2I<-data$temp

data$temp<-NA

data$TP2_AnioF <- str_conv(data$TP2_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP2_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp <- gsub("(.*)CTUAL", "8888", data$temp);
data$temp <- gsub("(.*)igente", "8888", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF2<-data$temp

data$temp<-NA



data$TP3_AnioI <- str_conv(data$TP3_AnioI, "UTF-8")
table(data$TP3_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP3_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio3I<-data$temp

data$temp<-NA

data$TP3_AnioF <- str_conv(data$TP3_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP3_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);
data$temp <- gsub("021955", "1955", data$temp);
data$temp <- gsub("A la feha", "8888", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF3<-data$temp

data$temp<-NA

data$TP4_AnioI <- str_conv(data$TP4_AnioI, "UTF-8")
table(data$TP4_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP4_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio4I<-data$temp

data$temp<-NA

data$TP4_AnioF <- str_conv(data$TP4_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP4_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF4<-data$temp

data$temp<-NA

data$TP5_AnioI <- str_conv(data$TP5_AnioI, "UTF-8")
table(data$TP5_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP3_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);
table(data$temp)
data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio5I<-data$temp

data$temp<-NA

data$TP5_AnioF <- str_conv(data$TP5_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP5_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF5<-data$temp

data$temp<-NA

data$TP6_AnioI <- str_conv(data$TP6_AnioI, "UTF-8")
table(data$TP6_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP6_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio6I<-data$temp

data$temp<-NA

data$TP6_AnioF <- str_conv(data$TP6_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP6_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF6<-data$temp

data$temp<-NA

data$TP7_AnioI <- str_conv(data$TP7_AnioI, "UTF-8")
table(data$TP7_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP7_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio7I<-data$temp

data$temp<-NA

data$TP7_AnioF <- str_conv(data$TP7_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP7_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);
data$temp <- gsub("A LA FECHA", "8888", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF7<-data$temp

data$temp<-NA

data$TP8_AnioI <- str_conv(data$TP8_AnioI, "UTF-8")
table(data$TP8_AnioI)
data$temp <- gsub("(.*)1960", "1960", data$TP8_AnioI);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPevio8I<-data$temp

data$temp<-NA

data$TP8_AnioF <- str_conv(data$TP8_AnioF, "UTF-8")
data$temp <- gsub("(.*)1960", "1960", data$TP8_AnioF);
data$temp <- gsub("(.*)1961", "1961", data$temp);
data$temp <- gsub("(.*)1962", "1962", data$temp);
data$temp <- gsub("(.*)1963", "1963", data$temp);
data$temp <- gsub("(.*)1964", "1964", data$temp);
data$temp <- gsub("(.*)1965", "1965", data$temp);
data$temp <- gsub("(.*)1966", "1966", data$temp);
data$temp <- gsub("(.*)1967", "1967", data$temp);
data$temp <- gsub("(.*)1968", "1968", data$temp);
data$temp <- gsub("(.*)1969", "1969", data$temp);
data$temp <- gsub("(.*)1970", "1970", data$temp);
data$temp <- gsub("(.*)1971", "1971", data$temp);
data$temp <- gsub("(.*)1972", "1972", data$temp);
data$temp <- gsub("(.*)1973", "1973", data$temp);
data$temp <- gsub("(.*)1974", "1974", data$temp);
data$temp <- gsub("(.*)1975", "1975", data$temp);
data$temp <- gsub("(.*)1976", "1976", data$temp);
data$temp <- gsub("(.*)1977", "1977", data$temp);
data$temp <- gsub("(.*)1978", "1978", data$temp);
data$temp <- gsub("(.*)1979", "1979", data$temp);
data$temp <- gsub("(.*)1980", "1980", data$temp);
data$temp <- gsub("(.*)1981", "1981", data$temp);
data$temp <- gsub("(.*)1982", "1982", data$temp);
data$temp <- gsub("(.*)1983", "1983", data$temp);
data$temp <- gsub("(.*)1984", "1984", data$temp);
data$temp <- gsub("(.*)1985", "1985", data$temp);
data$temp <- gsub("(.*)1986", "1986", data$temp);
data$temp <- gsub("(.*)1987", "1987", data$temp);
data$temp <- gsub("(.*)1988", "1988", data$temp);
data$temp <- gsub("(.*)1989", "1989", data$temp);
data$temp <- gsub("(.*)1990", "1990", data$temp);
data$temp <- gsub("(.*)1991", "1991", data$temp);
data$temp <- gsub("(.*)1992", "1992", data$temp);
data$temp <- gsub("(.*)1993", "1993", data$temp);
data$temp <- gsub("(.*)1994", "1994", data$temp);
data$temp <- gsub("(.*)1995", "1995", data$temp);
data$temp <- gsub("(.*)1996", "1996", data$temp);
data$temp <- gsub("(.*)1997", "1997", data$temp);
data$temp <- gsub("(.*)1998", "1998", data$temp);
data$temp <- gsub("(.*)1999", "1999", data$temp);
data$temp <- gsub("(.*)2000", "2000", data$temp);
data$temp <- gsub("(.*)2001", "2001", data$temp);
data$temp <- gsub("(.*)2002", "2002", data$temp);
data$temp <- gsub("(.*)2003", "2003", data$temp);
data$temp <- gsub("(.*)2004", "2004", data$temp);
data$temp <- gsub("(.*)2005", "2005", data$temp);
data$temp <- gsub("(.*)2006", "2006", data$temp);
data$temp <- gsub("(.*)2007", "2007", data$temp);
data$temp <- gsub("(.*)2008", "2008", data$temp);
data$temp <- gsub("(.*)2009", "2009", data$temp);
data$temp <- gsub("(.*)2010", "2010", data$temp);
data$temp <- gsub("(.*)2011", "2011", data$temp);
data$temp <- gsub("(.*)2012", "2012", data$temp);
data$temp <- gsub("(.*)2013", "2013", data$temp);
data$temp <- gsub("(.*)2014", "2014", data$temp);
data$temp <- gsub("(.*)2015", "2015", data$temp);
data$temp <- gsub("(.*)2016", "2016", data$temp);
data$temp <- gsub("(.*)2017", "2017", data$temp);

data$temp<-as.numeric(as.character(data$temp))

data$TrabPrevioF8<-data$temp

data$temp<-NA

# Empleo al salir

data$EmpleoSalir <- str_conv(data$EmpleoSalir, "UTF-8")
data$temp <- gsub("S(.*)","Si", data$EmpleoSalir);
data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="Si",1,data$temp)
data$temp <- ifelse(data$temp == "No", 2, data$temp)

data$EmpleoSalirT<-data$temp


data$temp<-NA

data$EmpleoBusqueda <- str_conv(data$EmpleoBusqueda, "UTF-8")
data$temp <- gsub("S(.*)","Si", data$EmpleoBusqueda);
data$temp<-ifelse(is.na(data$temp),99,data$temp)
data$temp<-ifelse(data$temp=="Si",1,data$temp)
data$temp <- ifelse(data$temp == "No", 2, data$temp)

data$EmpleoBusquedaT<-data$temp

data$temp<-NA

data$NumTrabajos <- str_conv(data$NumTrabajos, "UTF-8")
data$temp <- gsub("7(.*)","7 y mas", data$NumTrabajos);
data$temp<-ifelse(is.na(data$temp),99,data$temp)
table(data$temp)

data$EmpleoBusquedaT<-data$temp

data$RazonNT1<-data$RazonNoTraba1
data$temp<-gsub("Contin(.*)","TrabajoPrevio",data$RazonNoTraba2)
data$temp<-gsub("Estoy(.*)","Buscando",data$temp)
data$temp<-gsub("Inves(.*)","Investigacion",data$temp)
data$temp<-gsub("Parece im(.*)","Parece imposible llenar el perfil",data$temp)
data$temp<-gsub("HACER(.*)","Doctorado",data$temp)
data$temp<-gsub("Post(.*)","Postdoctorado",data$temp)
data$temp<-gsub("Ya(.*)","Estaba Trabajando",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$RazonNT2<-data$temp

data$temp<-NA
data$temp<-gsub("Ya(.*)",1,data$BusquedaTiempo)
data$temp<-gsub("Menos(.*)",2,data$temp)
data$temp<-gsub("De 3 m(.*)",3,data$temp)
data$temp<-gsub("De 6 m(.*)",4,data$temp)
data$temp<-gsub("De 1 a(.*)",5,data$temp)
data$temp<-gsub("De 2 a(.*)",6,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)


data$TiempoBusqueda<-data$temp
table(data$TiempoBusqueda)

data$temp<-tolower(data$T1InicioM)

data$temp<-gsub("2008",NA,data$temp)
data$temp<-gsub("2003",NA,data$temp)
data$temp<-gsub("1998",NA,data$temp)
data$temp<-gsub("1969",NA,data$temp)

data$temp<-gsub("^01(.*)","enero",data$temp)
data$temp<-gsub("^02(.*)","febrero",data$temp)
data$temp<-gsub("^03(.*)","marzo",data$temp)
data$temp<-gsub("^04(.*)","abril",data$temp)
data$temp<-gsub("^05(.*)","mayo",data$temp)
data$temp<-gsub("^06(.*)","junio",data$temp)
data$temp<-gsub("^07(.*)","julio",data$temp)
data$temp<-gsub("^08(.*)","agosto",data$temp)
data$temp<-gsub("^09(.*)","septiembre",data$temp)
data$temp<-gsub("^10(.*)","octubre",data$temp)
data$temp<-gsub("^11(.*)","noviembre",data$temp)
data$temp<-gsub("^12(.*)","diciembre",data$temp)

data$temp<-gsub("8","agosto",data$temp)
data$temp<-gsub("00",NA,data$temp)
data$temp<-gsub("octubre(.*)","octubre",data$temp)

data$temp<-ifelse(data$temp=="enero",1,data$temp)
data$temp<-ifelse(data$temp=="january",1,data$temp)
data$temp<-ifelse(data$temp=="febrero",2,data$temp)
data$temp<-ifelse(data$temp=="marzo",3,data$temp)
data$temp<-ifelse(data$temp=="abril",4,data$temp)
data$temp<-ifelse(data$temp=="mayo",5,data$temp)
data$temp<-ifelse(data$temp=="junio",6,data$temp)
data$temp<-ifelse(data$temp=="julio",7,data$temp)
data$temp<-ifelse(data$temp=="agosto",8,data$temp)
data$temp<-ifelse(data$temp=="septiembre",9,data$temp)
data$temp<-ifelse(data$temp=="octubre",10,data$temp)
data$temp<-ifelse(data$temp=="noviembre",11,data$temp)
data$temp<-ifelse(data$temp=="diciembre",12,data$temp)


data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T1InicioM_<-data$temp

data$temp<-NA

data$temp<-ifelse(data$temp=="03/1980","1980",data$T1InicioA)
data$temp<-ifelse(data$temp=="04-03-2010","2010",data$temp)
data$temp<-ifelse(data$temp=="07/2008","2008",data$temp)
data$temp<-ifelse(data$temp=="08/1994","1994",data$temp)
data$temp<-ifelse(data$temp=="09/2013","2013",data$temp)
data$temp<-ifelse(data$temp=="10966","1966",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T1InicioA_<-as.numeric(as.character(data$temp))

data$temp<-NA

data$temp<-data$T1DuracionA
data$temp<-ifelse(data$temp=="1976-1979","3",data$temp)
data$temp<-ifelse(data$temp=="2006-2007","1",data$temp)
data$temp<-ifelse(data$temp=="2016-2017","1",data$temp)
data$temp<-as.numeric(as.character(data$temp))
data$temp<-ifelse(data$temp>100,data$temp-data$T1InicioA_,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T1DuracionA_<-data$temp

data$temp<-NA

data$temp<-data$T2Entrada
data$temp<-ifelse(data$temp=="01/04/2016","04/2016",data$temp)
data$temp<-ifelse(data$temp=="03/01/1995","01/1995",data$temp)
data$temp<-ifelse(data$temp=="05 de abril 2016","04/2016",data$temp)
data$temp<-ifelse(data$temp=="07(creo)/1987","07/1987",data$temp)
data$temp<-ifelse(data$temp=="1/01/2000","01/2000",data$temp)
data$temp<-ifelse(data$temp=="1/1998","01/1998",data$temp)
data$temp<-ifelse(data$temp=="10 1990","10/1990",data$temp)
data$temp<-ifelse(data$temp=="3/2001","03/2001",data$temp)
data$temp<-ifelse(data$temp=="5/2013","05/2013",data$temp)
data$temp<-ifelse(data$temp=="97/2016","00/2016",data$temp)
data$temp<-ifelse(data$temp=="AGOSTO 1993","08/1993",data$temp)
data$temp<-ifelse(data$temp=="Agosto 1988","08/1998",data$temp)
data$temp<-ifelse(data$temp=="Agosto 2001","08/2001",data$temp)
data$temp<-ifelse(data$temp=="Agosto 2008","08/2008",data$temp)
data$temp<-ifelse(data$temp=="Agosto 2013","08/2013",data$temp)
data$temp<-ifelse(data$temp=="ENERO 1976","01/1976",data$temp)
data$temp<-ifelse(data$temp=="Enero 2016","01/2016",data$temp)
data$temp<-ifelse(data$temp=="Febrero 2009","02/2009",data$temp)
data$temp<-ifelse(data$temp=="Febrero/2012","02/2012",data$temp)
data$temp<-ifelse(data$temp=="Julio 2001","07/2001",data$temp)
data$temp<-ifelse(data$temp=="Junio 2001","06/2001",data$temp)
data$temp<-ifelse(data$temp=="Junio 2016","06/2016",data$temp)
data$temp<-ifelse(data$temp=="Mayo 1980","05/1980",data$temp)
data$temp<-ifelse(data$temp=="Octubre 1986","10/1986",data$temp)
data$temp<-ifelse(data$temp=="SEPTIEMBRE 1997","09/1997",data$temp)
data$temp<-ifelse(data$temp=="agosto 2005","08/2005",data$temp)
data$temp<-ifelse(data$temp=="enero 1981","01/1981",data$temp)
data$temp<-ifelse(data$temp=="enero 2005","01/2005",data$temp)
data$temp<-ifelse(data$temp=="feb 1991","02/1991",data$temp)
data$temp<-ifelse(data$temp=="febrero 1989","02/1989",data$temp)
data$temp<-ifelse(data$temp=="febrero 1996","02/1996",data$temp)
data$temp<-ifelse(data$temp=="febrero de 1977","02/1977",data$temp)
data$temp<-ifelse(data$temp=="junio 1999","06/1999",data$temp)
data$temp<-ifelse(data$temp=="marzo 1972","03/1972",data$temp)
data$temp<-ifelse(data$temp=="marzo 2008","03/2008",data$temp)
data$temp<-ifelse(data$temp=="mayo",NA,data$temp)
data$temp<-ifelse(data$temp=="octubre 2013","10/2013",data$temp)
data$temp<-ifelse(data$temp=="septiembre  1978","09/1978",data$temp)
data$temp<-ifelse(data$temp=="septiembre 1997","09/1997",data$temp)
data$temp<-ifelse(data$temp=="FEBRERO 2009","02/2009",data$temp)

data$temp<-ifelse(data$temp=="1966","00/1966",data$temp)
data$temp<-ifelse(data$temp=="1972","00/1972",data$temp)
data$temp<-ifelse(data$temp=="1973","00/1973",data$temp)
data$temp<-ifelse(data$temp=="1976","00/1976",data$temp)
data$temp<-ifelse(data$temp=="1978","00/1978",data$temp)
data$temp<-ifelse(data$temp=="1979","00/1979",data$temp)
data$temp<-ifelse(data$temp=="1982","00/1982",data$temp)
data$temp<-ifelse(data$temp=="1985","00/1985",data$temp)
data$temp<-ifelse(data$temp=="1986","00/1986",data$temp)
data$temp<-ifelse(data$temp=="1987","00/1987",data$temp)
data$temp<-ifelse(data$temp=="1988","00/1988",data$temp)
data$temp<-ifelse(data$temp=="1989","00/1989",data$temp)
data$temp<-ifelse(data$temp=="1991","00/1991",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1993","00/1993",data$temp)
data$temp<-ifelse(data$temp=="1994","00/1994",data$temp)
data$temp<-ifelse(data$temp=="1995","00/1995",data$temp)
data$temp<-ifelse(data$temp=="1996","00/1996",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="2000","00/2000",data$temp)
data$temp<-ifelse(data$temp=="2001","00/2001",data$temp)
data$temp<-ifelse(data$temp=="2002","00/2002",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2011","00/2011",data$temp)
data$temp<-ifelse(data$temp=="2013","00/2013",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)
data$temp<-ifelse(data$temp=="08-2008","08/2008",data$temp)
data$temp<-ifelse(data$temp=="11/11996","11/1996",data$temp)

data$temp<-ifelse(data$temp=="2",NA,data$temp)
data$temp<-ifelse(data$temp=="No aplica",NA,data$temp)
data$temp<-ifelse(data$temp=="No tengo la informaci\303\263n",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T2InicioT<-data$temp
table(data$T2InicioT)

data$temp<-NA

data$temp<-data$T2Salida
data$temp<-ifelse(data$temp=="09(creo)/1991","09/1991",data$temp)
data$temp<-ifelse(data$temp=="1/2014","01/2014",data$temp)
data$temp<-ifelse(data$temp=="1973","00/1973",data$temp)
data$temp<-ifelse(data$temp=="1977","00/1977",data$temp)
data$temp<-ifelse(data$temp=="1979","00/1979",data$temp)
data$temp<-ifelse(data$temp=="1981","00/1981",data$temp)
data$temp<-ifelse(data$temp=="1982","00/1982",data$temp)
data$temp<-ifelse(data$temp=="1984","00/1984",data$temp)
data$temp<-ifelse(data$temp=="1986","00/1986",data$temp)
data$temp<-ifelse(data$temp=="1987","00/1987",data$temp)
data$temp<-ifelse(data$temp=="1988","00/1988",data$temp)
data$temp<-ifelse(data$temp=="1989","00/1989",data$temp)
data$temp<-ifelse(data$temp=="1990","00/1990",data$temp)
data$temp<-ifelse(data$temp=="1991","00/1991",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1993","00/1993",data$temp)
data$temp<-ifelse(data$temp=="1994","00/1994",data$temp)
data$temp<-ifelse(data$temp=="1995","00/1995",data$temp)
data$temp<-ifelse(data$temp=="1996","00/1996",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="2002","00/2002",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2014","00/2014",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)
data$temp<-ifelse(data$temp=="2016","00/2016",data$temp)
data$temp<-ifelse(data$temp=="30/12/2000","12/2000",data$temp)
data$temp<-ifelse(data$temp=="31/03/2001","03/2001",data$temp)
data$temp<-ifelse(data$temp=="AGOSTO 1984","08/1984",data$temp)
data$temp<-ifelse(data$temp=="AGOSTO 1995","08/1995",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2001","12/2001",data$temp)
data$temp<-ifelse(data$temp=="ENERO 2016","01/2016",data$temp)
data$temp<-ifelse(data$temp=="Enero 2003","01/2003",data$temp)
data$temp<-ifelse(data$temp=="Febrero 2008","02/2008",data$temp)
data$temp<-ifelse(data$temp=="Jul 2001","07/2001",data$temp)
data$temp<-ifelse(data$temp=="Julio 1998","07/1998",data$temp)
data$temp<-ifelse(data$temp=="Julio 2000","07/2000",data$temp)
data$temp<-ifelse(data$temp=="Junio 1991","06/1991",data$temp)
data$temp<-ifelse(data$temp=="MAYO 2017","05/2017",data$temp)
data$temp<-ifelse(data$temp=="Marzo/2013","03/2013",data$temp)
data$temp<-ifelse(data$temp=="Mayo 2009","05/2009",data$temp)
data$temp<-ifelse(data$temp=="Mayo 2017","05/2017",data$temp)
data$temp<-ifelse(data$temp=="Noviembre 2014","11/2014",data$temp)
data$temp<-ifelse(data$temp=="Octubre 2001","10/2001",data$temp)
data$temp<-ifelse(data$temp=="Septiembre 1981","09/1981",data$temp)
data$temp<-ifelse(data$temp=="abril 2006","04/2006",data$temp)
data$temp<-ifelse(data$temp=="abril 2010","04/2010",data$temp)
data$temp<-ifelse(data$temp=="diciembre 1996","12/1996",data$temp)
data$temp<-ifelse(data$temp=="enero 1983","01/1983",data$temp)
data$temp<-ifelse(data$temp=="enero 1991","01/1991",data$temp)
data$temp<-ifelse(data$temp=="febrero 2009","02/2009",data$temp)
data$temp<-ifelse(data$temp=="julio 2014","07/2014",data$temp)
data$temp<-ifelse(data$temp=="julio de 1977","07/1977",data$temp)
data$temp<-ifelse(data$temp=="junio  1981","06/1981",data$temp)
data$temp<-ifelse(data$temp=="octubre 2000","10/2000",data$temp)
data$temp<-ifelse(data$temp=="Vigente","88/8888",data$temp)
data$temp<-ifelse(data$temp=="No aplica",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T2SalidaT<-data$temp


data$temp<-NA

data$temp<-data$T3Entrada

data$temp<-ifelse(data$temp=="1971","00/1971",data$temp)
data$temp<-ifelse(data$temp=="1973","00/1973",data$temp)
data$temp<-ifelse(data$temp=="1977","00/1977",data$temp)
data$temp<-ifelse(data$temp=="1979","00/1979",data$temp)
data$temp<-ifelse(data$temp=="1982","00/1982",data$temp)
data$temp<-ifelse(data$temp=="1985","00/1985",data$temp)
data$temp<-ifelse(data$temp=="1986","00/1986",data$temp)
data$temp<-ifelse(data$temp=="1987","00/1987",data$temp)
data$temp<-ifelse(data$temp=="1989","00/1989",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1994","00/1994",data$temp)
data$temp<-ifelse(data$temp=="1996","00/1996",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="1999","00/1999",data$temp)
data$temp<-ifelse(data$temp=="2001","00/2001",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="2014","00/2014",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)

data$temp<-ifelse(data$temp=="8/2005","08/2005",data$temp)
data$temp<-ifelse(data$temp=="Enero 1995","01/1995",data$temp)
data$temp<-ifelse(data$temp=="Enero 2002","01/2002",data$temp)
data$temp<-ifelse(data$temp=="Julio 1991","07/1991",data$temp)
data$temp<-ifelse(data$temp=="Marzo 2002","03/2002",data$temp)
data$temp<-ifelse(data$temp=="Marzo 2008","03/2008",data$temp)
data$temp<-ifelse(data$temp=="Mayo 1996","05/1996",data$temp)
data$temp<-ifelse(data$temp=="Mayo 2009","05/2009",data$temp)
data$temp<-ifelse(data$temp=="Octubre 1981","10/1981",data$temp)
data$temp<-ifelse(data$temp=="Octubre/2015","10/2015",data$temp)
data$temp<-ifelse(data$temp=="SEEPTIEMBRE 1984","09/1984",data$temp)
data$temp<-ifelse(data$temp=="SEPT 1995","09/1995",data$temp)
data$temp<-ifelse(data$temp=="abril 2007","04/2007",data$temp)
data$temp<-ifelse(data$temp=="abril de 1990","04/1990",data$temp)
data$temp<-ifelse(data$temp=="febrero de 2010","02/2010",data$temp)
data$temp<-ifelse(data$temp=="julio 2014","07/2014",data$temp)
data$temp<-ifelse(data$temp=="julio de 1977","07/1977",data$temp)
data$temp<-ifelse(data$temp=="mayo 2001","05/2001",data$temp)
data$temp<-ifelse(data$temp=="septiembre  1979","09/1979",data$temp)
data$temp<-ifelse(data$temp=="septiembre 1983","09/1983",data$temp)
data$temp<-ifelse(data$temp=="10(creo)/1991","10/1991",data$temp)

data$temp<-ifelse(data$temp=="4",NA,data$temp)
data$temp<-ifelse(data$temp=="enero",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)

data$T3InicioT<-data$temp

data$temp<-NA

data$temp<-data$T3Salida

data$temp<-ifelse(data$temp=="1973","00/1973",data$temp)
data$temp<-ifelse(data$temp=="1974","00/1974",data$temp)
data$temp<-ifelse(data$temp=="1983","00/1983",data$temp)
data$temp<-ifelse(data$temp=="1988","00/1988",data$temp)
data$temp<-ifelse(data$temp=="1990","00/1990",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1993","00/1993",data$temp)
data$temp<-ifelse(data$temp=="1994","00/1994",data$temp)
data$temp<-ifelse(data$temp=="1995","00/1995",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="2000","00/2000",data$temp)
data$temp<-ifelse(data$temp=="2002","00/2002",data$temp)
data$temp<-ifelse(data$temp=="20011","00/2011",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="2012","00/2012",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)
data$temp<-ifelse(data$temp=="2016","00/2016",data$temp)
data$temp<-ifelse(data$temp=="2017","00/2017",data$temp)

data$temp<-ifelse(data$temp=="30/03/2003","03/2003",data$temp)
data$temp<-ifelse(data$temp=="AGOSTO 2006","08/2006",data$temp)
data$temp<-ifelse(data$temp=="AGOSTO 2009","08/2009",data$temp)
data$temp<-ifelse(data$temp=="Agosto 2014","08/2014",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 1998","12/1998",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2006","12/2006",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2016","12/2016",data$temp)
data$temp<-ifelse(data$temp=="Diciembre de 1997","12/1997",data$temp)
data$temp<-ifelse(data$temp=="Dicirmbre 1995","12/1995",data$temp)
data$temp<-ifelse(data$temp=="Febrero/2017","02/2017",data$temp)
data$temp<-ifelse(data$temp=="Junio 2002","06/2002",data$temp)
data$temp<-ifelse(data$temp=="Marzo 1986","03/1986",data$temp)
data$temp<-ifelse(data$temp=="diciembre 2001","12/2001",data$temp)
data$temp<-ifelse(data$temp=="diciembre 2015","12/2015",data$temp)
data$temp<-ifelse(data$temp=="enero 2014","01/2014",data$temp)
data$temp<-ifelse(data$temp=="febrero de 2011","02/2011",data$temp)
data$temp<-ifelse(data$temp=="junio 2008","06/2008",data$temp)
data$temp<-ifelse(data$temp=="marzo de 1995","03/1995",data$temp)
data$temp<-ifelse(data$temp=="mayo de 1979","05/1979",data$temp)
data$temp<-ifelse(data$temp=="septiembre 1986","09/1986",data$temp)
data$temp<-ifelse(data$temp=="ACTUAL","88/8888",data$temp)
data$temp<-ifelse(data$temp=="Actual","88/8888",data$temp)
data$temp<-ifelse(data$temp=="Vigente","88/8888",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)

data$temp<-NA

data$temp<-data$T4Entrada

data$temp<-ifelse(data$temp=="1975","00/1975",data$temp)
data$temp<-ifelse(data$temp=="1977","00/1977",data$temp)
data$temp<-ifelse(data$temp=="1983","00/1983",data$temp)
data$temp<-ifelse(data$temp=="1987","00/1987",data$temp)
data$temp<-ifelse(data$temp=="1988","00/1988",data$temp)
data$temp<-ifelse(data$temp=="1991","00/1991",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1994","00/1994",data$temp)
data$temp<-ifelse(data$temp=="1995","00/1995",data$temp)
data$temp<-ifelse(data$temp=="1996","00/1996",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="1999","00/1999",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)
data$temp<-ifelse(data$temp=="2016","00/2016",data$temp)

data$temp<-ifelse(data$temp=="20/2013","00/2013",data$temp)
data$temp<-ifelse(data$temp=="Enero 1996","01/1996",data$temp)
data$temp<-ifelse(data$temp=="Enero 2002","01/2002",data$temp)
data$temp<-ifelse(data$temp=="NOVIEMBRE 2009","11/2009",data$temp)
data$temp<-ifelse(data$temp=="Noviembre 2008","11/2008",data$temp)
data$temp<-ifelse(data$temp=="enero 2002","01/2002",data$temp)
data$temp<-ifelse(data$temp=="febrero 2016","02/2016",data$temp)
data$temp<-ifelse(data$temp=="marzo de 2011","03/2011",data$temp)
data$temp<-ifelse(data$temp=="mayo de 1979","05/1979",data$temp)
data$temp<-ifelse(data$temp=="septiembre de 1990","09/1990",data$temp)

data$temp<-ifelse(data$temp=="1",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T4InicioT<-data$temp

data$temp<-NA

data$temp<-data$T4Salida

data$temp<-ifelse(data$temp=="1976","00/1976",data$temp)
data$temp<-ifelse(data$temp=="1986","00/1986",data$temp)
data$temp<-ifelse(data$temp=="1989","00/1989",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1993","00/1993",data$temp)
data$temp<-ifelse(data$temp=="1995","00/1995",data$temp)
data$temp<-ifelse(data$temp=="1996","00/1996",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="1999","00/1999",data$temp)
data$temp<-ifelse(data$temp=="2001","00/2001",data$temp)
data$temp<-ifelse(data$temp=="20010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="20011","00/2011",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="2012","00/2012",data$temp)
data$temp<-ifelse(data$temp=="2013","00/2013",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)
data$temp<-ifelse(data$temp=="2017","00/2017",data$temp)
data$temp<-ifelse(data$temp=="17/2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="12 1996","12/1996",data$temp)
data$temp<-ifelse(data$temp=="12 1999","12/1999",data$temp)
data$temp<-ifelse(data$temp=="12/ 1988","12/1988",data$temp)

data$temp<-ifelse(data$temp=="31/07/2013","07/2013",data$temp)
data$temp<-ifelse(data$temp=="Dic 1996","12/1996",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2006","12/2006",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2009","12/2009",data$temp)
data$temp<-ifelse(data$temp=="Junio 2002","06/2002",data$temp)
data$temp<-ifelse(data$temp=="NOVIEMBRE 2011","11/2011",data$temp)
data$temp<-ifelse(data$temp=="diciembre de 2011","12/2011",data$temp)
data$temp<-ifelse(data$temp=="enero de 1980","01/1980",data$temp)
data$temp<-ifelse(data$temp=="julio 2017","07/2017",data$temp)
data$temp<-ifelse(data$temp=="junio 2004","06/2004",data$temp)
data$temp<-ifelse(data$temp=="marzo de 1995","03/1995",data$temp)

data$temp<-ifelse(data$temp=="ACTUALIDAD","88/8888",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T4SalidaT<-data$temp

data$temp<-NA

data$temp<-data$T5Entrada

data$temp<-ifelse(data$temp=="1976","00/1976",data$temp)
data$temp<-ifelse(data$temp=="1988","00/1988",data$temp)
data$temp<-ifelse(data$temp=="1989","00/1989",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="1993","00/1993",data$temp)
data$temp<-ifelse(data$temp=="1996","00/1996",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="1999","00/1999",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2013","00/2013",data$temp)

data$temp<-ifelse(data$temp=="/012017","01/2017",data$temp)
data$temp<-ifelse(data$temp=="28/01/2014","01/2014",data$temp)
data$temp<-ifelse(data$temp=="8/2008","08/2008",data$temp)
data$temp<-ifelse(data$temp=="Enero 1997","01/1997",data$temp)
data$temp<-ifelse(data$temp=="Enero 2003","01/2003",data$temp)
data$temp<-ifelse(data$temp=="MARZO 2012","03/2012",data$temp)
data$temp<-ifelse(data$temp=="Septiembre 2010","03/2012",data$temp)
data$temp<-ifelse(data$temp=="abril de 1997","04/1997",data$temp)
data$temp<-ifelse(data$temp=="enero 2007","01/2007",data$temp)
data$temp<-ifelse(data$temp=="febrero de 1980","02/1980",data$temp)
data$temp<-ifelse(data$temp=="mayo de 2012","05/2012",data$temp)
data$temp<-ifelse(data$temp=="\302\26402/1995","02/1995",data$temp)
data$temp<-ifelse(data$temp=="5",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T5InicioT<-data$temp

data$temp<-NA

data$temp<-data$T5Salida

data$temp<-ifelse(data$temp=="1977","00/1977",data$temp)
data$temp<-ifelse(data$temp=="1990","00/1990",data$temp)
data$temp<-ifelse(data$temp=="1991","00/1991",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="1999","00/1999",data$temp)
data$temp<-ifelse(data$temp=="2000","00/2000",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2014","00/2014",data$temp)
data$temp<-ifelse(data$temp=="2016","00/2016",data$temp)
data$temp<-ifelse(data$temp=="2017","00/2017",data$temp)

data$temp<-ifelse(data$temp=="31/01/2016","01/2016",data$temp)
data$temp<-ifelse(data$temp=="ABRIL 2015","04/2015",data$temp)
data$temp<-ifelse(data$temp=="Abril 2011","04/2011",data$temp)
data$temp<-ifelse(data$temp=="Enero 2001","01/2001",data$temp)
data$temp<-ifelse(data$temp=="Junio 2003","06/2003",data$temp)
data$temp<-ifelse(data$temp=="agosto de 1983","08/1983",data$temp)
data$temp<-ifelse(data$temp=="junio de 2013","06/2013",data$temp)
data$temp<-ifelse(data$temp=="marzo de 2000","03/2000",data$temp)
data$temp<-ifelse(data$temp=="octubre 2008","10/2008",data$temp)

data$temp<-ifelse(data$temp=="A la fecha","88/8888",data$temp)
data$temp<-ifelse(data$temp=="HASTA LA FECHA","88/8888",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T5SalidaT<-data$temp


data$temp<-NA

data$temp<-data$T6Entrada

data$temp<-ifelse(data$temp=="1977","00/1977",data$temp)
data$temp<-ifelse(data$temp=="1992","00/1992",data$temp)
data$temp<-ifelse(data$temp=="2000","00/2000",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2012","00/2012",data$temp)
data$temp<-ifelse(data$temp=="2014","00/2014",data$temp)
data$temp<-ifelse(data$temp=="2016","00/2016",data$temp)

data$temp<-ifelse(data$temp=="01/04/2016","04/2016",data$temp)
data$temp<-ifelse(data$temp=="8/2011","08/2011",data$temp)

data$temp<-ifelse(data$temp=="ABRIL 2015","04/2015",data$temp)
data$temp<-ifelse(data$temp=="Abril 2011","04/2011",data$temp)
data$temp<-ifelse(data$temp=="Julio 2003","07/2003",data$temp)
data$temp<-ifelse(data$temp=="Marzo 2001","03/2001",data$temp)
data$temp<-ifelse(data$temp=="enero 2000","01/2000",data$temp)
data$temp<-ifelse(data$temp=="febrero de 1984","02/1984",data$temp)
data$temp<-ifelse(data$temp=="marzo 2012","03/2012",data$temp)
data$temp<-ifelse(data$temp=="octubre de 1998","10/1998",data$temp)

data$temp<-ifelse(data$temp=="3",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T6InicioT<-data$temp

data$temp<-NA

data$temp<-data$T6Salida

data$temp<-ifelse(data$temp=="1979","00/1979",data$temp)
data$temp<-ifelse(data$temp=="1997","00/1997",data$temp)
data$temp<-ifelse(data$temp=="2001","00/2001",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2005","00/2005",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2012","00/2012",data$temp)
data$temp<-ifelse(data$temp=="2016","00/2016",data$temp)
data$temp<-ifelse(data$temp=="2017","00/2017",data$temp)
data$temp<-ifelse(data$temp=="10/ 2007","10/2007",data$temp)

data$temp<-ifelse(data$temp=="3/2012","03/2012",data$temp)
data$temp<-ifelse(data$temp=="30/06/2017","06/2017",data$temp)

data$temp<-ifelse(data$temp=="Agosto 2011","08/2011",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2003","12/2003",data$temp)
data$temp<-ifelse(data$temp=="Marzo 2015","03/2015",data$temp)
data$temp<-ifelse(data$temp=="enero de 1985","01/1985",data$temp)
data$temp<-ifelse(data$temp=="marzo de 2000","03/2000",data$temp)

data$temp<-ifelse(data$temp=="A LA FECHA","88/8888",data$temp)
data$temp<-ifelse(data$temp=="presente","88/8888",data$temp)

data$temp<-ifelse(data$temp=="x",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T6SalidaT<-data$temp

data$temp<-NA

data$temp<-data$T7Entrada

data$temp<-ifelse(data$temp=="1979","00/1979",data$temp)
data$temp<-ifelse(data$temp=="1991","00/1991",data$temp)
data$temp<-ifelse(data$temp=="1998","00/1998",data$temp)
data$temp<-ifelse(data$temp=="2001","00/2001",data$temp)
data$temp<-ifelse(data$temp=="2004","00/2004",data$temp)
data$temp<-ifelse(data$temp=="2008","00/2008",data$temp)
data$temp<-ifelse(data$temp=="2013","00/2013",data$temp)

data$temp<-ifelse(data$temp=="6/2009","06/2009",data$temp)

data$temp<-ifelse(data$temp=="Agosto 2015","08/2015",data$temp)
data$temp<-ifelse(data$temp=="Febrero 2004","02/2004",data$temp)
data$temp<-ifelse(data$temp=="febrero de 1985","02/1985",data$temp)
data$temp<-ifelse(data$temp=="marzo de 2011","03/2011",data$temp)

data$temp<-ifelse(data$temp=="3",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T7InicioT<-data$temp

data$temp<-NA

data$temp<-data$T7Salida

data$temp<-ifelse(data$temp=="1980","00/1980",data$temp)
data$temp<-ifelse(data$temp=="2002","00/2002",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2013","00/2013",data$temp)

data$temp<-ifelse(data$temp=="2/2012","02/2012",data$temp)
data$temp<-ifelse(data$temp=="5/2014","05/2014",data$temp)

data$temp<-ifelse(data$temp=="Diciembre 2014","12/2014",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2004","12/2004",data$temp)
data$temp<-ifelse(data$temp=="Diciembre 2015","12/2015",data$temp)
data$temp<-ifelse(data$temp=="octubre de 1987","10/1987",data$temp)

data$temp<-ifelse(data$temp=="Actual","88/8888",data$temp)
data$temp<-ifelse(data$temp=="Presente","88/8888",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T7SalidaT<-data$temp


data$temp<-NA

data$temp<-data$T8Entrada

data$temp<-ifelse(data$temp=="1980","00/1980",data$temp)
data$temp<-ifelse(data$temp=="2002","00/2002",data$temp)
data$temp<-ifelse(data$temp=="2003","00/2003",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2013","00/2013",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)

data$temp<-ifelse(data$temp=="Enero 2005","01/2005",data$temp)
data$temp<-ifelse(data$temp=="enero de 1988","01/1988",data$temp)
data$temp<-ifelse(data$temp=="o6/2000","06/2000",data$temp)

data$temp<-ifelse(data$temp=="4",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T8InicioT<-data$temp

data$temp<-NA

data$temp<-data$T8Salida
table(data$temp)
data$temp<-ifelse(data$temp=="1981","00/1981",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2009","00/2009",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2014","00/2014",data$temp)
data$temp<-ifelse(data$temp=="2017","00/2017",data$temp)

data$temp<-ifelse(data$temp=="Diciembre 2012","12/2012",data$temp)
data$temp<-ifelse(data$temp=="diciembre de 1988","12/1988",data$temp)

data$temp<-ifelse(data$temp=="Actual","88/8888",data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T8SalidaT<-data$temp

data$temp<-NA

data$temp<-data$T9Entrada

data$temp<-ifelse(data$temp=="1981","00/1981",data$temp)
data$temp<-ifelse(data$temp=="2006","00/2006",data$temp)
data$temp<-ifelse(data$temp=="2010","00/2010",data$temp)
data$temp<-ifelse(data$temp=="2014","00/2014",data$temp)

data$temp<-ifelse(data$temp=="enero de 1989","01/1989",data$temp)
data$temp<-ifelse(data$temp=="4/2014","04/2014",data$temp)

data$temp<-ifelse(data$temp=="4",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T9InicioT<-data$temp

data$temp<-NA

data$temp<-data$T9Salida

data$temp<-ifelse(data$temp=="1983","00/1983",data$temp)
data$temp<-ifelse(data$temp=="2007","00/2007",data$temp)
data$temp<-ifelse(data$temp=="2015","00/2015",data$temp)
data$temp<-ifelse(data$temp=="2017","00/2017",data$temp)
data$temp<-ifelse(data$temp=="6/2014","06/2014",data$temp)

data$temp<-ifelse(data$temp=="noviembre de 1990","11/1990",data$temp)

data$temp<-ifelse(data$temp=="Actual","88/8888",data$temp)
data$temp<-ifelse(data$temp=="HOY","88/8888",data$temp)
data$temp<-ifelse(data$temp=="6",NA,data$temp)
data$temp<-ifelse(is.na(data$temp),"99",data$temp)
data$T9SalidaT<-data$temp

names(data)

#data2<-data[,395:472]
#names(data2)


# Cambiando 99, 9999 y "NA" por NA

data$Sexor <- ifelse(data$Sexor == 99 | data$Sexor == 9999 | data$Sexor == "NA", NA, data$Sexor)
data$EdadNum <- ifelse(data$EdadNum == 99 | data$EdadNum == 9999 | data$EdadNum == "NA", NA, data$EdadNum)
data$temp <- ifelse(data$temp == 99 | data$temp == 9999 | data$temp == "NA", NA, data$temp)
data$LicPaisT <- ifelse(data$LicPaisT == 99 | data$LicPaisT == 9999 | data$LicPaisT == "NA", NA, data$LicPaisT)
data$LicPaisT2 <- ifelse(data$LicPaisT2 == 99 | data$LicPaisT2 == 9999 | data$LicPaisT2 == "NA", NA, data$LicPaisT2)
data$LicInstitucionT <- ifelse(data$LicInstitucionT == 99 | data$LicInstitucionT == 9999 | data$LicInstitucionT == "NA", NA, data$LicInstitucionT)
data$LicInicioT <- ifelse(data$LicInicioT == 99 | data$LicInicioT == 9999 | data$LicInicioT == "NA", NA, data$LicInicioT)
data$LicTerminoT <- ifelse(data$LicTerminoT == 99 | data$LicTerminoT == 9999 | data$LicTerminoT == "NA", NA, data$LicTerminoT)
data$LicInstitucionT2 <- ifelse(data$LicInstitucionT2 == 99 | data$LicInstitucionT2 == 9999 | data$LicInstitucionT2 == "NA", NA, data$LicInstitucionT2)
data$LicInicioT2 <- ifelse(data$LicInicioT2 == 99 | data$LicInicioT2 == 9999 | data$LicInicioT2 == "NA", NA, data$LicInicioT2)
data$LicTerminoT2 <- ifelse(data$LicTerminoT2 == 99 | data$LicTerminoT2 == 9999 | data$LicTerminoT2 == "NA", NA, data$LicTerminoT2)
data$LicColmex <- ifelse(data$LicColmex == 99 | data$LicColmex == 9999 | data$LicColmex == "NA", NA, data$LicColmex)
data$LicPColmex <- ifelse(data$LicPColmex == 99 | data$LicPColmex == 9999 | data$LicPColmex == "NA", NA, data$LicPColmex)
data$MaesPaisT <- ifelse(data$MaesPaisT == 99 | data$MaesPaisT == 9999 | data$MaesPaisT == "NA", NA, data$MaesPaisT)
data$MaesPaisT2 <- ifelse(data$MaesPaisT2 == 99 | data$MaesPaisT2 == 9999 | data$MaesPaisT2 == "NA", NA, data$MaesPaisT2)
data$MaesInstitucionT <- ifelse(data$MaesInstitucionT == 99 | data$MaesInstitucionT == 9999 | data$MaesInstitucionT == "NA", NA, data$MaesInstitucionT)
data$MaesInicioT <- ifelse(data$MaesInicioT == 99 | data$MaesInicioT == 9999 | data$MaesInicioT == "NA", NA, data$MaesInicioT)
data$MaesTerminoT <- ifelse(data$MaesTerminoT == 99 | data$MaesTerminoT == 9999 | data$MaesTerminoT == "NA", NA, data$MaesTerminoT)
data$MaesInstitucionT2 <- ifelse(data$MaesInstitucionT2 == 99 | data$MaesInstitucionT2 == 9999 | data$MaesInstitucionT2 == "NA", NA, data$MaesInstitucionT2)
data$MaesColmex <- ifelse(data$MaesColmex == 99 | data$MaesColmex == 9999 | data$MaesColmex == "NA", NA, data$MaesColmex)
data$MaesInicioT2 <- ifelse(data$MaesInicioT2 == 99 | data$MaesInicioT2 == 9999 | data$MaesInicioT2 == "NA", NA, data$MaesInicioT2)
data$MaesTerminoT2 <- ifelse(data$MaesTerminoT2 == 99 | data$MaesTerminoT2 == 9999 | data$MaesTerminoT2 == "NA", NA, data$MaesTerminoT2)
data$DocPaisT <- ifelse(data$DocPaisT == 99 | data$DocPaisT == 9999 | data$DocPaisT == "NA", NA, data$DocPaisT)
data$DocInicioT <- ifelse(data$DocInicioT == 99 | data$DocInicioT == 9999 | data$DocInicioT == "NA", NA, data$DocInicioT)
data$DocTerminoT <- ifelse(data$DocTerminoT == 99 | data$DocTerminoT == 9999 | data$DocTerminoT == "NA", NA, data$DocTerminoT)
data$DocPaisT2 <- ifelse(data$DocPaisT2 == 99 | data$DocPaisT2 == 9999 | data$DocPaisT2 == "NA", NA, data$DocPaisT2)
data$DocInstT <- ifelse(data$DocInstT == 99 | data$DocInstT == 9999 | data$DocInstT == "NA", NA, data$DocInstT)
data$DocInstT2 <- ifelse(data$DocInstT2 == 99 | data$DocInstT2 == 9999 | data$DocInstT2 == "NA", NA, data$DocInstT2)
data$DocInicioT2 <- ifelse(data$DocInicioT2 == 99 | data$DocInicioT2 == 9999 | data$DocInicioT2 == "NA", NA, data$DocInicioT2)
data$DocTerminoT2 <- ifelse(data$DocTerminoT2 == 99 | data$DocTerminoT2 == 9999 | data$DocTerminoT2 == "NA", NA, data$DocTerminoT2)
data$DocColmex <- ifelse(data$DocColmex == 99 | data$DocColmex == 9999 | data$DocColmex == "NA", NA, data$DocColmex)
data$ColmexT <- ifelse(data$ColmexT == 99 | data$ColmexT == 9999 | data$ColmexT == "NA", NA, data$ColmexT)
data$MaesPColmex <- ifelse(data$MaesPColmex == 99 | data$MaesPColmex == 9999 | data$MaesPColmex == "NA", NA, data$MaesPColmex)
data$DocPColmex <- ifelse(data$DocPColmex == 99 | data$DocPColmex == 9999 | data$DocPColmex == "NA", NA, data$DocPColmex)
data$LicCCentro <- ifelse(data$LicCCentro == 99 | data$LicCCentro == 9999 | data$LicCCentro == "NA", NA, data$LicCCentro)
data$MaesCCentro <- ifelse(data$MaesCCentro == 99 | data$MaesCCentro == 9999 | data$MaesCCentro == "NA", NA, data$MaesCCentro)
data$DocCCentro <- ifelse(data$DocCCentro == 99 | data$DocCCentro == 9999 | data$DocCCentro == "NA", NA, data$DocCCentro)
data$TrabPrevio <- ifelse(data$TrabPrevio == 99 | data$TrabPrevio == 9999 | data$TrabPrevio == "NA", NA, data$TrabPrevio)
data$TrabPevio1I <- ifelse(data$TrabPevio1I == 99 | data$TrabPevio1I == 9999 | data$TrabPevio1I == "NA", NA, data$TrabPevio1I)
data$TrabPrevioF1 <- ifelse(data$TrabPrevioF1 == 99 | data$TrabPrevioF1 == 9999 | data$TrabPrevioF1 == "NA", NA, data$TrabPrevioF1)
data$TrabPevio2I <- ifelse(data$TrabPevio2I == 99 | data$TrabPevio2I == 9999 | data$TrabPevio2I == "NA", NA, data$TrabPevio2I)
data$TrabPrevioF2 <- ifelse(data$TrabPrevioF2 == 99 | data$TrabPrevioF2 == 9999 | data$TrabPrevioF2 == "NA", NA, data$TrabPrevioF2)
data$TrabPevio3I <- ifelse(data$TrabPevio3I == 99 | data$TrabPevio3I == 9999 | data$TrabPevio3I == "NA", NA, data$TrabPevio3I)
data$TrabPrevioF3 <- ifelse(data$TrabPrevioF3 == 99 | data$TrabPrevioF3 == 9999 | data$TrabPrevioF3 == "NA", NA, data$TrabPrevioF3)
data$TrabPevio4I <- ifelse(data$TrabPevio4I == 99 | data$TrabPevio4I == 9999 | data$TrabPevio4I == "NA", NA, data$TrabPevio4I)
data$TrabPrevioF4 <- ifelse(data$TrabPrevioF4 == 99 | data$TrabPrevioF4 == 9999 | data$TrabPrevioF4 == "NA", NA, data$TrabPrevioF4)
data$TrabPevio5I <- ifelse(data$TrabPevio5I == 99 | data$TrabPevio5I == 9999 | data$TrabPevio5I == "NA", NA, data$TrabPevio5I)
data$TrabPrevioF5 <- ifelse(data$TrabPrevioF5 == 99 | data$TrabPrevioF5 == 9999 | data$TrabPrevioF5 == "NA", NA, data$TrabPrevioF5)
data$TrabPevio6I <- ifelse(data$TrabPevio6I == 99 | data$TrabPevio6I == 9999 | data$TrabPevio6I == "NA", NA, data$TrabPevio6I)
data$TrabPrevioF6 <- ifelse(data$TrabPrevioF6 == 99 | data$TrabPrevioF6 == 9999 | data$TrabPrevioF6 == "NA", NA, data$TrabPrevioF6)
data$TrabPevio7I <- ifelse(data$TrabPevio7I == 99 | data$TrabPevio7I == 9999 | data$TrabPevio7I == "NA", NA, data$TrabPevio7I)
data$TrabPrevioF7 <- ifelse(data$TrabPrevioF7 == 99 | data$TrabPrevioF7 == 9999 | data$TrabPrevioF7 == "NA", NA, data$TrabPrevioF7)
data$TrabPevio8I <- ifelse(data$TrabPevio8I == 99 | data$TrabPevio8I == 9999 | data$TrabPevio8I == "NA", NA, data$TrabPevio8I)
data$TrabPrevioF8 <- ifelse(data$TrabPrevioF8 == 99 | data$TrabPrevioF8 == 9999 | data$TrabPrevioF8 == "NA", NA, data$TrabPrevioF8)
data$EmpleoSalirT <- ifelse(data$EmpleoSalirT == 99 | data$EmpleoSalirT == 9999 | data$EmpleoSalirT == "NA", NA, data$EmpleoSalirT)
data$EmpleoBusquedaT <- ifelse(data$EmpleoBusquedaT == 99 | data$EmpleoBusquedaT == 9999 | data$EmpleoBusquedaT == "NA", NA, data$EmpleoBusquedaT)
data$RazonNT1 <- ifelse(data$RazonNT1 == 99 | data$RazonNT1 == 9999 | data$RazonNT1 == "NA", NA, data$RazonNT1)
data$RazonNT2 <- ifelse(data$RazonNT2 == 99 | data$RazonNT2 == 9999 | data$RazonNT2 == "NA", NA, data$RazonNT2)
data$TiempoBusqueda <- ifelse(data$TiempoBusqueda == 99 | data$TiempoBusqueda == 9999 | data$TiempoBusqueda == "NA", NA, data$TiempoBusqueda)
data$T1InicioM_ <- ifelse(data$T1InicioM_ == 99 | data$T1InicioM_ == 9999 | data$T1InicioM_ == "NA", NA, data$T1InicioM_)
data$T1InicioA_ <- ifelse(data$T1InicioA_ == 99 | data$T1InicioA_ == 9999 | data$T1InicioA_ == "NA", NA, data$T1InicioA_)
data$T1DuracionA_ <- ifelse(data$T1DuracionA_ == 99 | data$T1DuracionA_ == 9999 | data$T1DuracionA_ == "NA", NA, data$T1DuracionA_)


# Dividiendo por mes y a�o
data$T2InicioT <- ifelse(data$T2InicioT == 99 | data$T2InicioT == 9999 | data$T2InicioT == "NA", NA, data$T2InicioT);
data$T2InicioT_1Mes <- gsub("/(.*)", " \1", data$T2InicioT);
data$T2InicioT_2Anio <- gsub("(.*)/", " \1", data$T2InicioT);
data$T2SalidaT <- ifelse(data$T2SalidaT == 99 | data$T2SalidaT == 9999 | data$T2SalidaT == "NA", NA, data$T2SalidaT);
data$T2SalidaT_1Mes <- gsub("/(.*)", " \1", data$T2SalidaT);
data$T2SalidaT_2Anio <- gsub("(.*)/", " \1", data$T2SalidaT);
data$T3InicioT <- ifelse(data$T3InicioT == 99 | data$T3InicioT == 9999 | data$T3InicioT == "NA", NA, data$T3InicioT);
data$T3InicioT_1Mes <- gsub("/(.*)", " \1", data$T3InicioT);
data$T3InicioT_2Anio <- gsub("(.*)/", " \1", data$T3InicioT);
data$T4InicioT <- ifelse(data$T4InicioT == 99 | data$T4InicioT == 9999 | data$T4InicioT == "NA", NA, data$T4InicioT);
data$T4InicioT_1Mes <- gsub("/(.*)", " \1", data$T4InicioT);
data$T4InicioT_2Anio <- gsub("(.*)/", " \1", data$T4InicioT);
data$T4SalidaT <- ifelse(data$T4SalidaT == 99 | data$T4SalidaT == 9999 | data$T4SalidaT == "NA", NA, data$T4SalidaT);
data$T4SalidaT_1Mes <- gsub("/(.*)", " \1", data$T4SalidaT);
data$T4SalidaT_2Anio <- gsub("(.*)/", " \1", data$T4SalidaT);
data$T5InicioT <- ifelse(data$T5InicioT == 99 | data$T5InicioT == 9999 | data$T5InicioT == "NA", NA, data$T5InicioT);
data$T5InicioT_1Mes <- gsub("/(.*)", " \1", data$T5InicioT);
data$T5InicioT_2Anio <- gsub("(.*)/", " \1", data$T5InicioT);
data$T5SalidaT <- ifelse(data$T5SalidaT == 99 | data$T5SalidaT == 9999 | data$T5SalidaT == "NA", NA, data$T5SalidaT);
data$T5SalidaT_1Mes <- gsub("/(.*)", " \1", data$T5SalidaT);
data$T5SalidaT_2Anio <- gsub("(.*)/", " \1", data$T5SalidaT);
data$T6InicioT <- ifelse(data$T6InicioT == 99 | data$T6InicioT == 9999 | data$T6InicioT == "NA", NA, data$T6InicioT);
data$T6InicioT_1Mes <- gsub("/(.*)", " \1", data$T6InicioT);
data$T6InicioT_2Anio <- gsub("(.*)/", " \1", data$T6InicioT);
data$T6SalidaT <- ifelse(data$T6SalidaT == 99 | data$T6SalidaT == 9999 | data$T6SalidaT == "NA", NA, data$T6SalidaT);
data$T6SalidaT_1Mes <- gsub("/(.*)", " \1", data$T6SalidaT);
data$T6SalidaT_2Anio <- gsub("(.*)/", " \1", data$T6SalidaT);
data$T7InicioT <- ifelse(data$T7InicioT == 99 | data$T7InicioT == 9999 | data$T7InicioT == "NA", NA, data$T7InicioT);
data$T7InicioT_1Mes <- gsub("/(.*)", " \1", data$T7InicioT);
data$T7InicioT_2Anio <- gsub("(.*)/", " \1", data$T7InicioT);
data$T7SalidaT <- ifelse(data$T7SalidaT == 99 | data$T7SalidaT == 9999 | data$T7SalidaT == "NA", NA, data$T7SalidaT);
data$T7SalidaT_1Mes <- gsub("/(.*)", " \1", data$T7SalidaT);
data$T7SalidaT_2Anio <- gsub("(.*)/", " \1", data$T7SalidaT);
data$T8InicioT <- ifelse(data$T8InicioT == 99 | data$T8InicioT == 9999 | data$T8InicioT == "NA", NA, data$T8InicioT);
data$T8InicioT_1Mes <- gsub("/(.*)", " \1", data$T8InicioT);
data$T8InicioT_2Anio <- gsub("(.*)/", " \1", data$T8InicioT);
data$T8SalidaT <- ifelse(data$T8SalidaT == 99 | data$T8SalidaT == 9999 | data$T8SalidaT == "NA", NA, data$T8SalidaT);
data$T8SalidaT_1Mes <- gsub("/(.*)", " \1", data$T8SalidaT);
data$T8SalidaT_2Anio <- gsub("(.*)/", " \1", data$T8SalidaT);
data$T9InicioT <- ifelse(data$T9InicioT == 99 | data$T9InicioT == 9999 | data$T9InicioT == "NA", NA, data$T9InicioT);
data$T9InicioT_1Mes <- gsub("/(.*)", " \1", data$T9InicioT);
data$T9InicioT_2Anio <- gsub("(.*)/", " \1", data$T9InicioT);
data$T9SalidaT <- ifelse(data$T9SalidaT == 99 | data$T9SalidaT == 9999 | data$T9SalidaT == "NA", NA, data$T9SalidaT);
data$T9SalidaT_1Mes <- gsub("/(.*)", " \1", data$T9SalidaT);
data$T9SalidaT_2Anio <- gsub("(.*)/", " \1", data$T9SalidaT);


data2 <- data[, 395:501]
names(data2)


#library(foreign)
#write.foreign(data2,"BaseC.txt","BaseC.sps",package="SPSS")
#write.dta(data2,"BaseC.dta")





# Etiquetas: 
data$Sexo<-factor(data$Sexo, levels=c(1,2), labels=c("Hombre","Mujer"))
data$LicPaisT <- factor(data$LicPaisT, levels=c(1,2,3,99),labels=c("MEX","LATAM","OTRO","NE"))
data$LicPaisT2 <- factor(data$LicPaisT2, levels=c(1,2,3,99),labels=c("MEX","LATAM","OTRO","NE"))
data$LicInstitucionT <- factor(data$LicInstitucionT, levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,99),
                               labels=c("COLMEX","UNAM","UAM","UAEMEX","IBERO","BUAP","IPN","ITAM","ITESM","UV",
                                        "ENAH","CIDE","OtrMex","OtraExt","NE"))
data$LicInstitucionT2 <- factor(data$LicInstitucionT2, levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,99),
                                labels=c("COLMEX","UNAM","UAM","UAEMEX","IBERO","BUAP","IPN","ITAM","ITESM","UV",
                                         "ENAH","CIDE","OtrMex","OtraExt","NE"))



data$LicPColmex <- factor(data$LicPColmex, levels = c(1, 2, 99), labels = c("RRII", "PAP", "NE"))

# Corregir, 
# Aqui las variables ya no se llaman temp, sino que les asignamos el nombre real... o debemos revisar eso. Por ejemplo
# puedes ver en la linea 977 del codigo, que se asignaron los valores de la vairable temp a la variable MaesPaisT, de ahi
# volvimos a usar la variable temp para otras nuevas variables, entonces en las lineas de abajo no tendria sentido 
# asignar de esa maner las etiquetas, 
# Se deben cambiar de la siguiente manera: 
# Actualmente esta: 
data$MaesPaisT <- factor(data$temp, levels = c(1, 2, 3, 4, 5, 9, 99),
                   labels = c("MEX", "EUAC", "EUR", "LATAM", "OTRO", "SinMaes", "NE"))
# Deberia estar:
data$MaesPaisT <- factor(data$MaesPaisT, levels = c(1, 2, 3, 4, 5, 9, 99),
                         labels = c("MEX", "EUAC", "EUR", "LATAM", "OTRO", "SinMaes", "NE"))
# Y seguir asi con las demas variables. 


data$MaesPaisT2 <- factor(data$MaesPaisT2, levels = c(1, 2, 3, 4, 5, 8, 9, 99),
                   labels = c("MEX", "EUAC", "EUR", "LATAM", "OTRO", "SinMaes2", "SinMaes", "NE"))

data$MaesInstitucionT <- factor(data$MaesInstitucionT, levels = c(1, 2, 3, 4, 99), labels = c("COLMEX", "OtraMex", "OtraExt", "SinMaes", "NE"))

data$MaesInstitucionT2 <- factor(data$MaesInstitucionT2, levels = c(1, 2, 3, 4, 5, 99), labels = c("COLMEX", "OtraMex", "OtraExt", "SinMaes", "SinMaes2", "NE"))

data$DocPaisT <- factor(data$DocPaisT, levels = c(1, 2, 3, 4, 5, 8, 9, 99),
                   labels = c("MEX", "EUAC", "EUR", "LATAM", "OTRO", "SinDoc", "SinMaes", "NE"))

data$DocPaisT2 <- factor(data$DocPaisT2, levels = c(1, 2, 3, 4, 5, 6), labels = c("MEX", "EUAC", "EUR", "SinDoc", "SinDoc2", "SinMaes"))

data$DocInstT <- factor(data$DocInstT, levels = c(1, 2, 3, 99), labels = c("COLMEX", "OtrMex", "OtraExt", "NE"))

data$LicPColmex <- factor(data$LicPColmex, levels = c(1, 2, 3, 9, 99), labels = c("RRII", "PAP", "OTRO", "NE", "NA"))

data$MaesPColmex <- factor(data$MaesPColmex, levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 99),
                labels = c("MEAA", "MDEMO", "MECON", "MEUA", "MCPO", "MHIST", "MGEN",
                         "MLLH", "MTRAD", "MOTRA", "LEAD", "DOCT", "NE"))

data$DocPColmex <- factor(data$DocPColmex, levels = c(1, 2, 3, 4, 5, 6, 7, 8, 99),
                  labels = c("DHIST", "DLLH", "DSOC", "DPOB", "DEUA", "DEAA", "DECON", "DOTRO", "NE"))

data$LicCCentro <- factor(data$LicCCentro, levels = c(1, 2, 99), labels = c("CEI", "OTRO", "NE"))

data$MaesCCentro <- factor(data$MaesCCentro, levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 99),
                  labels = c("CEDUA", "CEE", "CEAA", "CELL", "CES", "CEH", "CEI", "CEED", "BDCV", "OTRO", "NE"))

data$DocCCentro <- factor(data$DocCCentro, levels = c(1, 2, 3, 4, 5, 6, 7, 99),
                  labels = c("CEDUA", "CELL", "CEH", "CES", "CEAA", "CEE", "CEI", "NE"))

data$TrabPrevio <- factor(data$TrabPrevio, levels = c(1, 2, 99), labels = c("Si", "No", "NE"))

data$EmpleoSalirT <- factor(data$EmpleoSalirT, levels = c(1, 2, 99), labels = c("Si", "No", "NE"))

data$EmpleoBusquedaT <- factor(data$EmpleoBusquedaT, levels = c(1, 2, 99), labels = c("Si", "No", "NE"))

data$TiempoBusqueda <- factor(data$TiempoBusqueda, levels = c(1, 2, 3, 4, 5, 6),
                  labels = c("Ya tenia trabajo", "<3meses", "3 a 6 meses", "6m a 1 anio", "1 a 2 anios", "2 anios y mas"))

data$T1InicioM_ <- factor(data$T1InicioM_ , levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                  labels = c("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                           "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"))

# ***************
#************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ANALISIS

# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************


# ***************************************************************************************************************************
# ***************************************************************************************************************************
# ***************************************************************************************************************************

# RESUMEN ESTADISTICO

# ***************************************************************************************************************************
# ***************************************************************************************************************************



# conviertiendo en factores las columnas del data frame
#t = Sys.time();
#LicenciaturaC <- data.frame(lapply(LicenciaturaC, as.factor));
#str(LicenciaturaC);
#Sys.time() - t

#  ??Tuvo el estudiante de licenciatura del colmex, experiencia laboral previa al ingresar al programa? 

#LicenciaturaC$Sexo = factor(LicenciaturaC$Sexo, labels = c("Hombre", "Mujer"))
#ExpPrevLic <- ftable(LicenciaturaC$ExpPrevia, LicenciaturaC$LicPrograma, LicenciaturaC$LicCentro, LicenciaturaC$Sexo)
#prop.table(ExpPrevLic, 1)


##  seleccionando 
##  Informacion Escolar del Egresado  (iee)
##  DE LA PREGUNTA 4  A  LA PREGUNTA 5.3

#   PREGUNTA 4

data$iee4 <- ifelse(!is.na(data$`Nombre(s)`) &
    !is.na(data$PrimTipo) &
    !is.na(data$PrimInicio) &
    !is.na(data$PrimTermino) &
    !is.na(data$SecuTipo) &
    !is.na(data$SecuInicio) &
    !is.na(data$SecuTermino) &
    !is.na(data$BachTipo) &
    !is.na(data$BachInicio) &
    !is.na(data$BachTermino), "Completa", data$`Nombre(s)`)

data$iee4 <- ifelse(!is.na(data$iee4) & data$iee4 != "Completa", "Incompleta", data$iee4)

ftable(data$iee4)


# PREGUNTA 5.1

data$iee5.1 <- ifelse(!is.na(data$`Nombre(s)`) &
    !is.na(data$LicInstitucion) &
    !is.na(data$LicPais) &
    !is.na(data$LicTipo) &
    !is.na(data$LicPrograma) &
    !is.na(data$LicCentro) &
    !is.na(data$LicInicio) &
    !is.na(data$LicTermino) &
    !is.na(data$LicTitulo) &
    !is.na(data$LicAnioTit) &
    !is.na(data$LicInstitucion2) &
    !is.na(data$LicPais2) &
    !is.na(data$LicTipo2) &
    !is.na(data$LicPrograma2) &
    !is.na(data$LicCentro2) &
    !is.na(data$LicInicio2) &
    !is.na(data$LicTermino2) &
    !is.na(data$LicTitulo2) &
    !is.na(data$LicAnioTit2), "Completa", data$`Nombre(s)`)

data$iee5.1 <- ifelse(!is.na(data$iee5.1) & data$iee5.1 != "Completa", "Incompleta", data$iee5.1)

ftable(data$iee5.1)



# PREGUNTA 5.2

data$iee5.2 <- ifelse(!is.na(data$`Nombre(s)`) &
    !is.na(data$MaesInstitucion) &
    !is.na(data$MaesPais) &
    !is.na(data$MaesTipo) &
    !is.na(data$MaesPrograma) &
    !is.na(data$MaesCentro) &
    !is.na(data$MaesInicio) &
    !is.na(data$MaesCompleta) &
    !is.na(data$MaesTermino) &
    !is.na(data$MaesTitulo) &
    !is.na(data$MaesAnioTit) &
    !is.na(data$MaesInstitucion2) &
    !is.na(data$MaesPais2) &
    !is.na(data$MaesTipo2) &
    !is.na(data$MaesPrograma2) &
    !is.na(data$MaesCentro2) &
    !is.na(data$MaesInicio2) &
    !is.na(data$MaesCompleta2) &
    !is.na(data$MaesTermino2) &
    !is.na(data$MaesTitulo2) &
    !is.na(data$MaesAnioTit2), "Completa", data$`Nombre(s)`)

data$iee5.2 <- ifelse(!is.na(data$iee5.2) & data$iee5.2 != "Completa", "Incompleta", data$iee5.2)

ftable(data$iee5.2)


# PREGUNTA 5.3

data$iee5.3 <- ifelse(!is.na(data$DocInstitucion) &
    !is.na(data$DocPais) &
    !is.na(data$DocTipo) &
    !is.na(data$DocPrograma) &
    !is.na(data$DocCentro) &
    !is.na(data$DocInicio) &
    !is.na(data$DocCompleto) &
    !is.na(data$DocTermino) &
    !is.na(data$DocTitulo) &
    !is.na(data$DocAnioTit) &
    !is.na(data$DocInstitucion2) &
    !is.na(data$DocPais2) &
    !is.na(data$DocTipo2) &
    !is.na(data$DocPrograma2) &
    !is.na(data$DocCentro2) &
    !is.na(data$DocInicio2) &
    !is.na(data$DocCompleto2) &
    !is.na(data$DocTermino2) &
    !is.na(data$DocTitulo2) &
    !is.na(data$DocAnioTit2), "Completa", data$`Nombre(s)`)

data$iee5.3<- ifelse(!is.na(data$iee5.3) & data$iee5.3 != "Completa", "Incompleta", data$iee5.3)

ftable(data$iee5.3)


##  seleccionando 
## Trayectoria y Ubicacion en el Mercado Laboral del Egresado (tumle)
##  DE LA PREGUNTA 10 A LA PREGUNTA 14




# PREGUNTA 10

data$tumle10 <- ifelse(!is.na(data$`Nombre(s)`) & !is.na(data$ExpPrevia), "Completa", data$`Nombre(s)`)
data$tumle10 <- ifelse(!is.na(data$tumle10) & data$tumle10 != "Completa", "Incompleta", data$tumle10)
ftable(data$tumle10)


# PREGUNTA 11

data$tumle11 <- ifelse(!is.na(data$`Nombre(s)`) &
    !is.na(data$TP1_Empresa) &
    !is.na(data$TP1_AnioI) &
    !is.na(data$TP1_AnioF) &
    !is.na(data$TP2_Empresa) &
    !is.na(data$TP2_AnioI) &
    !is.na(data$TP2_AnioF) &
    !is.na(data$TP3_Empresa) &
    !is.na(data$TP3_AnioI) &
    !is.na(data$TP3_AnioF) &
    !is.na(data$TP4_Empresa) &
    !is.na(data$TP4_AnioI) &
    !is.na(data$TP4_AnioF) &
    !is.na(data$TP5_Empresa) &
    !is.na(data$TP5_AnioI) &
    !is.na(data$TP5_AnioF) &
    !is.na(data$TP6_Empresa) &
    !is.na(data$TP6_AnioI) &
    !is.na(data$TP6_AnioF) &
    !is.na(data$TP7_Empresa) &
    !is.na(data$TP7_AnioI) &
    !is.na(data$TP7_AnioF) &
    !is.na(data$TP8_Empresa) &
    !is.na(data$TP8_AnioI) &
    !is.na(data$TP8_AnioF), "Completa", data$`Nombre(s)`)

data$tumle11 <- ifelse(!is.na(data$tumle11) & data$tumle11 != "Completa", "Incompleta", data$tumle11)
ftable(data$tumle11)

# PREGUNTA 12

data$tumle12 <- ifelse(!is.na(data$`Nombre(s)`) & !is.na(data$EmpleoSalir), "Completa",data$`Nombre(s)`)
data$tumle12 <- ifelse(!is.na(data$tumle12) & data$tumle12 != "Completa", "Incompleta", data$tumle12)
ftable(data$tumle12)

# PREGUNTA 13


data$tumle13 <- ifelse(!is.na(data$`Nombre(s)`) & !is.na(data$EmpleoBusqueda),"Completa", data$`Nombre(s)`)
data$tumle13 <- ifelse(!is.na(data$tumle13) & data$tumle13 != "Completa", "Incompleta", data$tumle13)
ftable(data$tumle13)

# PREGUNTA 14

data$tumle14 <- ifelse(!is.na(data$`Nombre(s)`) & !is.na(data$NumTrabajos),"Completa", data$`Nombre(s)`)
data$tumle14 <- ifelse(!is.na(data$tumle14) & data$tumle14 != "Completa", "Incompleta", data$tumle14)
ftable(data$tumle14)
           





                