.class Lcom/alipay/android/mini/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/view/View;Z)V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->b(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->c(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    goto :goto_0
.end method
