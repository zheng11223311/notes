.class public Lio/rong/message/FileMessageHandler;
.super Lio/rong/imlib/model/MessageContent$MessageHandler;
.source "FileMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/model/MessageContent$MessageHandler",
        "<",
        "Lio/rong/message/FileMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static COMPRESSED_QUALITY:I = 0x0

.field private static COMPRESSED_SIZE:I = 0x0

.field private static final IMAGE_LOCAL_PATH:Ljava/lang/String; = "/image/local/"

.field private static final IMAGE_THUMBNAIL_PATH:Ljava/lang/String; = "/image/thumbnail/"

.field private static THUMB_COMPRESSED_QUALITY:I

.field private static THUMB_COMPRESSED_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x3c0

    sput v0, Lio/rong/message/FileMessageHandler;->COMPRESSED_SIZE:I

    .line 30
    const/16 v0, 0x55

    sput v0, Lio/rong/message/FileMessageHandler;->COMPRESSED_QUALITY:I

    .line 32
    const/16 v0, 0xf0

    sput v0, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_SIZE:I

    .line 33
    const/16 v0, 0x1e

    sput v0, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_QUALITY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lio/rong/imlib/model/MessageContent$MessageHandler;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private static isImageFile([B)Z
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    array-length v3, p0

    invoke-static {p0, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 200
    goto :goto_0
.end method

.method private static obtainImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 184
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/NativeClient;->getNativeInstance()Lio/rong/imlib/NativeClient;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/NativeClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "userId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 187
    .local v2, "uri":Landroid/net/Uri;
    return-object v2
.end method


# virtual methods
.method public bridge synthetic afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/model/Message;
    .param p2, "x1"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 27
    check-cast p2, Lio/rong/message/FileMessage;

    .end local p2    # "x1":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2}, Lio/rong/message/FileMessageHandler;->afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/FileMessage;)V

    return-void
.end method

.method public afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/FileMessage;)V
    .locals 10
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "model"    # Lio/rong/message/FileMessage;

    .prologue
    .line 44
    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lio/rong/message/FileMessageHandler;->obtainImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    .line 46
    .local v7, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/image/thumbnail/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "thumb":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/image/local/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "local":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "localFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p2, v8}, Lio/rong/message/FileMessage;->setLocalUri(Landroid/net/Uri;)V

    .line 56
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v6, "thumbFile":Ljava/io/File;
    invoke-virtual {p2}, Lio/rong/message/FileMessage;->getBase64()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "data":[B
    :try_start_0
    invoke-virtual {p2}, Lio/rong/message/FileMessage;->getBase64()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    invoke-static {v0}, Lio/rong/message/FileMessageHandler;->isImageFile([B)Z

    move-result v8

    if-nez v8, :cond_1

    .line 69
    const-string v8, "afterDecodeMessage"

    const-string v9, "Not Image File!"

    invoke-static {p0, v8, v9}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "data":[B
    .end local v2    # "local":Ljava/lang/String;
    .end local v3    # "localFile":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "thumb":Ljava/lang/String;
    .end local v6    # "thumbFile":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 62
    .restart local v0    # "data":[B
    .restart local v2    # "local":Ljava/lang/String;
    .restart local v3    # "localFile":Ljava/io/File;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "thumb":Ljava/lang/String;
    .restart local v6    # "thumbFile":Ljava/io/File;
    .restart local v7    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 64
    const-string v8, "afterDecodeMessage"

    const-string v9, "Not Base64 Content!"

    invoke-static {p0, v8, v9}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {v0, v5, v4}, Lio/rong/common/FileUtils;->byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 74
    .end local v0    # "data":[B
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p2, v8}, Lio/rong/message/FileMessage;->setThumUri(Landroid/net/Uri;)V

    .line 77
    .end local v2    # "local":Ljava/lang/String;
    .end local v3    # "localFile":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "thumb":Ljava/lang/String;
    .end local v6    # "thumbFile":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lio/rong/message/FileMessage;->setBase64(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/Message;
    .param p2, "x1"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 27
    check-cast p2, Lio/rong/message/FileMessage;

    .end local p2    # "x1":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2}, Lio/rong/message/FileMessageHandler;->beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/FileMessage;)Z

    move-result v0

    return v0
.end method

.method public beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/FileMessage;)Z
    .locals 23
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "model"    # Lio/rong/message/FileMessage;

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lio/rong/message/FileMessageHandler;->obtainImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v18

    .line 83
    .local v18, "uri":Landroid/net/Uri;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".jpg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "name":Ljava/lang/String;
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    invoke-virtual/range {p0 .. p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 89
    .local v15, "resources":Landroid/content/res/Resources;
    :try_start_0
    const-string v19, "rc_image_quality"

    const-string v20, "integer"

    invoke-virtual/range {p0 .. p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    sput v19, Lio/rong/message/FileMessageHandler;->COMPRESSED_QUALITY:I

    .line 90
    const-string v19, "rc_image_size"

    const-string v20, "integer"

    invoke-virtual/range {p0 .. p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    sput v19, Lio/rong/message/FileMessageHandler;->COMPRESSED_SIZE:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    const-string v20, "file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 99
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/thumbnail/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 101
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/thumbnail/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setThumUri(Landroid/net/Uri;)V

    .line 102
    invoke-static {v8}, Lio/rong/common/FileUtils;->file2byte(Ljava/io/File;)[B

    move-result-object v5

    .line 103
    .local v5, "data":[B
    if-eqz v5, :cond_0

    .line 104
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setBase64(Ljava/lang/String;)V

    .line 141
    .end local v5    # "data":[B
    .end local v8    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    const-string v20, "file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 145
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/local/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 147
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/local/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setLocalUri(Landroid/net/Uri;)V

    .line 179
    .end local v8    # "file":Ljava/io/File;
    :cond_1
    :goto_2
    const/16 v19, 0x1

    return v19

    .line 91
    :catch_0
    move-exception v7

    .line 92
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 107
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v8    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, "thumbPath":Ljava/lang/String;
    const-string v19, "beforeEncodeMessage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Thumbnail not save yet! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    sget v20, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_SIZE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    sget v20, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_SIZE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 111
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v20

    sget v21, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_SIZE:I

    sget v22, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_SIZE:I

    invoke-static/range {v19 .. v22}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 115
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 116
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v20, Lio/rong/message/FileMessageHandler;->THUMB_COMPRESSED_QUALITY:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 118
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 119
    .restart local v5    # "data":[B
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setBase64(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 121
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/thumbnail/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0, v11}, Lio/rong/common/FileUtils;->byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 122
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/thumbnail/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setThumUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 135
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "data":[B
    .end local v13    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "thumbPath":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 136
    .local v7, "e":Ljava/io/IOException;
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 125
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v17    # "thumbPath":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v16, "src":Ljava/io/File;
    invoke-static/range {v16 .. v16}, Lio/rong/common/FileUtils;->file2byte(Ljava/io/File;)[B

    move-result-object v5

    .line 127
    .restart local v5    # "data":[B
    if-eqz v5, :cond_0

    .line 128
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setBase64(Ljava/lang/String;)V

    .line 129
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/thumbnail/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, "path":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v14, v11}, Lio/rong/common/FileUtils;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 131
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setThumUri(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 150
    .end local v5    # "data":[B
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "src":Ljava/io/File;
    .end local v17    # "thumbPath":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "localPath":Ljava/lang/String;
    invoke-static {v10, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 152
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    sget v20, Lio/rong/message/FileMessageHandler;->COMPRESSED_SIZE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_6

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    sget v20, Lio/rong/message/FileMessageHandler;->COMPRESSED_SIZE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->isFull()Z

    move-result v19

    if-nez v19, :cond_8

    .line 153
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/rong/message/FileMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v20

    sget v21, Lio/rong/message/FileMessageHandler;->COMPRESSED_SIZE:I

    sget v22, Lio/rong/message/FileMessageHandler;->COMPRESSED_SIZE:I

    invoke-static/range {v19 .. v22}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 157
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 158
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/local/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "dir":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_7

    .line 161
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_7
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 164
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :try_start_5
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v20, Lio/rong/message/FileMessageHandler;->COMPRESSED_QUALITY:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 167
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setLocalUri(Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 174
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "dir":Ljava/lang/String;
    .end local v10    # "localPath":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 175
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_3
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 170
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v10    # "localPath":Ljava/lang/String;
    :cond_8
    :try_start_6
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/image/local/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lio/rong/common/FileUtils;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 171
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/image/local/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setLocalUri(Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 174
    .end local v8    # "file":Ljava/io/File;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "dir":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto :goto_3
.end method
