.class Lcom/alipay/android/mini/window/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/alipay/android/mini/window/sdk/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/h;Landroid/widget/EditText;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/i;->e:Lcom/alipay/android/mini/window/sdk/h;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/i;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/i;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/android/mini/window/sdk/i;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/alipay/android/mini/window/sdk/i;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/i;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/i;->e:Lcom/alipay/android/mini/window/sdk/h;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/h;->b(Lcom/alipay/android/mini/window/sdk/h;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/i;->e:Lcom/alipay/android/mini/window/sdk/h;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/h;->c(Lcom/alipay/android/mini/window/sdk/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/i;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Ls/b;->a(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)Ls/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/i;->e:Lcom/alipay/android/mini/window/sdk/h;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/h;->a(Lcom/alipay/android/mini/window/sdk/h;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/i;->b:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ls/b;->a(Landroid/view/View;Landroid/app/Activity;ZZ)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/i;->e:Lcom/alipay/android/mini/window/sdk/h;

    invoke-static {v0, v4}, Lcom/alipay/android/mini/window/sdk/h;->a(Lcom/alipay/android/mini/window/sdk/h;Z)Z

    .line 138
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/i;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/i;->e:Lcom/alipay/android/mini/window/sdk/h;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/h;->a(Lcom/alipay/android/mini/window/sdk/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/i;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/i;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_1
    return-void
.end method
