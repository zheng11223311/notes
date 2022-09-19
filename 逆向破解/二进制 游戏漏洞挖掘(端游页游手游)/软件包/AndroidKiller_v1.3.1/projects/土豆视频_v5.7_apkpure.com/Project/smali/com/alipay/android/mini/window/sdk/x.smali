.class Lcom/alipay/android/mini/window/sdk/x;
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
    .line 624
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 627
    iget-object v7, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "confirm_title"

    invoke-static {v2}, Lj/i;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v2}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mini_canel_install_wallet"

    invoke-static {v3}, Lj/i;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v3}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/mini/window/sdk/y;

    invoke-direct {v4, p0}, Lcom/alipay/android/mini/window/sdk/y;-><init>(Lcom/alipay/android/mini/window/sdk/x;)V

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v5}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/mini/window/sdk/z;

    invoke-direct {v6, p0}, Lcom/alipay/android/mini/window/sdk/z;-><init>(Lcom/alipay/android/mini/window/sdk/x;)V

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/mini/widget/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 671
    return-void
.end method
