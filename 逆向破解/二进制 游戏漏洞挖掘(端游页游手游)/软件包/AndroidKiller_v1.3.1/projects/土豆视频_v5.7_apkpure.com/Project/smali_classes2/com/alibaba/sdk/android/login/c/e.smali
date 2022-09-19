.class public final Lcom/alibaba/sdk/android/login/c/e;
.super Lcom/alibaba/sdk/android/login/c/a;


# instance fields
.field private a:Lcom/alibaba/sdk/android/login/callback/LoginCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/sdk/android/login/callback/LoginCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/login/c/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/login/c/e;->a:Lcom/alibaba/sdk/android/login/callback/LoginCallback;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/login/c/e;->a:Lcom/alibaba/sdk/android/login/callback/LoginCallback;

    sget-object v1, Lcom/alibaba/sdk/android/login/impl/c;->f:Lcom/alibaba/sdk/android/session/CredentialService;

    invoke-interface {v1}, Lcom/alibaba/sdk/android/session/CredentialService;->getSession()Lcom/alibaba/sdk/android/session/model/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/login/callback/LoginCallback;->onSuccess(Lcom/alibaba/sdk/android/session/model/Session;)V

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/login/c/e;->a:Lcom/alibaba/sdk/android/login/callback/LoginCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/login/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method protected final doWhenException(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/login/c/e;->a:Lcom/alibaba/sdk/android/login/callback/LoginCallback;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/ResultCode;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/util/CommonUtils;->onFailure(Lcom/alibaba/sdk/android/callback/FailureCallback;Lcom/alibaba/sdk/android/ResultCode;)V

    return-void
.end method
