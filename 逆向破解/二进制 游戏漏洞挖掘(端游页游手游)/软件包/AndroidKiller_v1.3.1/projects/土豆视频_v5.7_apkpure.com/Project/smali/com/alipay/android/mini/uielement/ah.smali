.class Lcom/alipay/android/mini/uielement/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ah;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ah;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/ai;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ai;-><init>(Lcom/alipay/android/mini/uielement/ah;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ah;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/view/View;Z)V

    .line 323
    return-void
.end method
