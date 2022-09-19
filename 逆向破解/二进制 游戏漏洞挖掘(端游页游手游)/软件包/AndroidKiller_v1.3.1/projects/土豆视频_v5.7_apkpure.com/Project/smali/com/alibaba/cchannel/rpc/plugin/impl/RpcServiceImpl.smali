.class public Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;
.super Ljava/lang/Object;
.source "RpcServiceImpl.java"

# interfaces
.implements Lcom/alibaba/cchannel/rpc/plugin/RpcService;


# static fields
.field private static rpcClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-direct {v0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;-><init>()V

    sput-object v0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;->rpcClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;->rpcClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/cchannel/rpc/RPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    .locals 3
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .param p2, "callback"    # Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    .prologue
    .line 23
    :try_start_0
    sget-object v1, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;->rpcClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    new-instance v2, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;-><init>(Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/alibaba/cchannel/rpc/RPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "CCP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
