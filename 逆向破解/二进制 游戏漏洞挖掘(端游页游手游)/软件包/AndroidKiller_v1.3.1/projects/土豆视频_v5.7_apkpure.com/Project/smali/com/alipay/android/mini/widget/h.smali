.class Lcom/alipay/android/mini/widget/h;
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

.field final synthetic f:Lcom/alipay/android/mini/widget/g;

.field private g:[C

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/g;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    iput-object p1, p0, Lcom/alipay/android/mini/widget/h;->f:Lcom/alipay/android/mini/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/alipay/android/mini/widget/h;->a:I

    .line 39
    iput v1, p0, Lcom/alipay/android/mini/widget/h;->b:I

    .line 40
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/h;->c:Z

    .line 41
    iput v1, p0, Lcom/alipay/android/mini/widget/h;->d:I

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    .line 44
    iput v1, p0, Lcom/alipay/android/mini/widget/h;->e:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/h;->c:Z

    if-eqz v0, :cond_7

    .line 77
    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->f:Lcom/alipay/android/mini/widget/g;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/g;->b(Lcom/alipay/android/mini/widget/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/h;->d:I

    move v0, v1

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 81
    iget-object v2, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v1

    .line 90
    :goto_1
    iget-object v3, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 93
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 97
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_4
    iget v2, p0, Lcom/alipay/android/mini/widget/h;->e:I

    if-le v0, v2, :cond_5

    .line 101
    iget v2, p0, Lcom/alipay/android/mini/widget/h;->d:I

    iget v3, p0, Lcom/alipay/android/mini/widget/h;->e:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/mini/widget/h;->d:I

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alipay/android/mini/widget/h;->g:[C

    .line 105
    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/mini/widget/h;->g:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 106
    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget v2, p0, Lcom/alipay/android/mini/widget/h;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_8

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/mini/widget/h;->d:I

    .line 113
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alipay/android/mini/widget/h;->f:Lcom/alipay/android/mini/widget/g;

    invoke-static {v2}, Lcom/alipay/android/mini/widget/g;->b(Lcom/alipay/android/mini/widget/g;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->f:Lcom/alipay/android/mini/widget/g;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/g;->b(Lcom/alipay/android/mini/widget/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 116
    :try_start_0
    iget v2, p0, Lcom/alipay/android/mini/widget/h;->d:I

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_3
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/h;->c:Z

    .line 121
    :cond_7
    return-void

    .line 109
    :cond_8
    iget v2, p0, Lcom/alipay/android/mini/widget/h;->d:I

    if-gez v2, :cond_6

    .line 110
    iput v1, p0, Lcom/alipay/android/mini/widget/h;->d:I

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/widget/h;->a:I

    .line 50
    iget-object v1, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 53
    :cond_0
    iput v0, p0, Lcom/alipay/android/mini/widget/h;->e:I

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 55
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 56
    iget v1, p0, Lcom/alipay/android/mini/widget/h;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/mini/widget/h;->e:I

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/h;->b:I

    .line 65
    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget v0, p0, Lcom/alipay/android/mini/widget/h;->b:I

    iget v1, p0, Lcom/alipay/android/mini/widget/h;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/widget/h;->b:I

    iget-object v1, p0, Lcom/alipay/android/mini/widget/h;->f:Lcom/alipay/android/mini/widget/g;

    invoke-static {v1}, Lcom/alipay/android/mini/widget/g;->a(Lcom/alipay/android/mini/widget/g;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/h;->c:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/h;->c:Z

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/h;->c:Z

    goto :goto_0
.end method
