.class public Lcom/youku/http/LoadPosterThread;
.super Ljava/lang/Thread;
.source "LoadPosterThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/http/LoadPosterThread$ImageCallBack;
    }
.end annotation


# static fields
.field private static final BUFFER_IO_SIZE:I = 0x1f40


# instance fields
.field private callBack:Lcom/youku/http/LoadPosterThread$ImageCallBack;

.field private gallery:Lcom/youku/widget/YoukuGallery;

.field private p:Lcom/youku/vo/Poster;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Poster;Lcom/youku/http/LoadPosterThread$ImageCallBack;)V
    .locals 1
    .param p1, "p"    # Lcom/youku/vo/Poster;
    .param p2, "callBack"    # Lcom/youku/http/LoadPosterThread$ImageCallBack;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    .line 41
    iput-object p2, p0, Lcom/youku/http/LoadPosterThread;->callBack:Lcom/youku/http/LoadPosterThread$ImageCallBack;

    .line 42
    const-string v0, "LoadPosterThread"

    invoke-virtual {p0, v0}, Lcom/youku/http/LoadPosterThread;->setName(Ljava/lang/String;)V

    .line 43
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
    .line 113
    const/16 v2, 0x100

    new-array v0, v2, [B

    .line 115
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_0

    .line 116
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method private loadImageFromUrl(Lcom/youku/vo/Poster;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "p"    # Lcom/youku/vo/Poster;

    .prologue
    .line 73
    :try_start_0
    sget-object v9, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "names":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v7

    if-ge v6, v9, :cond_1

    .line 75
    invoke-static {p1}, Lcom/youku/util/Util;->getPosterImgUrlTrait(Lcom/youku/vo/Poster;)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "pic_name":Ljava/lang/String;
    aget-object v9, v7, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 107
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "i":I
    .end local v7    # "names":[Ljava/lang/String;
    .end local v8    # "pic_name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 74
    .restart local v6    # "i":I
    .restart local v7    # "names":[Ljava/lang/String;
    .restart local v8    # "pic_name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    .end local v6    # "i":I
    .end local v7    # "names":[Ljava/lang/String;
    .end local v8    # "pic_name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 86
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v5    # "e1":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/net/URL;

    iget-object v10, p1, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x1f40

    invoke-direct {v2, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 94
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1f40

    invoke-direct {v3, v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 97
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {p0, v2, v3}, Lcom/youku/http/LoadPosterThread;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/youku/util/Util;->getPosterImgUrlTrait(Lcom/youku/vo/Poster;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v9}, Lcom/youku/http/LoadPosterThread;->saveBmpToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 103
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "LoadPosterThread.loadImageFromUrl()"

    invoke-static {v9, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private saveBmpToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 130
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 131
    .local v2, "outStream":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 134
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "LoadPosterThread.saveBmpToSD()"

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "LoadPosterThread.saveBmpToSD()"

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LoadPosterThread.saveBmpToSD()"

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    const/4 v1, 0x1

    iput v1, v0, Lcom/youku/vo/Poster;->loadState:I

    .line 50
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    iget-object v1, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    invoke-direct {p0, v1}, Lcom/youku/http/LoadPosterThread;->loadImageFromUrl(Lcom/youku/vo/Poster;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    iget-object v1, v1, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->ot(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    iget-object v0, v0, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    const/4 v1, 0x0

    iput v1, v0, Lcom/youku/vo/Poster;->loadState:I

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    const/4 v1, 0x2

    iput v1, v0, Lcom/youku/vo/Poster;->loadState:I

    .line 57
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->callBack:Lcom/youku/http/LoadPosterThread$ImageCallBack;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/youku/http/LoadPosterThread;->callBack:Lcom/youku/http/LoadPosterThread$ImageCallBack;

    iget-object v1, p0, Lcom/youku/http/LoadPosterThread;->p:Lcom/youku/vo/Poster;

    iget-object v1, v1, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/http/LoadPosterThread$ImageCallBack;->imageLoaded(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.IMAGE_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
