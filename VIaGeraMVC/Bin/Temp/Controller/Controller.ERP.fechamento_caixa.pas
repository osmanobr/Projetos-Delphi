
unit Controller.ERP.familia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfamilia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfamilia;
    FModelList: TModelBaseList<TModelERPfamilia>; 
    FModel: TModelERPfamilia;
    procedure SetModel(const Value: TModelERPfamilia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfamilia>);

  public 
    property Model : TModelERPfamilia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfamilia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfamilia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfamilia>.Create;  
  Self.FModelList.Add(TModelERPfamilia.Create); 
  Self.FModel           := TModelERPfamilia.Create; 
  Self.FDal             := TDalERPfamilia.Create( Param, True ); 
end; 

procedure TControllerERPfamilia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfamilia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfamilia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfamilia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfamilia.SetModel(  
  const Value: TModelERPfamilia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfamilia.SetModelList(  
  const Value: TModelBaseList<TModelERPfamilia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfamilia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfamilia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

