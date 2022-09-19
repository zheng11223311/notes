.class Lcom/alipay/android/mini/uielement/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$c;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/CustomEditText;

.field final synthetic b:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ab;->b:Lcom/alipay/android/mini/uielement/z;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/ab;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ab;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ab;->b:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ab;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 727
    return-void
.end method
