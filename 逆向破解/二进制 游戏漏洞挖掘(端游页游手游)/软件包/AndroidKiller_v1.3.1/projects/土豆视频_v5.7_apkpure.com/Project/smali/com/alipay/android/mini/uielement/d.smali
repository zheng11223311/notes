.class Lcom/alipay/android/mini/uielement/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/c;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/d;->a:Lcom/alipay/android/mini/uielement/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/d;->a:Lcom/alipay/android/mini/uielement/c;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/c;->c:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/d;->a:Lcom/alipay/android/mini/uielement/c;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/c;->c:Lcom/alipay/android/mini/uielement/f;

    .line 277
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/d;->a:Lcom/alipay/android/mini/uielement/c;

    invoke-virtual {v1, p0, v0}, Lcom/alipay/android/mini/uielement/c;->a(Ljava/lang/Object;[Lr/a;)V

    .line 282
    :cond_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/d;->a:Lcom/alipay/android/mini/uielement/c;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    goto :goto_0
.end method
