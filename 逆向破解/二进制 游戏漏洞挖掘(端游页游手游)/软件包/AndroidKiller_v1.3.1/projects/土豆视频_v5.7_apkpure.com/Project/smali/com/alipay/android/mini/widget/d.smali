.class Lcom/alipay/android/mini/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:I

.field final synthetic f:Lcom/alipay/android/mini/widget/c;

.field private g:[C

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    iput-object p1, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/alipay/android/mini/widget/d;->a:I

    .line 40
    iput v1, p0, Lcom/alipay/android/mini/widget/d;->b:I

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/d;->c:Z

    .line 42
    iput v1, p0, Lcom/alipay/android/mini/widget/d;->d:I

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    .line 45
    iput v1, p0, Lcom/alipay/android/mini/widget/d;->e:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/d;->c:Z

    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/c;->b(Lcom/alipay/android/mini/widget/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/d;->d:I

    move v0, v1

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 82
    iget-object v2, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/c;->a(Lcom/alipay/android/mini/widget/c;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    move v0, v1

    move v2, v1

    .line 91
    :goto_1
    iget-object v4, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 92
    iget-object v4, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v4}, Lcom/alipay/android/mini/widget/c;->a(Lcom/alipay/android/mini/widget/c;)I

    move-result v4

    if-eq v2, v4, :cond_2

    iget-object v4, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v4}, Lcom/alipay/android/mini/widget/c;->a(Lcom/alipay/android/mini/widget/c;)I

    move-result v4

    sub-int v4, v2, v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_3

    .line 93
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 96
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_4
    iget v2, p0, Lcom/alipay/android/mini/widget/d;->e:I

    if-le v0, v2, :cond_5

    .line 100
    iget v2, p0, Lcom/alipay/android/mini/widget/d;->d:I

    iget v3, p0, Lcom/alipay/android/mini/widget/d;->e:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/mini/widget/d;->d:I

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alipay/android/mini/widget/d;->g:[C

    .line 104
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/mini/widget/d;->g:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget v2, p0, Lcom/alipay/android/mini/widget/d;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_8

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/mini/widget/d;->d:I

    .line 112
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v2}, Lcom/alipay/android/mini/widget/c;->b(Lcom/alipay/android/mini/widget/c;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/c;->b(Lcom/alipay/android/mini/widget/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 114
    iget v2, p0, Lcom/alipay/android/mini/widget/d;->d:I

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 115
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/d;->c:Z

    .line 117
    :cond_7
    return-void

    .line 108
    :cond_8
    iget v2, p0, Lcom/alipay/android/mini/widget/d;->d:I

    if-gez v2, :cond_6

    .line 109
    iput v1, p0, Lcom/alipay/android/mini/widget/d;->d:I

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/widget/d;->a:I

    .line 51
    iget-object v1, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 54
    :cond_0
    iput v0, p0, Lcom/alipay/android/mini/widget/d;->e:I

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 56
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 57
    iget v1, p0, Lcom/alipay/android/mini/widget/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/mini/widget/d;->e:I

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/d;->b:I

    .line 66
    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->h:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget v0, p0, Lcom/alipay/android/mini/widget/d;->b:I

    iget v1, p0, Lcom/alipay/android/mini/widget/d;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/widget/d;->b:I

    iget-object v1, p0, Lcom/alipay/android/mini/widget/d;->f:Lcom/alipay/android/mini/widget/c;

    invoke-static {v1}, Lcom/alipay/android/mini/widget/c;->a(Lcom/alipay/android/mini/widget/c;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/d;->c:Z

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/d;->c:Z

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/d;->c:Z

    goto :goto_0
.end method
