.class Lcom/alipay/android/mini/window/sdk/aa;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->g(Lcom/alipay/android/mini/window/sdk/l;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/window/sdk/ab;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/ab;-><init>(Lcom/alipay/android/mini/window/sdk/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
