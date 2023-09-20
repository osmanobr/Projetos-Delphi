
unit Controller.ERP.subgrupo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPsubgrupo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPsubgrupo;
    FModelList: TModelBaseList<TModelERPsubgrupo>; 
    FModel: TModelERPsubgrupo;
    procedure SetModel(const Value: TModelERPsubgrupo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPsubgrupo>);

  public 
    property Model : TModelERPsubgrupo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPsubgrupo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPsubgrupo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPsubgrupo>.Create;  
  Self.FModelList.Add(TModelERPsubgrupo.Create); 
  Self.FModel           := TModelERPsubgrupo.Create; 
  Self.FDal             := TDalERPsubgrupo.Create( Param, True ); 
end; 

procedure TControllerERPsubgrupo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPsubgrupo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPsubgrupo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPsubgrupo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPsubgrupo.SetModel(  
  const Value: TModelERPsubgrupo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPsubgrupo.SetModelList(  
  const Value: TModelBaseList<TModelERPsubgrupo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPsubgrupo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPsubgrupo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

