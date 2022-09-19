.class Lcom/alipay/android/mini/uielement/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/m;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/m;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/m;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/m;->c:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/m;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/m;->c:Lcom/alipay/android/mini/uielement/f;

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/m;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/uielement/m;->a(Ljava/lang/Object;[Lr/a;)V

    .line 174
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/m;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    goto :goto_0
.end method
