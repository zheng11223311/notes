.class public Lcom/youtu/apps/image/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/image/ImageCache;
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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 233
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 234
    invoke-static {}, Lcom/youtu/apps/image/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 235
    const/16 v0, 0x46

    iput v0, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->compressQuality:I

    .line 236
    iput-boolean v1, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 237
    iput-boolean v1, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 241
    iput-object p1, p0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->uniqueName:Ljava/lang/String;

    .line 242
    return-void
.end method
