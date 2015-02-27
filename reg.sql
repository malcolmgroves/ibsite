DECLARE EXTERNAL FUNCTION CSCATEGORY
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csCategory'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSCATEGORYCOLOR
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csCategoryColor'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSADDSEPARATOR
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csAddSeparator'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSADDCHECKPOINT
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csAddCheckpoint'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSCLEAR
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csClear'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSRESETCHECKPOINT
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csResetCheckpoint'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSSENDMEMORYSTATUS
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csSendMemoryStatus'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSENABLE
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csEnable'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSDISABLE
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csDisable'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSENABLED
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csEnabled'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSDESTINATIONDETAILS
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csDestinationDetails'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSENTERMETHOD
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csEnterMethod'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSEXITMETHOD
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csExitMethod'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSSENDMSG
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csSendMsg'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSSENDSTRING
   CSTRING(1024), CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csSendString'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSSENDINTEGER
   CSTRING(1024), INTEGER
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csSendInteger'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSSENDNOTE
   CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csSendNote'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSSENDFLOAT
   CSTRING(1024), DOUBLE PRECISION
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csSendFloat'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSWRITEINTEGER
   CSTRING(1024), CSTRING(1024), INTEGER
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csWriteInteger'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSWRITEFLOAT
   CSTRING(1024), CSTRING(1024), DOUBLE PRECISION
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csWriteFloat'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSWRITESTRING
   CSTRING(1024), CSTRING(1024), CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csWriteString'  MODULE_NAME 'IBSite';

DECLARE EXTERNAL FUNCTION CSWRITEMSG
   CSTRING(1024), CSTRING(1024)
   RETURNS INTEGER BY VALUE
  ENTRY_POINT 'csWriteMsg'  MODULE_NAME 'IBSite';


set term # ;
create procedure csCategory(Category VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csCategory(Category);
end #

create procedure csCategoryColor(Color VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csCategoryColor(Color);
end #

create procedure csAddSeparator
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csAddSeparator();
end #

create procedure csAddCheckpoint
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csAddCheckpoint();
end #

create procedure csClear
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csClear();
end #

create procedure csResetCheckpoint
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csResetCheckpoint();
end #

create procedure csSendMemoryStatus
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csSendMemoryStatus();
end #

create procedure csEnable
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csEnable();
end #

create procedure csDisable
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csDisable();
end #

create procedure csEnabled
RETURNS (RetVal INTEGER)
AS
begin
  RetVal = csEnable();
end #

create procedure csDestinationDetails(Destination VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csDestinationDetails(Destination);
end #

create procedure csEnterMethod(Method VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csEnterMethod(Method);
end #

create procedure csExitMethod(Method VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csExitMethod(Method);
end #

create procedure csSendMsg(Msg VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csSendMsg(Msg);
end #

create procedure csSendString(Msg VarChar(1024), Val VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csSendString(Msg, Val);
end #

create procedure csSendInteger(Msg VarChar(1024), Val Integer)
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csSendInteger(Msg, Val);
end #

create procedure csSendFloat(Msg VarChar(1024), Val Double Precision)
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csSendFloat(Msg, Val);
end #

create procedure csSendNote(Msg VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csSendNote(Msg);
end #

create procedure csWriteMsg(LineID VarChar(1024), Msg VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csWriteMsg(LineID, Msg);
end #

create procedure csWriteString(LineID VarChar(1024), Msg VarChar(1024), Val VarChar(1024))
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csWriteString(LineID, Msg, Val);
end #

create procedure csWriteInteger(LineID VarChar(1024), Msg VarChar(1024), Val Integer)
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csWriteInteger(LineID, Msg, Val);
end #

create procedure csWriteFloat(LineID VarChar(1024), Msg VarChar(1024), Val Double Precision)
AS
  DECLARE VARIABLE RetVal INTEGER;
begin
  RetVal = csWriteFloat(LineID, Msg, Val);
end #

set term ; #
