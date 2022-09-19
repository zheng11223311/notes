.class public Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/session/SessionService;


# instance fields
.field private a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    goto :goto_0
.end method


# virtual methods
.method public getSId()Lcom/alibaba/sdk/android/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/model/Result",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get sid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->d(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->refreshSId()Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    iget v1, v1, Lcom/alibaba/sdk/android/ResultCode;->code:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/model/Result;->result(ILjava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    goto :goto_0
.end method

.method public getSession()Lcom/alibaba/sdk/android/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/model/Result",
            "<",
            "Lcom/alibaba/sdk/android/session/model/Session;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    iget v0, v0, Lcom/alibaba/sdk/android/ResultCode;->code:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSession()Lcom/alibaba/sdk/android/session/model/Session;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/model/Result;->result(ILjava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    return-object v0
.end method

.method public refreshSId()Lcom/alibaba/sdk/android/model/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/model/Result",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->refreshWithInterval()V

    invoke-static {}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "refresh sid: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->getSId()Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/sdk/android/model/Result;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;->getSId()Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    iget v1, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/model/Result;->result(ILjava/lang/String;)Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    goto :goto_0
.end method
