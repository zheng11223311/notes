.class Lcom/alipay/android/mini/window/sdk/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/k;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/mini/window/sdk/ar;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/k;I)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/au;->c:Lcom/alipay/android/mini/window/sdk/ar;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/au;->a:Lcom/alipay/android/mini/window/sdk/k;

    iput p3, p0, Lcom/alipay/android/mini/window/sdk/au;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/au;->c:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/au;->a:Lcom/alipay/android/mini/window/sdk/k;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/mini/window/sdk/au;->b:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/mini/window/sdk/j;->a(Lcom/alipay/android/mini/window/sdk/k;Lb/l;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    const-string v2, "main thread crash"

    invoke-virtual {v1, v0, v2}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 196
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
