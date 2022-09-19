.class public Lio/rong/message/LocationMessageHandler;
.super Lio/rong/imlib/model/MessageContent$MessageHandler;
.source "LocationMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/model/MessageContent$MessageHandler",
        "<",
        "Lio/rong/message/LocationMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCATION_PATH:Ljava/lang/String; = "/location/"

.field private static final THUMB_COMPRESSED_QUALITY:I = 0x28

.field private static final THUMB_COMPRESSED_SIZE:I = 0xf0


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lio/rong/imlib/model/MessageContent$MessageHandler;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private static obtainLocationUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Lio/rong/imlib/NativeClient;->getNativeInstance()Lio/rong/imlib/NativeClient;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/NativeClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "userId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/location/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, "uri":Landroid/net/Uri;
    return-object v2
.end method


# virtual methods
.method public bridge synthetic afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/model/Message;
    .param p2, "x1"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 21
    check-cast p2, Lio/rong/message/LocationMessage;

    .end local p2    # "x1":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2}, Lio/rong/message/LocationMessageHandler;->afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/LocationMessage;)V

    return-void
.end method

.method public afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/LocationMessage;)V
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "content"    # Lio/rong/message/LocationMessage;

    .prologue
    .line 33
    invoke-virtual {p0}, Lio/rong/message/LocationMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/rong/message/LocationMessageHandler;->obtainLocationUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 34
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getBase64()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getBase64()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 41
    .local v0, "audio":[B
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lio/rong/common/FileUtils;->byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 42
    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    .line 43
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V

    .line 49
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 50
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lio/rong/message/LocationMessage;->setBase64(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    const-string v3, "getImgUri"

    const-string v4, "getImgUri is null"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/Message;
    .param p2, "x1"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 21
    check-cast p2, Lio/rong/message/LocationMessage;

    .end local p2    # "x1":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2}, Lio/rong/message/LocationMessageHandler;->beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/LocationMessage;)Z

    move-result v0

    return v0
.end method

.method public beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/LocationMessage;)Z
    .locals 11
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "content"    # Lio/rong/message/LocationMessage;

    .prologue
    .line 55
    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, "file":Ljava/io/File;
    invoke-virtual {p0}, Lio/rong/message/LocationMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lio/rong/message/LocationMessageHandler;->obtainLocationUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 59
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lio/rong/message/LocationMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v8

    const/16 v9, 0xf0

    const/16 v10, 0xf0

    invoke-static {v7, v8, v9, v10}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 64
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x28

    invoke-virtual {v1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 66
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 67
    .local v2, "data":[B
    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "base64":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lio/rong/message/LocationMessage;->setBase64(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lio/rong/common/FileUtils;->byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 70
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 72
    .end local v0    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p2, v7}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_1
    const/4 v7, 0x1

    .line 80
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_0
    return v7

    .line 75
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 80
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method
