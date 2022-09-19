.class public Lcom/alibaba/sdk/android/session/impl/CredentialManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/session/CredentialService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;,
        Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

.field private volatile c:Lcom/alibaba/sdk/android/session/model/a;

.field private volatile d:Lcom/alibaba/sdk/android/session/model/b;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Lcom/alibaba/sdk/android/session/SessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    new-instance v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;)V

    sput-object v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->getValueFromDynamicDataStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alibaba/sdk/android/system/a/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/session/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->refreshTokenStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->getValueFromDynamicDataStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/alibaba/sdk/android/system/a/a;->b(Ljava/lang/String;)Lcom/alibaba/sdk/android/session/model/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/model/Result;Lcom/alibaba/sdk/android/trace/ActionTraceLogger;)Lcom/alibaba/sdk/android/ResultCode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/model/Result",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/trace/ActionTraceLogger;",
            ")",
            "Lcom/alibaba/sdk/android/ResultCode;"
        }
    .end annotation

    const/16 v8, 0x2714

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/alibaba/sdk/android/model/Result;->code:I

    iget-object v0, p1, Lcom/alibaba/sdk/android/model/Result;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-ne v2, v6, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->success()V

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    :goto_0
    return-object v0

    :cond_0
    const/16 v3, 0xcd

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->e()V

    :cond_1
    const-string v0, "code"

    const-string v1, "REFRESH_SID_EXCEPTION"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x65

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/ResultCode;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0xcb

    if-ne v2, v0, :cond_3

    const-string v0, "code"

    const-string v1, "RSA_DECRYPT_EXCEPTION"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x2715

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/ResultCode;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "code"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x2714

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " code = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    new-instance v1, Lcom/alibaba/sdk/android/AlibabaSDKException;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/AlibabaSDKException;-><init>(Lcom/alibaba/sdk/android/message/Message;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "e"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v8, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/alibaba/sdk/android/AlibabaSDKException;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/sdk/android/AlibabaSDKException;-><init>(Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/session/impl/CredentialManager;Lcom/alibaba/sdk/android/model/Result;Lcom/alibaba/sdk/android/trace/ActionTraceLogger;)Lcom/alibaba/sdk/android/ResultCode;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Lcom/alibaba/sdk/android/model/Result;Lcom/alibaba/sdk/android/trace/ActionTraceLogger;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Lcom/alibaba/sdk/android/session/SessionListener;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->f:Lcom/alibaba/sdk/android/session/SessionListener;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/alibaba/sdk/android/session/model/a;)V
    .locals 3

    iget-object v0, p1, Lcom/alibaba/sdk/android/session/model/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/sdk/android/session/model/a;->b:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->internalSessionStoreKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/system/a/a;->a(Lcom/alibaba/sdk/android/session/model/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->putValueInDynamicDataStore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->createInternalSession(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/session/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/model/a;->d:Lcom/alibaba/sdk/android/session/model/User;

    iput-object v1, v0, Lcom/alibaba/sdk/android/session/model/a;->d:Lcom/alibaba/sdk/android/session/model/User;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/session/model/a;->c:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Lcom/alibaba/sdk/android/session/model/a;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Lcom/alibaba/sdk/android/session/model/b;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    return-object v0
.end method

.method private b()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v2, v2, Lcom/alibaba/sdk/android/session/model/a;->c:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v2, v2, Lcom/alibaba/sdk/android/session/model/a;->b:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v4, v4, Lcom/alibaba/sdk/android/session/model/a;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v4, v4, Lcom/alibaba/sdk/android/session/model/a;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Lcom/alibaba/sdk/android/session/model/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->refreshTokenStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->removeValueFromDynamicDataStore(Ljava/lang/String;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v0, v0, Lcom/alibaba/sdk/android/session/model/b;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->h:Lcom/alibaba/sdk/android/executor/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;B)V

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/executor/ExecutorService;->postUITask(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->g:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v2, Lcom/alibaba/sdk/android/session/SessionListener;

    iget-object v3, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v3, v3, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->filterProperties:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/sdk/android/app/AppContext;->getServices(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/session/SessionListener;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lcom/alibaba/sdk/android/system/a;->h:Lcom/alibaba/sdk/android/executor/ExecutorService;

    new-instance v5, Lcom/alibaba/sdk/android/session/impl/a;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/sdk/android/session/impl/a;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;Lcom/alibaba/sdk/android/session/SessionListener;)V

    invoke-interface {v4, v5}, Lcom/alibaba/sdk/android/executor/ExecutorService;->postUITask(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createInternalSession(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/session/model/a;
    .locals 4

    new-instance v0, Lcom/alibaba/sdk/android/session/model/a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/session/model/a;-><init>()V

    const-string/jumbo v1, "sid"

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/session/model/a;->a:Ljava/lang/String;

    const-string v1, "expireIn"

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/util/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/session/model/a;->b:Ljava/lang/Integer;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/alibaba/sdk/android/session/model/User;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/session/model/User;-><init>()V

    const-string v3, "avatarUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/session/model/User;->avatarUrl:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/session/model/User;->id:Ljava/lang/String;

    const-string v3, "nick"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alibaba/sdk/android/session/model/User;->nick:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/a;->d:Lcom/alibaba/sdk/android/session/model/User;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/session/model/a;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public getCredentialManagerPolicy()Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    return-object v0
.end method

.method public getInternalSession()Lcom/alibaba/sdk/android/session/model/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    return-object v0
.end method

.method public getRefreshToken()Lcom/alibaba/sdk/android/session/model/b;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    return-object v0
.end method

.method public getSession()Lcom/alibaba/sdk/android/session/model/Session;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/session/impl/b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/session/impl/b;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)V

    return-object v0
.end method

.method public getSessionInitHandler(Z)Lcom/alibaba/sdk/android/initialization/InitializationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/alibaba/sdk/android/initialization/InitializationHandler",
            "<",
            "Lcom/alibaba/sdk/android/ResultCode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;Z)V

    return-object v0
.end method

.method public getSessionListener()Lcom/alibaba/sdk/android/session/SessionListener;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->f:Lcom/alibaba/sdk/android/session/SessionListener;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/session/model/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public init()Lcom/alibaba/sdk/android/ResultCode;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "credentialInit"

    invoke-static {v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->refreshSession()Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "credentialInit"

    sget-object v1, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    const-string v2, "credentialInit"

    invoke-static {v2}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "success"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "credentialInit"

    sget-object v2, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    const-string v3, "credentialInit"

    invoke-static {v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "failure"

    aput-object v6, v3, v7

    invoke-static {v2, v4, v5, v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SYSTEM_EXCEPTION:Lcom/alibaba/sdk/android/ResultCode;

    goto :goto_0
.end method

.method public isRefreshTokenExpired()Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/model/b;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/model/b;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout()Lcom/alibaba/sdk/android/ResultCode;
    .locals 11

    const/16 v10, 0x2714

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSession()Lcom/alibaba/sdk/android/session/model/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/session/model/Session;->isLogin()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x271b

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/ResultCode;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/model/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/system/a;->k:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "appKey"

    invoke-interface {v3}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "clientTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "securityToken"

    invoke-interface {v3}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "sdkVersion"

    sget-object v6, Lcom/alibaba/sdk/android/ConfigManager;->SDK_INTERNAL_VERSION:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string/jumbo v5, "refreshToken"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "sid"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "certName"

    const-string v5, "201506"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "seedKey"

    iget-object v5, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v5, v5, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->seedKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->genAsymEncryptedSeedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "data"

    iget-object v5, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v5, v5, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->seedKey:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->symEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v4, v4, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->seedKey:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sign: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v3, "sign"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/security/utils/SecurityUtils;->requestInitServer(Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/model/Result;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request init server, response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v3, v2, Lcom/alibaba/sdk/android/model/Result;->code:I

    iget-object v0, v2, Lcom/alibaba/sdk/android/model/Result;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eq v3, v9, :cond_7

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "code "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v2, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v10, v1}, Lcom/alibaba/sdk/android/message/Message;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    new-instance v1, Lcom/alibaba/sdk/android/AlibabaSDKException;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/AlibabaSDKException;-><init>(Lcom/alibaba/sdk/android/message/Message;)V

    throw v1

    :cond_6
    iget-object v0, v2, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    goto :goto_1

    :cond_7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v4, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v5, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v5, v5, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->seedKey:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->symDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->createInternalSession(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/session/model/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Lcom/alibaba/sdk/android/session/model/a;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->e()V

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "code "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v2, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v10, v4}, Lcom/alibaba/sdk/android/message/Message;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sget-object v2, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/alibaba/sdk/android/AlibabaSDKException;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/sdk/android/AlibabaSDKException;-><init>(Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    iget-object v0, v2, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    goto :goto_2
.end method

.method public declared-synchronized refreshSession()Lcom/alibaba/sdk/android/ResultCode;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;

    sget-object v1, Lcom/alibaba/sdk/android/system/a;->g:Lcom/alibaba/sdk/android/app/AppContext;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;-><init>(Lcom/alibaba/sdk/android/app/AppContext;)V

    new-instance v1, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/alibaba/sdk/android/session/impl/CredentialManager$a;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;Z)V

    const-class v2, Lcom/alibaba/sdk/android/ResultCode;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/initialization/InitializationServiceClient;->request(Lcom/alibaba/sdk/android/initialization/InitializationHandler;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshWhenLogin(Lcom/alibaba/sdk/android/session/model/LoginResultData;)V
    .locals 4

    iget-object v0, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->authCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->e:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/sdk/android/session/model/User;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/session/model/User;-><init>()V

    iget-object v0, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->openId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/sdk/android/session/model/User;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->taobaoNick:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->taobaoNick:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/sdk/android/session/model/User;->nick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-boolean v0, v0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->isUpdateWebCookie:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/web/a/a;->a:Lcom/alibaba/sdk/android/web/a/a;

    iget-object v2, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->cookiesMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/web/a/a;->a(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->avatarUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/sdk/android/session/model/User;->avatarUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iput-object v1, v0, Lcom/alibaba/sdk/android/session/model/a;->d:Lcom/alibaba/sdk/android/session/model/User;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/a;->c:Ljava/lang/Long;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    iget-object v2, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->sessionExpireTime:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/a;->b:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->c:Lcom/alibaba/sdk/android/session/model/a;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Lcom/alibaba/sdk/android/session/model/a;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alibaba/sdk/android/session/model/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/session/model/b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/b;->c:Ljava/lang/Long;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v2, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->refreshToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v2, p1, Lcom/alibaba/sdk/android/session/model/LoginResultData;->refreshTokenExpireTime:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/b;->b:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    iget-object v2, v0, Lcom/alibaba/sdk/android/session/model/b;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/sdk/android/session/model/b;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->d:Lcom/alibaba/sdk/android/session/model/b;

    sget-object v2, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v3, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-object v3, v3, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->refreshTokenStoreKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/system/a/a;->a(Lcom/alibaba/sdk/android/session/model/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->putValueInDynamicDataStore(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-boolean v0, v0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->isUpdateUTUser:Z

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "user_nick"

    iget-object v3, v1, Lcom/alibaba/sdk/android/session/model/User;->nick:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "user_id"

    iget-object v0, v1, Lcom/alibaba/sdk/android/session/model/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->d:Lcom/alibaba/sdk/android/security/SecurityService;

    iget-object v1, v1, Lcom/alibaba/sdk/android/session/model/User;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/security/SecurityService;->analyzeUserId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->e:Lcom/alibaba/sdk/android/ut/UserTrackerService;

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/ut/UserTrackerService;->updateUserTrackerProperties(Ljava/util/Map;)V

    :cond_3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->e()V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized refreshWithInterval()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getInternalSession()Lcom/alibaba/sdk/android/session/model/a;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/alibaba/sdk/android/session/model/a;->c:Ljava/lang/Long;

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->b:Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    iget-wide v4, v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->sidForceRefreshInterval:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->refreshSession()Lcom/alibaba/sdk/android/ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public setSessionListener(Lcom/alibaba/sdk/android/session/SessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->f:Lcom/alibaba/sdk/android/session/SessionListener;

    return-void
.end method
