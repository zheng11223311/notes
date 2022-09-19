.class Lcom/alipay/android/mini/uielement/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/az;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/az;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/az;->a(Lcom/alipay/android/mini/uielement/az;)Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/az;->b(Lcom/alipay/android/mini/uielement/az;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v3}, Lcom/alipay/android/mini/uielement/az;->b(Lcom/alipay/android/mini/uielement/az;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ls/b;->a(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)Ls/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/az;->a(Lcom/alipay/android/mini/uielement/az;Ls/b;)Ls/b;

    .line 247
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/az;->d(Lcom/alipay/android/mini/uielement/az;)Ls/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/az;->c(Lcom/alipay/android/mini/uielement/az;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/az;->b(Lcom/alipay/android/mini/uielement/az;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/bb;->a:Lcom/alipay/android/mini/uielement/az;

    iget-boolean v4, v4, Lcom/alipay/android/mini/uielement/az;->a:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Ls/b;->a(Landroid/view/View;Landroid/app/Activity;ZZ)V

    .line 248
    return-void
.end method
