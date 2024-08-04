﻿/// <summary>
/// ***************************************************************************
///
/// Delphi sample projects
///
/// Copyright 2023-2024 Patrick Prémartin under AGPL 3.0 license.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///
/// ***************************************************************************
///
/// Set of projects demonstrating the features of the Delphi development
/// environment, its libraries and its programming language.
///
/// Some of the projects have been presented at conferences, on training
/// courses or online coding sessions.
///
/// The programs are up to date with the Community Edition and the commercial
/// version of Delphi or RAD Studio.
///
/// ***************************************************************************
///
/// Author(s) :
///      Patrick PREMARTIN
///
/// Site :
///      https://samples.developpeur-pascal.fr
///
/// Project site :
///      https://github.com/DeveloppeurPascal/Delphi-samples
///
/// ***************************************************************************
/// File last update : 04/08/2024 09:03:36
/// Signature : d7932e94d3b8d2f405903b94ffcc5d5947d5849f
/// ***************************************************************************
/// </summary>

program QRCodeGenerator_VCL;

uses
  Vcl.Forms,
  fMain in 'fMain.pas' {frmMain},
  uConsts in '..\uConsts.pas',
  DelphiZXIngQRCode in '..\..\..\Libraries\DelphiZXingQRCode\Source\DelphiZXIngQRCode.pas',
  Olf.RTL.Checksum in '..\..\..\Libraries\librairies\src\Olf.RTL.Checksum.pas',
  u_md5 in '..\..\..\Libraries\librairies\src\u_md5.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
