.class Lcom/alipay/android/mini/uielement/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/a;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/a;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/a;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/a;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/a;->a(Lcom/alipay/android/mini/uielement/a;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v2

    invoke-static {v2}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/a;->a(Ljava/lang/Object;[Lr/a;)V

    .line 208
    return-void
.end method
