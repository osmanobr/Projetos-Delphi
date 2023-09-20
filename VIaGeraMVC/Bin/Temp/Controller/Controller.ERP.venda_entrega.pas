
unit Controller.ERP.venda_duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaduplicata;
    FModelList: TModelBaseList<TModelERPvendaduplicata>; 
    FModel: TModelERPvendaduplicata;
    procedure SetModel(const Value: TModelERPvendaduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaduplicata>);

  public 
    property Model : TModelERPvendaduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaduplicata>.Create;  
  Self.FModelList.Add(TModelERPvendaduplicata.Create); 
  Self.FModel           := TModelERPvendaduplicata.Create; 
  Self.FDal             := TDalERPvendaduplicata.Create( Param, True ); 
end; 

procedure TControllerERPvendaduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaduplicata.SetModel(  
  const Value: TModelERPvendaduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

