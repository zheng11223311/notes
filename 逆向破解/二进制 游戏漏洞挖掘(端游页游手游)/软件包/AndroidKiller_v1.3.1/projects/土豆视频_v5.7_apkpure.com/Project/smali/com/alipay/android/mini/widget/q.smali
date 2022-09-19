.class Lcom/alipay/android/mini/widget/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/p;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/android/mini/widget/q;->a:Lcom/alipay/android/mini/widget/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/mini/widget/q;->a:Lcom/alipay/android/mini/widget/p;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/p;->a(Lcom/alipay/android/mini/widget/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/q;->a:Lcom/alipay/android/mini/widget/p;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/p;->a(Lcom/alipay/android/mini/widget/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/alipay/android/mini/widget/q;->a:Lcom/alipay/android/mini/widget/p;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/p;->a(Lcom/alipay/android/mini/widget/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 34
    :cond_0
    return-void
.end method
