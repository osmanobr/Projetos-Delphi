
unit Controller.ERP.os_duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPosduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPosduplicata;
    FModelList: TModelBaseList<TModelERPosduplicata>; 
    FModel: TModelERPosduplicata;
    procedure SetModel(const Value: TModelERPosduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPosduplicata>);

  public 
    property Model : TModelERPosduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPosduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPosduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPosduplicata>.Create;  
  Self.FModelList.Add(TModelERPosduplicata.Create); 
  Self.FModel           := TModelERPosduplicata.Create; 
  Self.FDal             := TDalERPosduplicata.Create( Param, True ); 
end; 

procedure TControllerERPosduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPosduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPosduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPosduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPosduplicata.SetModel(  
  const Value: TModelERPosduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPosduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPosduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPosduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPosduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

