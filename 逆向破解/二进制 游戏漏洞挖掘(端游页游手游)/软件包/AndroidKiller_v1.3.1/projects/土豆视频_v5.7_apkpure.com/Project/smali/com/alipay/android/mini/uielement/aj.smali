.class Lcom/alipay/android/mini/uielement/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    instance-of v0, v0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/widget/EditText;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->d(Lcom/alipay/android/mini/uielement/z;)Ls/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v3}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ls/b;->a(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)Ls/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;Ls/b;)Ls/b;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->d(Lcom/alipay/android/mini/uielement/z;)Ls/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->e(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    iget-boolean v4, v4, Lcom/alipay/android/mini/uielement/z;->a:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Ls/b;->a(Landroid/view/View;Landroid/app/Activity;ZZ)V

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aj;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/widget/EditText;)V

    goto :goto_0
.end method
