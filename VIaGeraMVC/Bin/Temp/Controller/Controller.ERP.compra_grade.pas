
unit Controller.ERP.compra_duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcompraduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcompraduplicata;
    FModelList: TModelBaseList<TModelERPcompraduplicata>; 
    FModel: TModelERPcompraduplicata;
    procedure SetModel(const Value: TModelERPcompraduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcompraduplicata>);

  public 
    property Model : TModelERPcompraduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcompraduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcompraduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcompraduplicata>.Create;  
  Self.FModelList.Add(TModelERPcompraduplicata.Create); 
  Self.FModel           := TModelERPcompraduplicata.Create; 
  Self.FDal             := TDalERPcompraduplicata.Create( Param, True ); 
end; 

procedure TControllerERPcompraduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcompraduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcompraduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcompraduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcompraduplicata.SetModel(  
  const Value: TModelERPcompraduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcompraduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPcompraduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcompraduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcompraduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

