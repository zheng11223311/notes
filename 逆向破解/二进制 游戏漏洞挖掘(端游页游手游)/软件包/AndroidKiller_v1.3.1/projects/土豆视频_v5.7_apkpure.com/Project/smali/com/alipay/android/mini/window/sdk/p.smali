.class Lcom/alipay/android/mini/window/sdk/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lb/e;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/p;->b:Lcom/alipay/android/mini/window/sdk/l;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/p;->a:Lb/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 252
    const-string v0, "isCertified"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/p;->a:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 257
    :cond_0
    return-void
.end method
