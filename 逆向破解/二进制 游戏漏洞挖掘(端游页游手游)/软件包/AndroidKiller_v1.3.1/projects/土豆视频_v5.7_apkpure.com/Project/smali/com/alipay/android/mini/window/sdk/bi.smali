.class Lcom/alipay/android/mini/window/sdk/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a$a;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/bg;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/bg;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bi;->b:Lcom/alipay/android/mini/window/sdk/bg;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/bi;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bi;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bi;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bi;->b:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/bg;->a(Lcom/alipay/android/mini/window/sdk/bg;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bi;->b:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/bg;->b(Lcom/alipay/android/mini/window/sdk/bg;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bi;->b:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/bg;->b(Lcom/alipay/android/mini/window/sdk/bg;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->b()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bi;->b:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-static {v0, v2}, Lcom/alipay/android/mini/window/sdk/bg;->a(Lcom/alipay/android/mini/window/sdk/bg;Landroid/view/View;)Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bi;->b:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-static {v0, v2}, Lcom/alipay/android/mini/window/sdk/bg;->a(Lcom/alipay/android/mini/window/sdk/bg;Landroid/app/Activity;)Landroid/app/Activity;

    .line 112
    return-void
.end method
