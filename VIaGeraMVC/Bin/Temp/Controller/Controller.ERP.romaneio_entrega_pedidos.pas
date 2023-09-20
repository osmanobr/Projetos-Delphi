
unit Controller.ERP.romaneio_entrega;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPromaneioentrega = class(TControllerBase, IController) 
  private 
    FDal : TViewERPromaneioentrega;
    FModelList: TModelBaseList<TModelERPromaneioentrega>; 
    FModel: TModelERPromaneioentrega;
    procedure SetModel(const Value: TModelERPromaneioentrega); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPromaneioentrega>);

  public 
    property Model : TModelERPromaneioentrega read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPromaneioentrega> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPromaneioentrega.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPromaneioentrega>.Create;  
  Self.FModelList.Add(TModelERPromaneioentrega.Create); 
  Self.FModel           := TModelERPromaneioentrega.Create; 
  Self.FDal             := TDalERPromaneioentrega.Create( Param, True ); 
end; 

procedure TControllerERPromaneioentrega.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPromaneioentrega.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPromaneioentrega.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPromaneioentrega.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPromaneioentrega.SetModel(  
  const Value: TModelERPromaneioentrega); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPromaneioentrega.SetModelList(  
  const Value: TModelBaseList<TModelERPromaneioentrega>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPromaneioentrega.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPromaneioentrega.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

