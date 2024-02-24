﻿unit SendPicturesOnANetworkWithSockets;

// ****************************************
// * Send pictures on a network with sockets
// ****************************************
// 
// A server send a picture to connected clients
// 
// ****************************************
// File generator : Socket Messaging Code Generator (v1.0)
// Website : https://socketmessaging.developpeur-pascal.fr/ 
// Generation date : 24/02/2024 20:11:32
// 
// Don't do any change on this file. They will be erased by next generation !
// ****************************************

// To compile this unit you need Olf.Net.Socket.Messaging.pas from
// https://github.com/DeveloppeurPascal/Socket-Messaging-Library
//
// Direct link to the file :
// https://raw.githubusercontent.com/DeveloppeurPascal/Socket-Messaging-Library/main/src-library/Olf.Net.Socket.Messaging.pas

interface

uses
  FMX.Graphics,
  System.Classes,
  Olf.Net.Socket.Messaging;

type
  /// <summary>
  /// Message ID 1: Send a bitmap
  /// </summary>
  TSPNSendABitmapMessage = class(TOlfSMMessage)
  private
    FBitmap: TBitmap;
    procedure SetBitmap(const Value: TBitmap);
  public
    /// <summary>
    /// Bitmap
    /// </summary>
    /// <remarks>
    /// Bitmap sent by the server to conected clients
    /// </remarks>
    property Bitmap: TBitmap read FBitmap write SetBitmap;
    constructor Create; override;
    procedure LoadFromStream(Stream: TStream); override;
    procedure SaveToStream(Stream: TStream); override;
    function GetNewInstance: TOlfSMMessage; override;
  end;

  TSendPicturesOnANetworkWithSocketsServer = class(TOlfSMServer)
  private
  protected
  public
    constructor Create; override;
  end;

  TSendPicturesOnANetworkWithSocketsClient = class(TOlfSMClient)
  private
  protected
    procedure onReceiveMessage1(Const ASender: TOlfSMSrvConnectedClient;
      Const AMessage: TOlfSMMessage);
  public
    onReceiveSPNSendABitmapMessage
      : TOlfSMReceivedMessageEvent<TSPNSendABitmapMessage>;
    constructor Create; override;
  end;

procedure RegisterMessagesReceivedByTheServer(Const Server: TOlfSMServer);
procedure RegisterMessagesReceivedByTheClient(Const Client: TOlfSMClient);

implementation

uses
  System.SysUtils;

procedure RegisterMessagesReceivedByTheServer(Const Server: TOlfSMServer);
begin
end;

procedure RegisterMessagesReceivedByTheClient(Const Client: TOlfSMClient);
begin
  Client.RegisterMessageToReceive(TSPNSendABitmapMessage.Create);
end;

{$REGION 'TSendPicturesOnANetworkWithSocketsServer'}

constructor TSendPicturesOnANetworkWithSocketsServer.Create;
begin
  inherited;
  RegisterMessagesReceivedByTheServer(self);
end;

{$ENDREGION}

{$REGION 'TSendPicturesOnANetworkWithSocketsClient'}

constructor TSendPicturesOnANetworkWithSocketsClient.Create;
begin
  inherited;
  RegisterMessagesReceivedByTheClient(self);
  SubscribeToMessage(1, onReceiveMessage1);
end;

procedure TSendPicturesOnANetworkWithSocketsClient.onReceiveMessage1(const ASender: TOlfSMSrvConnectedClient;
const AMessage: TOlfSMMessage);
var
  msg: TSPNSendABitmapMessage;
begin
  if not(AMessage is TSPNSendABitmapMessage) then
    exit;
  if not assigned(onReceiveSPNSendABitmapMessage) then
    exit;
  onReceiveSPNSendABitmapMessage(ASender, AMessage as TSPNSendABitmapMessage);
end;

{$ENDREGION}

{$REGION 'TSPNSendABitmapMessage' }

constructor TSPNSendABitmapMessage.Create;
begin
  inherited;
  MessageID := 1;
  FBitmap := TBitmap.Create;
end;

function TSPNSendABitmapMessage.GetNewInstance: TOlfSMMessage;
begin
  result := TSPNSendABitmapMessage.Create;
end;

procedure TSPNSendABitmapMessage.LoadFromStream(Stream: TStream);
begin
  inherited;
  FBitmap.LoadFromStream(Stream);
end;

procedure TSPNSendABitmapMessage.SaveToStream(Stream: TStream);
begin
  inherited;
  FBitmap.SaveToStream(Stream);
end;

procedure TSPNSendABitmapMessage.SetBitmap(const Value: TBitmap);
begin
  FBitmap := Value;
end;

{$ENDREGION}

end.
