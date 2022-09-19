.class Lcom/alipay/android/mini/uielement/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    sget-object v1, Lr/a;->t:Lr/a;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Ljava/lang/Object;Lr/a;)V

    .line 674
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->f(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->f(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->b(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 683
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/al;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method
