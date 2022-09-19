.class Lcom/alipay/android/mini/uielement/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/w;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/w;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/uielement/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/uielement/w;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/w;->c:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/uielement/w;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/w;->c:Lcom/alipay/android/mini/uielement/f;

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    .line 67
    :goto_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 68
    sget-object v4, Lr/a;->C:Lr/a;

    if-ne v3, v4, :cond_1

    .line 69
    iget-object v3, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/uielement/w;

    invoke-static {v3}, Lcom/alipay/android/mini/uielement/w;->a(Lcom/alipay/android/mini/uielement/w;)V

    .line 67
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/uielement/w;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/w;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/uielement/w;

    invoke-virtual {v4, p0, v3}, Lcom/alipay/android/mini/uielement/w;->a(Ljava/lang/Object;Lr/a;)V

    goto :goto_2

    .line 75
    :cond_2
    return-void
.end method
