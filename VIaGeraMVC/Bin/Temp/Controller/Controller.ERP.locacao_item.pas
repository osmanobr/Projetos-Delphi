
unit Controller.ERP.locacao_duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacaoduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacaoduplicata;
    FModelList: TModelBaseList<TModelERPlocacaoduplicata>; 
    FModel: TModelERPlocacaoduplicata;
    procedure SetModel(const Value: TModelERPlocacaoduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacaoduplicata>);

  public 
    property Model : TModelERPlocacaoduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacaoduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacaoduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacaoduplicata>.Create;  
  Self.FModelList.Add(TModelERPlocacaoduplicata.Create); 
  Self.FModel           := TModelERPlocacaoduplicata.Create; 
  Self.FDal             := TDalERPlocacaoduplicata.Create( Param, True ); 
end; 

procedure TControllerERPlocacaoduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacaoduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacaoduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacaoduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacaoduplicata.SetModel(  
  const Value: TModelERPlocacaoduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacaoduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacaoduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacaoduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacaoduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

