.class Lcom/alipay/android/mini/window/sdk/aw;
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
    .line 261
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/aw;->b:Lcom/alipay/android/mini/window/sdk/ar;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/aw;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v3

    .line 268
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/aw;->a:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alipay/android/app/exception/FailOperatingException;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/aw;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    sget-boolean v2, Lcom/alipay/android/app/pay/b;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/aw;->a:Ljava/lang/Exception;

    instance-of v2, v2, Lcom/alipay/android/app/exception/AppErrorException;

    if-eqz v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/aw;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 276
    sget-boolean v4, Lcom/alipay/android/app/pay/b;->g:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 277
    const-string v0, "mini_debug_app_error"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    :goto_1
    const v0, 0x104000a

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/aw;->b:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Lr/a;

    const/4 v5, 0x0

    sget-object v6, Lr/a;->d:Lr/a;

    aput-object v6, v4, v5

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    .line 287
    return-void

    .line 279
    :cond_1
    if-eqz v2, :cond_2

    .line 280
    const-string v0, "mini_app_error"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
