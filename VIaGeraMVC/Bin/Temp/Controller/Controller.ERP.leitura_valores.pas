
unit Controller.ERP.leitura_modelo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituramodelo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituramodelo;
    FModelList: TModelBaseList<TModelERPleituramodelo>; 
    FModel: TModelERPleituramodelo;
    procedure SetModel(const Value: TModelERPleituramodelo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituramodelo>);

  public 
    property Model : TModelERPleituramodelo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituramodelo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituramodelo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituramodelo>.Create;  
  Self.FModelList.Add(TModelERPleituramodelo.Create); 
  Self.FModel           := TModelERPleituramodelo.Create; 
  Self.FDal             := TDalERPleituramodelo.Create( Param, True ); 
end; 

procedure TControllerERPleituramodelo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituramodelo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituramodelo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituramodelo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituramodelo.SetModel(  
  const Value: TModelERPleituramodelo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituramodelo.SetModelList(  
  const Value: TModelBaseList<TModelERPleituramodelo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituramodelo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituramodelo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

