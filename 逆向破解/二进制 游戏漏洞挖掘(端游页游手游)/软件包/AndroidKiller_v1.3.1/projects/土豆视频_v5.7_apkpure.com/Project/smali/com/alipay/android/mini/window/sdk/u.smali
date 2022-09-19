.class Lcom/alipay/android/mini/window/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->h(Lcom/alipay/android/mini/window/sdk/l;)Lc/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a;->c()V

    .line 583
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "confirm_title"

    invoke-static {v2}, Lj/i;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v3}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "mini_redo"

    invoke-static {v4}, Lj/i;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/mini/window/sdk/v;

    invoke-direct {v4, p0}, Lcom/alipay/android/mini/window/sdk/v;-><init>(Lcom/alipay/android/mini/window/sdk/u;)V

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v5}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/mini/window/sdk/w;

    invoke-direct {v6, p0}, Lcom/alipay/android/mini/window/sdk/w;-><init>(Lcom/alipay/android/mini/window/sdk/u;)V

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/mini/widget/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 612
    return-void
.end method
