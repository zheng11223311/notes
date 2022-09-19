.class Lcom/alipay/android/mini/uielement/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/ar;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/ar;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/as;->a:Lcom/alipay/android/mini/uielement/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/as;->a:Lcom/alipay/android/mini/uielement/ar;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/ar;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/as;->a:Lcom/alipay/android/mini/uielement/ar;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/as;->a:Lcom/alipay/android/mini/uielement/ar;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/uielement/ar;->a(Ljava/lang/Object;[Lr/a;)V

    .line 70
    :cond_0
    return-void
.end method
