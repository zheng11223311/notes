.class Lcom/alipay/android/mini/window/sdk/e;
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
    .line 422
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/e;->a:Lcom/alipay/android/mini/window/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/e;->a:Lcom/alipay/android/mini/window/sdk/a;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/ak;->b()Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->b()V

    .line 430
    :cond_0
    return-void
.end method
