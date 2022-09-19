.class Lcom/alipay/android/mini/uielement/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$c;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/ah;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/ah;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ai;->a:Lcom/alipay/android/mini/uielement/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ai;->a:Lcom/alipay/android/mini/uielement/ah;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/ah;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ai;->a:Lcom/alipay/android/mini/uielement/ah;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/ah;->a:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ai;->a:Lcom/alipay/android/mini/uielement/ah;

    iget-object v1, v1, Lcom/alipay/android/mini/uielement/ah;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 320
    return-void
.end method
