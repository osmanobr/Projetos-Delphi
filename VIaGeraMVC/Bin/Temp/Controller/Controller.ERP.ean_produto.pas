
unit Controller.ERP.duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPduplicata;
    FModelList: TModelBaseList<TModelERPduplicata>; 
    FModel: TModelERPduplicata;
    procedure SetModel(const Value: TModelERPduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPduplicata>);

  public 
    property Model : TModelERPduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPduplicata>.Create;  
  Self.FModelList.Add(TModelERPduplicata.Create); 
  Self.FModel           := TModelERPduplicata.Create; 
  Self.FDal             := TDalERPduplicata.Create( Param, True ); 
end; 

procedure TControllerERPduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPduplicata.SetModel(  
  const Value: TModelERPduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

