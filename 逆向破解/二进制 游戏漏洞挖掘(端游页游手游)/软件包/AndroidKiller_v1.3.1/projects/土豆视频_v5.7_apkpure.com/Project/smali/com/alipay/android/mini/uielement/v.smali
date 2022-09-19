.class Lcom/alipay/android/mini/uielement/v;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/mini/uielement/u;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/u;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/v;->b:Lcom/alipay/android/mini/uielement/u;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/v;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 73
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
