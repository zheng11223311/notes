.class Lcom/alipay/android/mini/uielement/bg;
.super Lk/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/bf;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/bf;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/bg;->a:Lcom/alipay/android/mini/uielement/bf;

    invoke-direct {p0}, Lk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bg;->a:Lcom/alipay/android/mini/uielement/bf;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/uielement/bf;->b:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bg;->a:Lcom/alipay/android/mini/uielement/bf;

    iput-object p1, v0, Lcom/alipay/android/mini/uielement/bf;->b:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
