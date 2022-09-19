.class public final Lcom/alipay/android/mini/widget/g;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/alipay/android/mini/widget/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/widget/h;-><init>(Lcom/alipay/android/mini/widget/g;)V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/g;->c:Landroid/text/TextWatcher;

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/mini/widget/g;->a:I

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/g;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alipay/android/mini/widget/g;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/widget/g;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/mini/widget/g;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/android/mini/widget/g;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 219
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

.method public a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/mini/widget/g;->a(Landroid/widget/EditText;Z)V

    .line 208
    return-void
.end method

.method public a(Landroid/widget/EditText;Z)V
    .locals 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alipay/android/mini/widget/g;->b:Landroid/widget/EditText;

    .line 212
    iget-object v0, p0, Lcom/alipay/android/mini/widget/g;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/g;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    return-void
.end method
