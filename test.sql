set term # ;
create procedure TestCS
AS
begin
  execute procedure csClear;
  execute procedure csCategoryColor 'clWhite';
  execute procedure csEnterMethod 'TestCS';
  execute procedure csCategory 'IBSite Test';
  execute procedure csAddCheckPoint;
  execute procedure csResetCheckpoint;
  execute procedure csAddCheckPoint;
  execute procedure csAddSeparator;
  execute procedure csSendMemoryStatus;
  execute procedure csSendMsg 'Msg';
  execute procedure csDisable;
  execute procedure csSendMsg 'Should not see this';
  execute procedure csEnable;
  execute procedure csCategoryColor 'clYellow';
  if (csEnabled() = 1) then
    execute procedure csSendMsg 'CodeSite Already Enabled';
  else
  begin
    execute procedure csEnable;
    execute procedure csSendMsg 'Just Enabled CodeSite';
  end
  execute procedure csSendMsg 'Should see this';
  execute procedure csSendString 'String', 'Value';
  execute procedure csSendInteger 'Integer', 1;
  execute procedure csSendFloat 'Float', 1.1;
  execute procedure csSendNote 'This is a test note';
  execute procedure csWriteInteger 'First', 'Integer', 1;
  execute procedure csWriteFloat 'Second', 'Float', 1.1;
  execute procedure csWriteString 'Third', 'String', 'Value';
  execute procedure csWriteMsg 'Fourth', 'Msg';
  execute procedure csExitMethod 'TestCS';
end #
set term ; #
