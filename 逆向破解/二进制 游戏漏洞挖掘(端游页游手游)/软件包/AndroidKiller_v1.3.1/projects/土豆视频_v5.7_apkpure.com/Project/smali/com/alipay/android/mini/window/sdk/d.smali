.class Lcom/alipay/android/mini/window/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/a;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/d;->a:Lcom/alipay/android/mini/window/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/d;->a:Lcom/alipay/android/mini/window/sdk/a;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/ak;->a()Ljava/util/List;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 412
    instance-of v2, v0, Lcom/alipay/android/mini/uielement/c;

    if-eqz v2, :cond_0

    .line 413
    check-cast v0, Lcom/alipay/android/mini/uielement/c;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->d()V

    goto :goto_0

    .line 416
    :cond_1
    return-void
.end method
