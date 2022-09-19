.class public Lio/rong/message/VoiceMessageHandler;
.super Lio/rong/imlib/model/MessageContent$MessageHandler;
.source "VoiceMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/model/MessageContent$MessageHandler",
        "<",
        "Lio/rong/message/VoiceMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final VOICE_PATH:Ljava/lang/String; = "/voice/"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lio/rong/imlib/model/MessageContent$MessageHandler;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private static obtainVoiceUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/NativeClient;->getNativeInstance()Lio/rong/imlib/NativeClient;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/NativeClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 85
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

    .line 86
    .local v2, "uri":Landroid/net/Uri;
    return-object v2
.end method

.method private static saveFile([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v1    # "file":Ljava/io/File;
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 76
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 77
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 78
    return-object v1
.end method


# virtual methods
.method public bridge synthetic afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/model/Message;
    .param p2, "x1"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 18
    check-cast p2, Lio/rong/message/VoiceMessage;

    .end local p2    # "x1":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2}, Lio/rong/message/VoiceMessageHandler;->afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/VoiceMessage;)V

    return-void
.end method

.method public afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/VoiceMessage;)V
    .locals 7
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "model"    # Lio/rong/message/VoiceMessage;

    .prologue
    .line 27
    invoke-virtual {p0}, Lio/rong/message/VoiceMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lio/rong/message/VoiceMessageHandler;->obtainVoiceUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 28
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".amr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p2}, Lio/rong/message/VoiceMessage;->getBase64()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 32
    invoke-virtual {p2}, Lio/rong/message/VoiceMessage;->getBase64()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 35
    .local v0, "data":[B
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/voice/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lio/rong/message/VoiceMessageHandler;->saveFile([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 41
    .end local v0    # "data":[B
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2, v5}, Lio/rong/message/VoiceMessage;->setUri(Landroid/net/Uri;)V

    .line 42
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lio/rong/message/VoiceMessage;->setBase64(Ljava/lang/String;)V

    .line 43
    return-void

    .line 36
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/Message;
    .param p2, "x1"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 18
    check-cast p2, Lio/rong/message/VoiceMessage;

    .end local p2    # "x1":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2}, Lio/rong/message/VoiceMessageHandler;->beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/VoiceMessage;)Z

    move-result v0

    return v0
.end method

.method public beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/VoiceMessage;)Z
    .locals 8
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "model"    # Lio/rong/message/VoiceMessage;

    .prologue
    .line 48
    invoke-virtual {p0}, Lio/rong/message/VoiceMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lio/rong/message/VoiceMessageHandler;->obtainVoiceUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 50
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p2}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lio/rong/common/FileUtils;->getByteFromUri(Landroid/net/Uri;)[B

    move-result-object v5

    .line 52
    .local v5, "voiceData":[B
    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "base64":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lio/rong/message/VoiceMessage;->setBase64(Ljava/lang/String;)V

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".amr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/voice/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lio/rong/message/VoiceMessageHandler;->saveFile([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Lio/rong/message/VoiceMessage;->setUri(Landroid/net/Uri;)V

    .line 65
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
