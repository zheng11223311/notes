.class Lcom/alipay/android/mini/window/sdk/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/ar;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/ar;I)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/av;->b:Lcom/alipay/android/mini/window/sdk/ar;

    iput p2, p0, Lcom/alipay/android/mini/window/sdk/av;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/av;->b:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/av;->b:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/ar;->c(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/k;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/mini/window/sdk/av;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/mini/window/sdk/j;->a(Lcom/alipay/android/mini/window/sdk/k;Lb/l;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    const-string v2, "main thread crash"

    invoke-virtual {v1, v0, v2}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
