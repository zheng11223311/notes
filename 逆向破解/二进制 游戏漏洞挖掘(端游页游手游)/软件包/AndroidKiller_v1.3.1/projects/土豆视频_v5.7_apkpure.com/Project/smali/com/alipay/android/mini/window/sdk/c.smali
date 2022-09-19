.class Lcom/alipay/android/mini/window/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/alipay/android/mini/window/sdk/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/c;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/android/mini/window/sdk/c;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/mini/window/sdk/a;->a(Ljava/lang/String;)Lcom/alipay/android/mini/window/sdk/bg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/a;->a(Lcom/alipay/android/mini/window/sdk/a;Lcom/alipay/android/mini/window/sdk/bg;)Lcom/alipay/android/mini/window/sdk/bg;

    .line 306
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/a;->b(Lcom/alipay/android/mini/window/sdk/a;)Lcom/alipay/android/mini/window/sdk/bg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/a;->b(Lcom/alipay/android/mini/window/sdk/a;)Lcom/alipay/android/mini/window/sdk/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v1}, Lcom/alipay/android/mini/window/sdk/ak;->b()Lcom/alipay/android/mini/uielement/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/bg;->a(Lcom/alipay/android/mini/uielement/c;)V

    .line 309
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/c;->d:Lcom/alipay/android/mini/window/sdk/a;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/a;->b(Lcom/alipay/android/mini/window/sdk/a;)Lcom/alipay/android/mini/window/sdk/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/sdk/bg;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
