{
 * UBPatchInfoWriter.pas
 *
 * Class that emits BPatch's version information and help screen on standard
 * output.
 *
 * Copyright (c) 2011 Peter D Johnson (www.delphidabbler.com).
 *
 * $Rev$
 * $Date$
 *
 * THIS SOFTWARE IS PROVIDED "AS-IS", WITHOUT ANY EXPRESS OR IMPLIED WARRANTY.
 * IN NO EVENT WILL THE AUTHORS BE HELD LIABLE FOR ANY DAMAGES ARISING FROM THE
 * USE OF THIS SOFTWARE.
 *
 * For conditions of distribution and use see the LICENSE file of visit
 * http://www.delphidabbler.com/software/bdiff/license
}


unit UBPatchInfoWriter;

interface

uses
  UInfoWriter;

type
  TBPatchInfoWriter = class(TInfoWriter)
  protected
    class function HelpText: string; override;
  end;

implementation

uses
  SysUtils,
  UAppInfo;

{ TBPatchInfoWriter }

class function TBPatchInfoWriter.HelpText: string;
begin
  Result := Format(
    '%0:s: binary ''patch'' - apply binary patch'#13#10
      + #13#10
      + 'Usage: %0:s [options] old-file [new-file] [<patch-file]'#13#10#13#10
      + 'Creates new-file from old-file and patch-file'#13#10
      + 'If new-file is not provided old-file is updated in place'#13#10
      + #13#10
      + 'Valid options:'#13#10
      + ' -i FN --input=FN     Set input file name (instead of stdin)'
      + #13#10
      + ' -h    --help         Show this help screen'#13#10
      + ' -v    --version      Show version information'#13#10
      + #13#10
      + '(c) copyright 1999 Stefan Reuther <Streu@gmx.de>'#13#10
      + '(c) copyright 2003-2011 Peter Johnson (www.delphidabbler.com)'#13#10,
    [ProgramFileName]
  );
end;

end.