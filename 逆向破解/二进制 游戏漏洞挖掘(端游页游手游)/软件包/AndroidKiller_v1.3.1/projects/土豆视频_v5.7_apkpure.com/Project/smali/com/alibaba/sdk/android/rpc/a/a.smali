.class public final Lcom/alibaba/sdk/android/rpc/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/rpc/RpcService;


# static fields
.field public static final a:Lcom/alibaba/sdk/android/rpc/a/a;


# instance fields
.field private final b:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/rpc/a/a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/rpc/a/a;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/rpc/a/a;->a:Lcom/alibaba/sdk/android/rpc/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    invoke-direct {v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/rpc/a/a;->b:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    return-void
.end method

.method public static a()V
    .locals 3

    const-string v0, "APPKEY_INDEX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/sdk/android/ConfigManager;->getAppKeyIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/cchannel/CloudChannelConstants;->setCustomConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AUTH_CODE"

    sget-object v1, Lcom/alibaba/sdk/android/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/cchannel/CloudChannelConstants;->setCustomConfig(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/ConfigManager;->SDK_INTERNAL_VERSION:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/cchannel/CloudChannelConstants;->CALLER_VERION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/alibaba/sdk/android/rpc/model/RpcRequest;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/alibaba/cchannel/rpc/ServiceRequest;

    invoke-direct {v0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;-><init>()V

    iget-object v1, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->seedKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->seedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setSeedKey(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->filter:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->filter:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setSessionFilter(Ljava/util/Map;)Lcom/alibaba/cchannel/rpc/ServiceRequest;

    :cond_1
    iget-object v1, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setResource(Ljava/lang/String;)Lcom/alibaba/cchannel/rpc/ServiceRequest;

    sget-object v1, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    const/4 v2, 0x5

    const-string/jumbo v3, "rpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invoke."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->target:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->action(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->params:Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/sdk/android/util/JSONUtils;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setJsonParamter(Ljava/lang/String;)Lcom/alibaba/cchannel/rpc/ServiceRequest;

    iget-object v2, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->params:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->infos(Ljava/util/Map;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    iget-object v2, p1, Lcom/alibaba/sdk/android/rpc/model/RpcRequest;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setVersion(Ljava/lang/String;)Lcom/alibaba/cchannel/rpc/ServiceRequest;

    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->begin()Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    iget-object v2, p0, Lcom/alibaba/sdk/android/rpc/a/a;->b:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    invoke-virtual {v2, v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "RpcServiceInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rpc response: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/cchannel/rpc/ServiceResponse;->asJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "null response for the rpc call"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alibaba/cchannel/rpc/ServiceInvokeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "e"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "response"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->success(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/alibaba/cchannel/rpc/ServiceResponse;->asJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
