.class public Lcom/baseproject/image/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseproject/image/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public clearDiskCacheOnStart:Z

.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public memCacheSize:I

.field public memoryCacheEnabled:Z

.field public uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 238
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 239
    invoke-static {}, Lcom/baseproject/image/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 240
    const/16 v0, 0x46

    iput v0, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->compressQuality:I

    .line 241
    iput-boolean v1, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 242
    iput-boolean v1, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 246
    iput-object p1, p0, Lcom/baseproject/image/ImageCache$ImageCacheParams;->uniqueName:Ljava/lang/String;

    .line 247
    return-void
.end method
