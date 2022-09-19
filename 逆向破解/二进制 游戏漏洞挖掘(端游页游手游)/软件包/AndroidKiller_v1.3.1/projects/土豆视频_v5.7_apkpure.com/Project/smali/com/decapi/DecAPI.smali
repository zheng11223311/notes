.class public Lcom/decapi/DecAPI;
.super Ljava/lang/Object;
.source "DecAPI.java"


# static fields
.field private static lua:Ljava/lang/String;

.field private static mLuaState:Lcom/luajava/LuaState;

.field private static mTag:Ljava/lang/String;

.field private static service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "BGMUSIC"

    sput-object v0, Lcom/decapi/DecAPI;->mTag:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    sput-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    .line 31
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->openLibs()V

    .line 148
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/decapi/DecAPI;->service:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static doDec(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ciphertxt"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-static {p0}, Lcom/decapi/DecAPI;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->LdoString(Ljava/lang/String;)I

    .line 41
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v1, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "doDec"

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)V

    .line 43
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->pushNumber(D)V

    .line 46
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/luajava/LuaState;->pcall(III)I

    .line 48
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v1, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    .line 49
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doEnc(Ljava/io/InputStream;Ljava/lang/String;I)[B
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "plaintxt"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 55
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-static {p0}, Lcom/decapi/DecAPI;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->LdoString(Ljava/lang/String;)I

    .line 57
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v5, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "doEnc"

    invoke-virtual {v4, v5, v6}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)V

    .line 59
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {v4, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    .line 60
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {v4, p2}, Lcom/luajava/LuaState;->pushInteger(I)V

    .line 62
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/luajava/LuaState;->pcall(III)I

    .line 64
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v5, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "result"

    invoke-virtual {v4, v5, v6}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    .line 65
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const-string/jumbo v5, "result"

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "ciphertxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 69
    .local v1, "cipher_c":[C
    array-length v4, v1

    new-array v0, v4, [B

    .line 70
    .local v0, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 71
    aget-char v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-object v0
.end method

.method public static doEnc(Ljava/lang/String;I)[B
    .locals 8
    .param p0, "plaintxt"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    .line 110
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v5, Lcom/decapi/DecAPI;->lua:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->LdoString(Ljava/lang/String;)I

    .line 112
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v5, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "doEnc"

    invoke-virtual {v4, v5, v6}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)V

    .line 114
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {v4, p0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    .line 115
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    invoke-virtual {v4, p1}, Lcom/luajava/LuaState;->pushInteger(I)V

    .line 117
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/luajava/LuaState;->pcall(III)I

    .line 119
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    sget-object v5, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "result"

    invoke-virtual {v4, v5, v6}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    .line 120
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const-string/jumbo v5, "result"

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 122
    sget-object v4, Lcom/decapi/DecAPI;->mLuaState:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "ciphertxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 124
    .local v1, "cipher_c":[C
    array-length v4, v1

    new-array v0, v4, [B

    .line 125
    .local v0, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 126
    aget-char v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-object v0
.end method

.method public static getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "oip"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "flag"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&oip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&did="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ev=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    if-nez p5, :cond_0

    .line 100
    const-string v1, "&ctype=20&ep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/decapi/DecAPI;->doEnc(Ljava/lang/String;I)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    const-string v1, "&ctype=64&ep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getEncreyptStringInSingleThread(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "plaintxt"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 155
    new-instance v0, Lcom/decapi/DecAPI$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/decapi/DecAPI$1;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    .line 163
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/String;>;"
    sget-object v3, Lcom/decapi/DecAPI;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 165
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :goto_0
    return-object v3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 171
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 168
    :catch_1
    move-exception v1

    .line 169
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-class v2, Lcom/decapi/DecAPI;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/baseproject/R$raw;->aes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 82
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/decapi/DecAPI;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/decapi/DecAPI;->lua:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v2

    return-void

    .line 81
    .end local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 137
    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 138
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "LuaDemo"

    const-string v4, "Read file stream failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x0

    goto :goto_1
.end method
