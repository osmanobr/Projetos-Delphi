
unit Controller.ERP.pdv_caixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpdvcaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpdvcaixa;
    FModelList: TModelBaseList<TModelERPpdvcaixa>; 
    FModel: TModelERPpdvcaixa;
    procedure SetModel(const Value: TModelERPpdvcaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpdvcaixa>);

  public 
    property Model : TModelERPpdvcaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpdvcaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpdvcaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpdvcaixa>.Create;  
  Self.FModelList.Add(TModelERPpdvcaixa.Create); 
  Self.FModel           := TModelERPpdvcaixa.Create; 
  Self.FDal             := TDalERPpdvcaixa.Create( Param, True ); 
end; 

procedure TControllerERPpdvcaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpdvcaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpdvcaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpdvcaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpdvcaixa.SetModel(  
  const Value: TModelERPpdvcaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpdvcaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPpdvcaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpdvcaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpdvcaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

