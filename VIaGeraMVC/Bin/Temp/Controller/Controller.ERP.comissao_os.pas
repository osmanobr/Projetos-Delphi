
unit Controller.ERP.comissao_faixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaofaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaofaixa;
    FModelList: TModelBaseList<TModelERPcomissaofaixa>; 
    FModel: TModelERPcomissaofaixa;
    procedure SetModel(const Value: TModelERPcomissaofaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaofaixa>);

  public 
    property Model : TModelERPcomissaofaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaofaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaofaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaofaixa>.Create;  
  Self.FModelList.Add(TModelERPcomissaofaixa.Create); 
  Self.FModel           := TModelERPcomissaofaixa.Create; 
  Self.FDal             := TDalERPcomissaofaixa.Create( Param, True ); 
end; 

procedure TControllerERPcomissaofaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaofaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaofaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaofaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaofaixa.SetModel(  
  const Value: TModelERPcomissaofaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaofaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaofaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaofaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaofaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

