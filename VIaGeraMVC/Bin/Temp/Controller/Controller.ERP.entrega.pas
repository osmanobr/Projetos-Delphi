
unit Controller.ERP.empresas_sped;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresassped = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresassped;
    FModelList: TModelBaseList<TModelERPempresassped>; 
    FModel: TModelERPempresassped;
    procedure SetModel(const Value: TModelERPempresassped); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresassped>);

  public 
    property Model : TModelERPempresassped read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresassped> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresassped.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresassped>.Create;  
  Self.FModelList.Add(TModelERPempresassped.Create); 
  Self.FModel           := TModelERPempresassped.Create; 
  Self.FDal             := TDalERPempresassped.Create( Param, True ); 
end; 

procedure TControllerERPempresassped.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresassped.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresassped.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresassped.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresassped.SetModel(  
  const Value: TModelERPempresassped); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresassped.SetModelList(  
  const Value: TModelBaseList<TModelERPempresassped>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresassped.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresassped.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

