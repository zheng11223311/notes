.class Lcom/alipay/android/mini/uielement/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->requestFocus()Z

    .line 194
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->b(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/c;->a()V

    .line 195
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 196
    return-void
.end method
