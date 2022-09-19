.class public final Lcom/alibaba/sdk/android/session/a/a;
.super Lcom/alibaba/sdk/android/task/TaskWithDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/task/TaskWithDialog",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/task/TaskWithDialog;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/session/a/a;->a:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/session/a/a;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/a/a;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected final synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->refreshSession()Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/ResultCode;->REFRESH_SID_EXCEPTION:Lcom/alibaba/sdk/android/ResultCode;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/system/a;->h:Lcom/alibaba/sdk/android/executor/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/session/a/b;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/session/a/b;-><init>(Lcom/alibaba/sdk/android/session/a/a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/executor/ExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/util/CommonUtils;->toastSystemException()V

    goto :goto_0
.end method

.method protected final doWhenException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/alibaba/sdk/android/util/CommonUtils;->toastSystemException()V

    return-void
.end method
