
unit Controller.ERP.promocao_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpromocaoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpromocaoitem;
    FModelList: TModelBaseList<TModelERPpromocaoitem>; 
    FModel: TModelERPpromocaoitem;
    procedure SetModel(const Value: TModelERPpromocaoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpromocaoitem>);

  public 
    property Model : TModelERPpromocaoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpromocaoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpromocaoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpromocaoitem>.Create;  
  Self.FModelList.Add(TModelERPpromocaoitem.Create); 
  Self.FModel           := TModelERPpromocaoitem.Create; 
  Self.FDal             := TDalERPpromocaoitem.Create( Param, True ); 
end; 

procedure TControllerERPpromocaoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpromocaoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpromocaoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpromocaoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpromocaoitem.SetModel(  
  const Value: TModelERPpromocaoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpromocaoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPpromocaoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpromocaoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpromocaoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

