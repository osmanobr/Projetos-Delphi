
unit Controller.ERP.pdv_duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpdvduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpdvduplicata;
    FModelList: TModelBaseList<TModelERPpdvduplicata>; 
    FModel: TModelERPpdvduplicata;
    procedure SetModel(const Value: TModelERPpdvduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpdvduplicata>);

  public 
    property Model : TModelERPpdvduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpdvduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpdvduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpdvduplicata>.Create;  
  Self.FModelList.Add(TModelERPpdvduplicata.Create); 
  Self.FModel           := TModelERPpdvduplicata.Create; 
  Self.FDal             := TDalERPpdvduplicata.Create( Param, True ); 
end; 

procedure TControllerERPpdvduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpdvduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpdvduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpdvduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpdvduplicata.SetModel(  
  const Value: TModelERPpdvduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpdvduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPpdvduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpdvduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpdvduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

