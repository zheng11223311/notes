.class Lcom/alipay/android/mini/uielement/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$a;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/ag;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 279
    if-eqz p2, :cond_3

    .line 280
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mini_text_color_gray"

    invoke-static {v2}, Lj/i;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setTextColor(I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    instance-of v0, v0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/widget/EditText;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->d(Lcom/alipay/android/mini/uielement/z;)Ls/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v3}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ls/b;->a(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)Ls/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;Ls/b;)Ls/b;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->d(Lcom/alipay/android/mini/uielement/z;)Ls/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ag;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    iget-boolean v4, v4, Lcom/alipay/android/mini/uielement/z;->a:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Ls/b;->a(Landroid/view/View;Landroid/app/Activity;ZZ)V

    .line 310
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    instance-of v0, v0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->d(Lcom/alipay/android/mini/uielement/z;)Ls/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->b:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->d(Lcom/alipay/android/mini/uielement/z;)Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->d()V

    goto :goto_0
.end method
