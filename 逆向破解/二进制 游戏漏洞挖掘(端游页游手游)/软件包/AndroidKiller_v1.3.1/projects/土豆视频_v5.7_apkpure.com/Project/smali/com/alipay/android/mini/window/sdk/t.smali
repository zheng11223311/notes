.class Lcom/alipay/android/mini/window/sdk/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/a$a;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/o;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/android/mini/widget/o;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/t;->c:Lcom/alipay/android/mini/window/sdk/l;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/t;->a:Lcom/alipay/android/mini/widget/o;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/t;->a:Lcom/alipay/android/mini/widget/o;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/o;->dismiss()V

    .line 558
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/t;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->g(Lcom/alipay/android/mini/window/sdk/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/t;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->f(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/t;->c:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/t;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/t;->a:Lcom/alipay/android/mini/widget/o;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/o;->dismiss()V

    .line 570
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/t;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->g(Lcom/alipay/android/mini/window/sdk/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/t;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->f(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method
