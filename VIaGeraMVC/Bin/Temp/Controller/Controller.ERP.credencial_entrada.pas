
unit Controller.ERP.credencial_classe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcredencialclasse = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcredencialclasse;
    FModelList: TModelBaseList<TModelERPcredencialclasse>; 
    FModel: TModelERPcredencialclasse;
    procedure SetModel(const Value: TModelERPcredencialclasse); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcredencialclasse>);

  public 
    property Model : TModelERPcredencialclasse read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcredencialclasse> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcredencialclasse.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcredencialclasse>.Create;  
  Self.FModelList.Add(TModelERPcredencialclasse.Create); 
  Self.FModel           := TModelERPcredencialclasse.Create; 
  Self.FDal             := TDalERPcredencialclasse.Create( Param, True ); 
end; 

procedure TControllerERPcredencialclasse.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcredencialclasse.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcredencialclasse.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcredencialclasse.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcredencialclasse.SetModel(  
  const Value: TModelERPcredencialclasse); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcredencialclasse.SetModelList(  
  const Value: TModelBaseList<TModelERPcredencialclasse>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcredencialclasse.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcredencialclasse.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

