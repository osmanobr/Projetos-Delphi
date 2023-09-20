
unit Controller.ERP.etiquetadora;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPetiquetadora = class(TControllerBase, IController) 
  private 
    FDal : TViewERPetiquetadora;
    FModelList: TModelBaseList<TModelERPetiquetadora>; 
    FModel: TModelERPetiquetadora;
    procedure SetModel(const Value: TModelERPetiquetadora); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPetiquetadora>);

  public 
    property Model : TModelERPetiquetadora read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPetiquetadora> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPetiquetadora.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPetiquetadora>.Create;  
  Self.FModelList.Add(TModelERPetiquetadora.Create); 
  Self.FModel           := TModelERPetiquetadora.Create; 
  Self.FDal             := TDalERPetiquetadora.Create( Param, True ); 
end; 

procedure TControllerERPetiquetadora.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPetiquetadora.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPetiquetadora.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPetiquetadora.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPetiquetadora.SetModel(  
  const Value: TModelERPetiquetadora); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPetiquetadora.SetModelList(  
  const Value: TModelBaseList<TModelERPetiquetadora>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPetiquetadora.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPetiquetadora.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

