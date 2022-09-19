.class final Lcom/alipay/android/mini/util/o;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alipay/android/mini/util/o;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/alipay/android/mini/util/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/android/mini/util/o;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/android/mini/util/o;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/o;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/mini/util/o;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
