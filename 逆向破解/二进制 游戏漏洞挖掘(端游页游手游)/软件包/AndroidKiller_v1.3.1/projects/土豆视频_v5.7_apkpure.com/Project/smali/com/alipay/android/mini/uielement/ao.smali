.class Lcom/alipay/android/mini/uielement/ao;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/an;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/an;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ao;->a:Lcom/alipay/android/mini/uielement/an;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ao;->a:Lcom/alipay/android/mini/uielement/an;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/an;->a(Lcom/alipay/android/mini/uielement/an;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ao;->a:Lcom/alipay/android/mini/uielement/an;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/an;->a(Lcom/alipay/android/mini/uielement/an;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
