.class Lcom/sea_monster/cache/SDK11;
.super Ljava/lang/Object;
.source "SDK11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addInBitmapOption(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method
