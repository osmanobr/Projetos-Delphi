
unit Controller.ERP.cheque_recebido_custodia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPchequerecebidocustodia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPchequerecebidocustodia;
    FModelList: TModelBaseList<TModelERPchequerecebidocustodia>; 
    FModel: TModelERPchequerecebidocustodia;
    procedure SetModel(const Value: TModelERPchequerecebidocustodia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPchequerecebidocustodia>);

  public 
    property Model : TModelERPchequerecebidocustodia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPchequerecebidocustodia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPchequerecebidocustodia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPchequerecebidocustodia>.Create;  
  Self.FModelList.Add(TModelERPchequerecebidocustodia.Create); 
  Self.FModel           := TModelERPchequerecebidocustodia.Create; 
  Self.FDal             := TDalERPchequerecebidocustodia.Create( Param, True ); 
end; 

procedure TControllerERPchequerecebidocustodia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPchequerecebidocustodia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPchequerecebidocustodia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPchequerecebidocustodia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPchequerecebidocustodia.SetModel(  
  const Value: TModelERPchequerecebidocustodia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPchequerecebidocustodia.SetModelList(  
  const Value: TModelBaseList<TModelERPchequerecebidocustodia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPchequerecebidocustodia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPchequerecebidocustodia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

