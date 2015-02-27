unit uIBCSIntf;

interface
uses
  ib_util;

function csCategory(Category : PChar): Integer; cdecl; export;
function csCategoryColor(Color : PChar): Integer; cdecl; export;

function csAddSeparator : Integer; cdecl; export;
function csAddCheckpoint : Integer; cdecl; export;
function csClear : Integer; cdecl; export;
function csResetCheckpoint : Integer; cdecl; export;
function csSendMemoryStatus : Integer; cdecl; export;

function csEnable : Integer; cdecl; export;
function csDisable : Integer; cdecl; export;
function csEnabled : Integer; cdecl; export;
function csDestinationDetails(DestDetails : PChar) : Integer; cdecl; export;

function csEnterMethod(Method : PChar): Integer; cdecl; export;
function csExitMethod(Method : PChar): Integer; cdecl; export;

function csSendMsg(Msg : PChar): Integer; cdecl; export;
function csSendString(Msg : PChar; Value : PChar): Integer; cdecl; export;
function csSendInteger(Msg : PChar; var Value : Integer): Integer; cdecl; export;
function csSendFloat(Msg : PChar; var Value : Double): Integer; cdecl; export;
function csSendNote(Msg : PChar): Integer; cdecl; export;

function csWriteInteger(LineID : PChar; Msg : PChar; var Value : Integer): Integer; cdecl; export;
function csWriteFloat(LineID : PChar; Msg : PChar; var Value : Double): Integer; cdecl; export;
function csWriteString(LineID : PChar; Msg : PChar; Value : PChar): Integer; cdecl; export;
function csWriteMsg(LineID : PChar; Msg : PChar): Integer; cdecl; export;


// blob support
// booleans stuff
// datetime
// Interbase info (stuff that's accessible to the IB API)



implementation
uses
  csintf, graphics, sysutils;

function csSendMsg(Msg : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.SendMsg(Msg);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csEnterMethod(Method : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.EnterMethod(Method);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csExitMethod(Method : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.ExitMethod(Method);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csCategory(Category : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.Category := Category;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csCategoryColor(Color : PChar): Integer; cdecl; export;
var
  CatColor : Integer;
begin
  try
    if IdentToColor(Color, CatColor) then
      CodeSite.CategoryColor := CatColor
    else
      raise Exception.Create('No such color');
    Result := 0;
  except
    Result := -1;
  end;
end;

function csSendString(Msg : PChar; Value : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.SendString(Msg, Value);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csAddSeparator : Integer; cdecl; export;
begin
  try
    CodeSite.AddSeparator;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csAddCheckpoint : Integer; cdecl; export;
begin
  try
    CodeSite.AddCheckPoint;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csClear : Integer; cdecl; export;
begin
  try
    CodeSite.Clear;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csEnable : Integer; cdecl; export;
begin
  try
    CodeSite.Enabled := true;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csDisable : Integer; cdecl; export;
begin
  try
    CodeSite.Enabled := False;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csEnabled : Integer; cdecl; export;
begin
  try
    if CodeSite.Enabled then
      Result := 1
    else
      Result := 0;
  except
    Result := -1;
  end;
end;

function csDestinationDetails(DestDetails : PChar) : Integer; cdecl; export;
begin
  try
    CodeSite.DestinationDetails := DestDetails;
    Result := 0;
  except
    Result := -1;
  end;
end;


function csSendInteger(Msg : PChar; var Value : Integer): Integer; cdecl; export;
begin
  try
    CodeSite.SendInteger(Msg, Value);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csSendFloat(Msg : PChar; var Value : Double): Integer; cdecl; export;
begin
  try
    CodeSite.SendFloat(Msg, Value);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csSendNote(Msg : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.SendNote(Msg);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csWriteInteger(LineID : PChar; Msg : PChar; var Value : Integer): Integer; cdecl; export;
begin
  try
    CodeSite.WriteInteger(LineID, Msg, Value);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csWriteFloat(LineID : PChar; Msg : PChar; var Value : Double): Integer; cdecl; export;
begin
  try
    CodeSite.WriteFloat(LineID, Msg, Value);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csWriteString(LineID : PChar; Msg : PChar; Value : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.WriteString(LineID, Msg, Value);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csWriteMsg(LineID : PChar; Msg : PChar): Integer; cdecl; export;
begin
  try
    CodeSite.WriteMsg(LineID, Msg);
    Result := 0;
  except
    Result := -1;
  end;
end;

function csResetCheckpoint : Integer; cdecl; export;
begin
  try
    CodeSite.ResetCheckpoint;
    Result := 0;
  except
    Result := -1;
  end;
end;

function csSendMemoryStatus : Integer; cdecl; export;
begin
  try
    CodeSite.SendMemoryStatus;
    Result := 0;
  except
    Result := -1;
  end;
end;

initialization
  IsMultiThread := true;
finalization

end.
