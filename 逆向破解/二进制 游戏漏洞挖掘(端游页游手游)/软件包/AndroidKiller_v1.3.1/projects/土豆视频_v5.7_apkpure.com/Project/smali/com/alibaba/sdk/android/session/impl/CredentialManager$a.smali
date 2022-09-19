.class final Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/initialization/InitializationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/session/impl/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/initialization/InitializationHandler",
        "<",
        "Lcom/alibaba/sdk/android/ResultCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->b:Z

    return-void
.end method


# virtual methods
.method public final createRequestParameters()Ljava/lang/Object;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->genSeedKey()[B

    move-result-object v0

    const-string/jumbo v2, "seedKey"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v3, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-static {v3}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->e(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->seedKey:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->saveSecret(Ljava/lang/String;[B)V

    const-string/jumbo v0, "refreshToken"

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-static {v2}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->f(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sid"

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getRequestParameterKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "session"

    return-object v0
.end method

.method public final getRequestServiceType()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->g(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getResponseValueKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "session"

    return-object v0
.end method

.method public final handleResponseError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synthetic handleResponseValue(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    const-string/jumbo v1, "system"

    const-string/jumbo v2, "refreshSession"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->action(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->begin()Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/model/Result;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/model/Result;-><init>()V

    const-string v2, "code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alibaba/sdk/android/model/Result;->code:I

    const-string v2, "data"

    invoke-static {p1, v2}, Lcom/alibaba/sdk/android/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/sdk/android/model/Result;->data:Ljava/lang/Object;

    const-string v2, "message"

    invoke-static {p1, v2}, Lcom/alibaba/sdk/android/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-static {v2, v1, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Lcom/alibaba/sdk/android/session/impl/CredentialManager;Lcom/alibaba/sdk/android/model/Result;Lcom/alibaba/sdk/android/trace/ActionTraceLogger;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    return-object v0
.end method
