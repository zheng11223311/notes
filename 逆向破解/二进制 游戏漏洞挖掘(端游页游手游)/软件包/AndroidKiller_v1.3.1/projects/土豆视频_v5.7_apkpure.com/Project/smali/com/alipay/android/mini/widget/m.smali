.class Lcom/alipay/android/mini/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$c;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/android/mini/widget/m;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/mini/widget/m;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/android/mini/widget/m;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->c(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    .line 157
    return-void
.end method
