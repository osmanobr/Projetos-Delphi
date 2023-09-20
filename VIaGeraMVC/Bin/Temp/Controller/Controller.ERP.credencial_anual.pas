
unit Controller.ERP.credencial;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcredencial = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcredencial;
    FModelList: TModelBaseList<TModelERPcredencial>; 
    FModel: TModelERPcredencial;
    procedure SetModel(const Value: TModelERPcredencial); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcredencial>);

  public 
    property Model : TModelERPcredencial read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcredencial> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcredencial.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcredencial>.Create;  
  Self.FModelList.Add(TModelERPcredencial.Create); 
  Self.FModel           := TModelERPcredencial.Create; 
  Self.FDal             := TDalERPcredencial.Create( Param, True ); 
end; 

procedure TControllerERPcredencial.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcredencial.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcredencial.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcredencial.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcredencial.SetModel(  
  const Value: TModelERPcredencial); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcredencial.SetModelList(  
  const Value: TModelBaseList<TModelERPcredencial>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcredencial.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcredencial.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

