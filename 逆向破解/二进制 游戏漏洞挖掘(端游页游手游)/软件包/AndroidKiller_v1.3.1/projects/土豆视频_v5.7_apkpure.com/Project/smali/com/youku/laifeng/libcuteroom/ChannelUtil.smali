.class public Lcom/youku/laifeng/libcuteroom/ChannelUtil;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# static fields
.field private static final CHANNEL_KEY:Ljava/lang/String; = "cztchannel"

.field private static final CHANNEL_VERSION_KEY:Ljava/lang/String; = "cztchannel_version"

.field private static final CPS_KEY:Ljava/lang/String; = "cztcps"

.field private static mCPS:Ljava/lang/String;

.field private static mChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InputStreamTOString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 260
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 262
    .local v1, "data":[B
    const/4 v0, -0x1

    .line 263
    .local v0, "count":I
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 264
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, ""

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 266
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v1, 0x0

    .line 267
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCPS(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "3550325730_57%7C350%7C82678%7C0___"

    invoke-static {p0, v0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getCPS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCPS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultCps"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mCPS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    sget-object p1, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mCPS:Ljava/lang/String;

    .line 88
    .end local p1    # "defaultCps":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 80
    .restart local p1    # "defaultCps":Ljava/lang/String;
    :cond_1
    const-string v0, "cztchannel"

    invoke-static {p0, v0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getCPSFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mCPS:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mCPS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    sget-object p1, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mCPS:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCPSBySharedPreferences(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 229
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 231
    .local v0, "currentVersionCode":I
    if-ne v0, v4, :cond_0

    .line 232
    const-string v3, ""

    .line 241
    :goto_0
    return-object v3

    .line 234
    :cond_0
    const-string v3, "cztchannel_version"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 235
    .local v2, "versionCodeSaved":I
    if-ne v2, v4, :cond_1

    .line 236
    const-string v3, ""

    goto :goto_0

    .line 238
    :cond_1
    if-eq v0, v2, :cond_2

    .line 239
    const-string v3, ""

    goto :goto_0

    .line 241
    :cond_2
    const-string v3, "cztcps"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getCPSFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelKey"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 144
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 145
    .local v11, "sourceDir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "META-INF/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "key":Ljava/lang/String;
    const-string v10, ""

    .line 147
    .local v10, "ret":Ljava/lang/String;
    const/4 v12, 0x0

    .line 149
    .local v12, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .local v13, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 151
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 152
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 153
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "entryName":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 155
    move-object v10, v7

    .line 156
    invoke-virtual {v13, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 157
    .local v8, "in":Ljava/io/InputStream;
    invoke-static {v8}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->InputStreamTOString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "content":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 159
    const-string v14, " "

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "contents":[Ljava/lang/String;
    array-length v14, v3

    if-lez v14, :cond_1

    .line 162
    const/4 v14, 0x1

    aget-object v10, v3, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "contents":[Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/InputStream;
    :cond_1
    if-eqz v13, :cond_6

    .line 173
    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    .line 180
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v10

    .line 174
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v14, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v14, :cond_3

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    move-object v12, v13

    .line 176
    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 168
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_1
    move-exception v4

    .line 169
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-boolean v14, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v14, :cond_4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    :cond_4
    if-eqz v12, :cond_2

    .line 173
    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 174
    :catch_2
    move-exception v4

    .line 175
    sget-boolean v14, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v14, :cond_2

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v12, :cond_5

    .line 173
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 176
    :cond_5
    :goto_3
    throw v14

    .line 174
    :catch_3
    move-exception v4

    .line 175
    .restart local v4    # "e":Ljava/io/IOException;
    sget-boolean v15, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v15, :cond_5

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 171
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 168
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v4

    move-object v12, v13

    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_6
    move-object v12, v13

    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "laifeng"

    invoke-static {p0, v0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultChannel"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    sget-object p1, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mChannel:Ljava/lang/String;

    .line 56
    .end local p1    # "defaultChannel":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 48
    .restart local p1    # "defaultChannel":Ljava/lang/String;
    :cond_1
    const-string v0, "cztchannel"

    invoke-static {p0, v0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getChannelFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mChannel:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object p1, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->mChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getChannelBySharedPreferences(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 199
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 200
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 201
    .local v0, "currentVersionCode":I
    if-ne v0, v4, :cond_0

    .line 202
    const-string v3, ""

    .line 211
    :goto_0
    return-object v3

    .line 204
    :cond_0
    const-string v3, "cztchannel_version"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 205
    .local v2, "versionCodeSaved":I
    if-ne v2, v4, :cond_1

    .line 206
    const-string v3, ""

    goto :goto_0

    .line 208
    :cond_1
    if-eq v0, v2, :cond_2

    .line 209
    const-string v3, ""

    goto :goto_0

    .line 211
    :cond_2
    const-string v3, "cztchannel"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getChannelFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelKey"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 98
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 99
    .local v11, "sourceDir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "META-INF/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "key":Ljava/lang/String;
    const-string v10, ""

    .line 101
    .local v10, "ret":Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .local v13, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 105
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 106
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 107
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "entryName":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 109
    move-object v10, v7

    .line 110
    invoke-virtual {v13, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 111
    .local v8, "in":Ljava/io/InputStream;
    invoke-static {v8}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->InputStreamTOString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "content":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 113
    const-string v14, " "

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "contents":[Ljava/lang/String;
    array-length v14, v3

    if-lez v14, :cond_1

    .line 116
    const/4 v14, 0x0

    aget-object v10, v3, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "contents":[Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/InputStream;
    :cond_1
    if-eqz v13, :cond_6

    .line 127
    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    .line 134
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v10

    .line 128
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 129
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v14, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v14, :cond_3

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    move-object v12, v13

    .line 130
    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 122
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_1
    move-exception v4

    .line 123
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-boolean v14, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v14, :cond_4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :cond_4
    if-eqz v12, :cond_2

    .line 127
    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 128
    :catch_2
    move-exception v4

    .line 129
    sget-boolean v14, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v14, :cond_2

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v12, :cond_5

    .line 127
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 130
    :cond_5
    :goto_3
    throw v14

    .line 128
    :catch_3
    move-exception v4

    .line 129
    .restart local v4    # "e":Ljava/io/IOException;
    sget-boolean v15, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v15, :cond_5

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 122
    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v4

    move-object v12, v13

    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v12    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_6
    move-object v12, v13

    .end local v13    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 254
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static saveCPSBySharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cps"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cztcps"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    return-void
.end method

.method private static saveChannelBySharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 189
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cztchannel"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v2, "cztchannel_version"

    invoke-static {p0}, Lcom/youku/laifeng/libcuteroom/ChannelUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method
