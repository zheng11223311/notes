.class Lcom/alipay/android/mini/uielement/ac;
.super Lr/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Lr/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 749
    :cond_0
    return-void
.end method
