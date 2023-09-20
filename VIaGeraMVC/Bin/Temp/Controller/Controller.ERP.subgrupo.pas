
unit Controller.ERP.sistemas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPsistemas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPsistemas;
    FModelList: TModelBaseList<TModelERPsistemas>; 
    FModel: TModelERPsistemas;
    procedure SetModel(const Value: TModelERPsistemas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPsistemas>);

  public 
    property Model : TModelERPsistemas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPsistemas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPsistemas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPsistemas>.Create;  
  Self.FModelList.Add(TModelERPsistemas.Create); 
  Self.FModel           := TModelERPsistemas.Create; 
  Self.FDal             := TDalERPsistemas.Create( Param, True ); 
end; 

procedure TControllerERPsistemas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPsistemas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPsistemas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPsistemas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPsistemas.SetModel(  
  const Value: TModelERPsistemas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPsistemas.SetModelList(  
  const Value: TModelBaseList<TModelERPsistemas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPsistemas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPsistemas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

