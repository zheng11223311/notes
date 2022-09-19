.class public Lcom/alipay/android/mini/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/android/mini/widget/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/widget/f;-><init>(Lcom/alipay/android/mini/widget/e;)V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/e;->b:Landroid/text/TextWatcher;

    .line 19
    iput-object p1, p0, Lcom/alipay/android/mini/widget/e;->a:Landroid/widget/EditText;

    .line 20
    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/e;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/e;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/e;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    return-void
.end method
