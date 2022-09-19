.class Lcom/alipay/android/mini/window/sdk/ay;
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
    .line 305
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ay;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 309
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 310
    const-string v1, "mini_net_error"

    invoke-static {v1}, Lj/i;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v1, "mini_redo"

    invoke-static {v1}, Lj/i;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ay;->a:Lcom/alipay/android/mini/window/sdk/ar;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v7, [Lr/a;

    sget-object v6, Lr/a;->b:Lr/a;

    aput-object v6, v4, v8

    new-array v6, v7, [Lr/a;

    sget-object v7, Lr/a;->i:Lr/a;

    aput-object v7, v6, v8

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    .line 318
    return-void
.end method
