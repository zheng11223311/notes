.class Lcom/alipay/android/mini/uielement/l;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/mini/uielement/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/k;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/l;->b:Lcom/alipay/android/mini/uielement/k;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/l;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->b:Lcom/alipay/android/mini/uielement/k;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/k;->a(Lcom/alipay/android/mini/uielement/k;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->b:Lcom/alipay/android/mini/uielement/k;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/k;->a(Lcom/alipay/android/mini/uielement/k;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->b:Lcom/alipay/android/mini/uielement/k;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/k;->a(Lcom/alipay/android/mini/uielement/k;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->b:Lcom/alipay/android/mini/uielement/k;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/k;->a(Lcom/alipay/android/mini/uielement/k;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
