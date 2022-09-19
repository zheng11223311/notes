.class Lcom/alipay/android/mini/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->b(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/k;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->c(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
