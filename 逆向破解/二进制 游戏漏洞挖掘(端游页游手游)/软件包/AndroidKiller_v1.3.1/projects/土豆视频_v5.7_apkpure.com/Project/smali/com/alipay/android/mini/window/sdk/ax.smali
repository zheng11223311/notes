.class Lcom/alipay/android/mini/window/sdk/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/ar;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/ar;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ax;->b:Lcom/alipay/android/mini/window/sdk/ar;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/ax;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 296
    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ax;->b:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ax;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Lr/a;

    const/4 v5, 0x0

    sget-object v6, Lr/a;->b:Lr/a;

    aput-object v6, v4, v5

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    .line 300
    return-void
.end method
