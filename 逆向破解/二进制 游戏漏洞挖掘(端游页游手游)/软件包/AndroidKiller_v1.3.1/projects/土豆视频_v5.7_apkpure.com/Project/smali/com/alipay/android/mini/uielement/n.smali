.class Lcom/alipay/android/mini/uielement/n;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/m;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/m;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
