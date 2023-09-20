
unit Controller.ERP.venda_item_serie;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaitemserie = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaitemserie;
    FModelList: TModelBaseList<TModelERPvendaitemserie>; 
    FModel: TModelERPvendaitemserie;
    procedure SetModel(const Value: TModelERPvendaitemserie); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaitemserie>);

  public 
    property Model : TModelERPvendaitemserie read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaitemserie> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaitemserie.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaitemserie>.Create;  
  Self.FModelList.Add(TModelERPvendaitemserie.Create); 
  Self.FModel           := TModelERPvendaitemserie.Create; 
  Self.FDal             := TDalERPvendaitemserie.Create( Param, True ); 
end; 

procedure TControllerERPvendaitemserie.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaitemserie.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaitemserie.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaitemserie.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaitemserie.SetModel(  
  const Value: TModelERPvendaitemserie); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaitemserie.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaitemserie>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaitemserie.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaitemserie.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

