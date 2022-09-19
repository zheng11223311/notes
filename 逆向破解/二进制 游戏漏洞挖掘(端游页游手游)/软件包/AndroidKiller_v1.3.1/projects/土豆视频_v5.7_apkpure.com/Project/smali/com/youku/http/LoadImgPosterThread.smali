.class public Lcom/youku/http/LoadImgPosterThread;
.super Ljava/lang/Thread;
.source "LoadImgPosterThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/http/LoadImgPosterThread$ImageCallBack;
    }
.end annotation


# static fields
.field private static final BUFFER_IO_SIZE:I = 0x1f40

.field public static final POSTER_DIR:Ljava/lang/String;

.field public static final POSTER_DIR_GAME:Ljava/lang/String;


# instance fields
.field private callBack:Lcom/youku/http/LoadImgPosterThread$ImageCallBack;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageDir:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "poster"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/http/LoadImgPosterThread;->POSTER_DIR:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "poster_game"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/http/LoadImgPosterThread;->POSTER_DIR_GAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imgDir"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/youku/http/LoadImgPosterThread;->mImageUrl:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/youku/http/LoadImgPosterThread;->mImageDir:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "bis"    # Ljava/io/InputStream;
    .param p2, "baos"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/16 v2, 0x100

    new-array v0, v2, [B

    .line 99
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_0

    .line 100
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method private loadImageFromUrl()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/youku/http/LoadImgPosterThread;->mImageUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 78
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x1f40

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 81
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {p0, v1, v2}, Lcom/youku/http/LoadImgPosterThread;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/http/LoadImgPosterThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    iget-object v4, p0, Lcom/youku/http/LoadImgPosterThread;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/youku/http/LoadImgPosterThread;->mImageUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/youku/util/Util;->getPosterImgUrlTrait(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/http/LoadImgPosterThread;->mImageDir:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/youku/http/LoadImgPosterThread;->saveBmpToSD(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/youku/http/LoadImgPosterThread;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    return-object v4

    .line 88
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "LoadPosterThread.loadImageFromUrl()"

    invoke-static {v4, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private saveBmpToSD(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "poster_dir"    # Ljava/lang/String;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 120
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 129
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 131
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    .local v5, "outStream":Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 134
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 135
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "LoadPosterThread.saveBmpToSD()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    .line 125
    .local v3, "fileCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 125
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 137
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "fileCount":I
    .end local v4    # "i":I
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "LoadPosterThread.saveBmpToSD()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "LoadPosterThread.saveBmpToSD()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/youku/http/LoadImgPosterThread;->loadImageFromUrl()Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Lcom/youku/http/LoadImgPosterThread;->callBack:Lcom/youku/http/LoadImgPosterThread$ImageCallBack;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/youku/http/LoadImgPosterThread;->callBack:Lcom/youku/http/LoadImgPosterThread$ImageCallBack;

    iget-object v1, p0, Lcom/youku/http/LoadImgPosterThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/youku/http/LoadImgPosterThread$ImageCallBack;->imageLoaded(Landroid/graphics/Bitmap;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setImageCallBack(Lcom/youku/http/LoadImgPosterThread$ImageCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/youku/http/LoadImgPosterThread$ImageCallBack;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/http/LoadImgPosterThread;->callBack:Lcom/youku/http/LoadImgPosterThread$ImageCallBack;

    .line 63
    return-void
.end method
