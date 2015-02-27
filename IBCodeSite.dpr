library IBCodeSite;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

{%File 'reg.sql'}
{%File 'unreg.sql'}

uses
  SysUtils,
  Classes,
  uIBCSIntf in 'uIBCSIntf.pas';

exports
  csSendMsg,
  csEnterMethod,
  csExitMethod,
  csCategory,
  csCategoryColor,
  csSendString,
  csAddSeparator,
  csAddCheckpoint,
  csClear,
  csEnable,
  csDisable,
  csEnabled,
  csSendInteger,
  csSendFloat,
  csSendNote,
  csDestinationDetails,
  csWriteInteger,
  csWriteFloat,
  csWriteString,
  csWriteMsg;


{$R *.res}

{
declare external function csHello
cstring(64) returns integer by value
entry_point 'csHello' module_name 'IBCodeSite';
}


begin
end.
