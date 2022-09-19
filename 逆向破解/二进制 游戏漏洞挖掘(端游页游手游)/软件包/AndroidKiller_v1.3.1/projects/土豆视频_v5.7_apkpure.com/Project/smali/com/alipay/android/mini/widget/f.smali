.class Lcom/alipay/android/mini/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:I

.field final synthetic b:Lcom/alipay/android/mini/widget/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/e;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/android/mini/widget/f;->b:Lcom/alipay/android/mini/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/mini/widget/f;->b:Lcom/alipay/android/mini/widget/e;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/e;->a(Lcom/alipay/android/mini/widget/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 43
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/widget/f;->a:I

    if-le v0, v1, :cond_0

    .line 45
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 47
    :cond_0
    const/4 v0, 0x7

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/alipay/android/mini/widget/f;->a:I

    if-ge v0, v1, :cond_2

    .line 48
    const/4 v0, 0x6

    const-string v1, " "

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/mini/widget/f;->a:I

    if-ge v0, v1, :cond_1

    .line 50
    const/16 v0, 0xf

    const-string v1, " "

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/mini/widget/f;->b:Lcom/alipay/android/mini/widget/e;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/e;->a(Lcom/alipay/android/mini/widget/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/f;->a:I

    .line 31
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
