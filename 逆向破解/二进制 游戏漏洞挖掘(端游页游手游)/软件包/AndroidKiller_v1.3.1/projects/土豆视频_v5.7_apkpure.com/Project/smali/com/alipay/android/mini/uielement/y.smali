.class Lcom/alipay/android/mini/uielement/y;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alipay/android/mini/uielement/w;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/w;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/y;->b:Lcom/alipay/android/mini/uielement/w;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/y;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/y;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/y;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
