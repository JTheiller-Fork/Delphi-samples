﻿/// <summary>
/// ***************************************************************************
///
/// Delphi Sample Projects
///
/// Copyright 1995-2024 Patrick Prémartin under AGPL 3.0 license.
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
/// Patrick PREMARTIN
///
/// Site :
/// https://samples.developpeur-pascal.fr
///
/// Project site :
/// https://github.com/DeveloppeurPascal/Delphi-samples
///
/// ***************************************************************************
/// File last update : 2025-02-05T21:09:35.452+01:00
/// Signature : f6f5804741db108beda0b5241195f4c2dea53eb5
/// ***************************************************************************
/// </summary>

program DownloadAndOpenAPDFFile;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {frmMain},
  u_urlOpen in '..\..\Libraries\librairies\src\u_urlOpen.pas',
  u_download in '..\..\Libraries\librairies\src\u_download.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
