.class Lcom/alipay/android/mini/window/sdk/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/ar;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/ar;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/mini/window/sdk/j;->i()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->b(Lcom/alipay/android/mini/window/sdk/ar;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;Landroid/content/Context;)Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;Landroid/os/Handler;)Landroid/os/Handler;

    .line 67
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;Lb/g;)Lb/g;

    .line 68
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/k;)Lcom/alipay/android/mini/window/sdk/k;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/as;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/j;)Lcom/alipay/android/mini/window/sdk/j;

    .line 70
    return-void
.end method
