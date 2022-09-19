.class Lcom/corncop/capricornus/zip/ZipEntryUtil;
.super Ljava/lang/Object;
.source "ZipEntryUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-static {p1, p2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 109
    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 110
    return-void
.end method

.method static copy(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p0, "original"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method static copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 6
    .param p0, "original"    # Ljava/util/zip/ZipEntry;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/util/zip/ZipEntry;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "newName":Ljava/lang/String;
    :cond_0
    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "copy":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 54
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 55
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 58
    :cond_4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 60
    return-object v0
.end method

.method static copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V
    .locals 1
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;Z)V

    .line 75
    return-void
.end method

.method static copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;Z)V
    .locals 4
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "preserveTimestamps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copy(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 90
    .local v0, "copy":Ljava/util/zip/ZipEntry;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 91
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1, p2}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->addEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    .line 92
    return-void

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method static fromFile(Ljava/lang/String;Ljava/io/File;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 120
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 126
    invoke-static {}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->getDefaultStategy()Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;->getPermissions(Ljava/io/File;)Lcom/corncop/capricornus/zip/ZTFilePermissions;

    move-result-object v0

    .line 127
    .local v0, "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    if-eqz v0, :cond_1

    .line 128
    invoke-static {v1, v0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->setZTFilePermissions(Ljava/util/zip/ZipEntry;Lcom/corncop/capricornus/zip/ZTFilePermissions;)Z

    .line 130
    :cond_1
    return-object v1
.end method

.method private static getFirstAsiExtraField(Ljava/util/List;)Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/extra/ZipExtraField;",
            ">;)",
            "Lcom/corncop/capricornus/zip/extra/AsiExtraField;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    .line 185
    .local v1, "field":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    instance-of v3, v1, Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 186
    check-cast v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    goto :goto_0

    .line 189
    .end local v1    # "field":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    :cond_1
    return-object v0
.end method

.method static getZTFilePermissions(Ljava/util/zip/ZipEntry;)Lcom/corncop/capricornus/zip/ZTFilePermissions;
    .locals 6
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v5

    invoke-static {v5}, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->parse([B)Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->getFirstAsiExtraField(Ljava/util/List;)Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    move-result-object v0

    .line 171
    .local v0, "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getMode()I

    move-result v5

    and-int/lit16 v2, v5, 0x1ff

    .line 173
    .local v2, "mode":I
    invoke-static {v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->fromPosixFileMode(I)Lcom/corncop/capricornus/zip/ZTFilePermissions;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 175
    .end local v2    # "mode":I
    :cond_0
    return-object v3

    .line 177
    .end local v0    # "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    :catch_0
    move-exception v4

    .line 178
    .local v4, "ze":Ljava/util/zip/ZipException;
    new-instance v5, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v5, v4}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method static setZTFilePermissions(Ljava/util/zip/ZipEntry;Lcom/corncop/capricornus/zip/ZTFilePermissions;)Z
    .locals 4
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "permissions"    # Lcom/corncop/capricornus/zip/ZTFilePermissions;

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v3

    invoke-static {v3}, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->parse([B)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->getFirstAsiExtraField(Ljava/util/List;)Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    move-result-object v0

    .line 145
    .local v0, "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    .end local v0    # "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    invoke-direct {v0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;-><init>()V

    .line 147
    .restart local v0    # "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->setDirectory(Z)V

    .line 151
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->toPosixFileMode(Lcom/corncop/capricornus/zip/ZTFilePermissions;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->setMode(I)V

    .line 152
    invoke-static {v1}, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->mergeLocalFileDataData(Ljava/util/List;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/zip/ZipEntry;->setExtra([B)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v3, 0x1

    .line 156
    .end local v0    # "asiExtraField":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    :goto_0
    return v3

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "ze":Ljava/util/zip/ZipException;
    const/4 v3, 0x0

    goto :goto_0
.end method
