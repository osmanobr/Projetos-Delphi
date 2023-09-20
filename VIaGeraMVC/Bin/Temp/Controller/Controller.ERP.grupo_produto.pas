
unit Controller.ERP.grupo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPgrupo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPgrupo;
    FModelList: TModelBaseList<TModelERPgrupo>; 
    FModel: TModelERPgrupo;
    procedure SetModel(const Value: TModelERPgrupo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPgrupo>);

  public 
    property Model : TModelERPgrupo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPgrupo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPgrupo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPgrupo>.Create;  
  Self.FModelList.Add(TModelERPgrupo.Create); 
  Self.FModel           := TModelERPgrupo.Create; 
  Self.FDal             := TDalERPgrupo.Create( Param, True ); 
end; 

procedure TControllerERPgrupo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPgrupo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPgrupo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPgrupo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPgrupo.SetModel(  
  const Value: TModelERPgrupo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPgrupo.SetModelList(  
  const Value: TModelBaseList<TModelERPgrupo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPgrupo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPgrupo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

