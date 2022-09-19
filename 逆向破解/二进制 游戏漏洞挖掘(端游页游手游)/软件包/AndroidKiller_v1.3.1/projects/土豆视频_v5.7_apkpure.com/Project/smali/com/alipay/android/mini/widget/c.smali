.class public final Lcom/alipay/android/mini/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/alipay/android/mini/widget/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/widget/d;-><init>(Lcom/alipay/android/mini/widget/c;)V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/c;->c:Landroid/text/TextWatcher;

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/mini/widget/c;->a:I

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/c;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alipay/android/mini/widget/c;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/widget/c;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/mini/widget/c;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/mini/widget/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/widget/EditText;I)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/mini/widget/c;->a(Landroid/widget/EditText;IZ)V

    .line 204
    return-void
.end method

.method public a(Landroid/widget/EditText;IZ)V
    .locals 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/android/mini/widget/c;->b:Landroid/widget/EditText;

    .line 208
    iput p2, p0, Lcom/alipay/android/mini/widget/c;->a:I

    .line 209
    iget-object v0, p0, Lcom/alipay/android/mini/widget/c;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/c;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    return-void
.end method
