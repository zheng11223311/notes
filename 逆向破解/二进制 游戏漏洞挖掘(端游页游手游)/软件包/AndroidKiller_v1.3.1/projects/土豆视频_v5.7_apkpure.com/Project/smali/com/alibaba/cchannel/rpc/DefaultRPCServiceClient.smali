.class public Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;
.super Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;
.source "DefaultRPCServiceClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CCP-DefaultRPCServiceClient"


# instance fields
.field private cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

.field private httpBasedRPCServiceClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;-><init>()V

    .line 21
    sget-object v0, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    const-string v1, "CloudRPC"

    const-string v2, "RPC"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->action(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/cchannel/rpc/RPCServiceClient;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->getRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v0

    return-object v0
.end method

.method private getHttpRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->httpBasedRPCServiceClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    invoke-direct {v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;-><init>()V

    iput-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->httpBasedRPCServiceClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    .line 143
    :cond_0
    const-string v0, "CCP-DefaultRPCServiceClient"

    const-string v1, "call with HTTP ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->httpBasedRPCServiceClient:Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    return-object v0
.end method

.method private getRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;
    .locals 5

    .prologue
    .line 117
    :try_start_0
    const-class v2, Lcom/alibaba/cchannel/plugin/CloudPushService;

    invoke-static {v2}, Lcom/alibaba/sdk/android/AlibabaSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/cchannel/plugin/CloudPushService;

    .line 118
    .local v0, "cloudPushService":Lcom/alibaba/cchannel/plugin/CloudPushService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/cchannel/plugin/CloudPushService;->isReadyForCommunicate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v3, "did"

    invoke-interface {v0}, Lcom/alibaba/cchannel/plugin/CloudPushService;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 120
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v3, "conn_type"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 121
    const-string v2, "CCP-DefaultRPCServiceClient"

    const-string v3, "call with TCP ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v0}, Lcom/alibaba/cchannel/plugin/CloudPushService;->getTcpServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v2

    .line 129
    .end local v0    # "cloudPushService":Lcom/alibaba/cchannel/plugin/CloudPushService;
    :goto_0
    return-object v2

    .line 124
    .restart local v0    # "cloudPushService":Lcom/alibaba/cchannel/plugin/CloudPushService;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v3, "conn_type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 125
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->getHttpRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 127
    .end local v0    # "cloudPushService":Lcom/alibaba/cchannel/plugin/CloudPushService;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v3, "conn_type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 129
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->getHttpRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v2

    goto :goto_0
.end method

.method private log(Lcom/alibaba/cchannel/rpc/ServiceRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string/jumbo v1, "v"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 53
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v1, "platformId"

    invoke-static {}, Lcom/alibaba/cchannel/CloudChannelConstants;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 54
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v1, "appKey"

    invoke-static {}, Lcom/alibaba/cchannel/security/encryption/SecurityBoxHolder;->getSecurityBox()Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/cchannel/security/encryption/SecurityBox;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 55
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 56
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v1, "domain"

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 57
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string/jumbo v1, "resource"

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 58
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string/jumbo v1, "version"

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 59
    return-void
.end method


# virtual methods
.method public call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 8
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->startTime:J

    .line 28
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->log(Lcom/alibaba/cchannel/rpc/ServiceRequest;)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->getRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/alibaba/cchannel/rpc/RPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v1

    .line 33
    .local v1, "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string/jumbo v3, "req_size"

    iget-object v4, p1, Lcom/alibaba/cchannel/rpc/ServiceRequest;->payload:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 34
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string/jumbo v3, "res_size"

    iget-object v4, v1, Lcom/alibaba/cchannel/rpc/ServiceResponse;->payload:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 35
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    const-string v3, "cost_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->startTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 36
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->success()V
    :try_end_0
    .catch Lcom/alibaba/cchannel/rpc/ServiceInvokeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
    sget-object v2, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->INVALID_SID:Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    invoke-virtual {v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;->getExceptionType()Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->getRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/alibaba/cchannel/rpc/RPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->cloudRPCLogger:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    .line 46
    throw v0
.end method

.method public call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .param p2, "callback"    # Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    .prologue
    .line 64
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->log(Lcom/alibaba/cchannel/rpc/ServiceRequest;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->startTime:J

    .line 67
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->getRpcServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v1

    new-instance v2, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;-><init>(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/alibaba/cchannel/rpc/RPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-direct {v1, v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    goto :goto_0
.end method
