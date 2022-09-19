.class public final Lcom/corncop/capricornus/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;,
        Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;,
        Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;,
        Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;,
        Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;,
        Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;,
        Lcom/corncop/capricornus/zip/ZipUtil$FileUnpacker;,
        Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPRESSION_LEVEL:I = -0x1

.field private static final PATH_SEPARATOR:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "ZipUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$400(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p1, "x1"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V

    return-void
.end method

.method public static addEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 1637
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$6;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$6;-><init>(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 1643
    return-void
.end method

.method public static addEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V
    .locals 7
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 1610
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_0
    const/4 v2, 0x0

    .line 1614
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-static {p0, v3}, Lcom/corncop/capricornus/zip/ZipUtil;->copyEntries(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 1616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 1617
    aget-object v4, p1, v1

    invoke-static {v4, v3}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1624
    :cond_1
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 1626
    .end local v1    # "i":I
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_1
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1624
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_3

    .line 1620
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_2
.end method

.method private static addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    .locals 2
    .param p0, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p1, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2301
    invoke-interface {p0}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 2302
    invoke-interface {p0}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2303
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 2305
    :try_start_0
    invoke-static {v0, p1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2311
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 2312
    return-void

    .line 2308
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public static addEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 1591
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$5;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$5;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 1597
    return-void
.end method

.method public static addEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V
    .locals 2
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 1579
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/corncop/capricornus/zip/ZipEntrySource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V

    .line 1580
    return-void
.end method

.method public static addEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 1525
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$3;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 1531
    return-void
.end method

.method public static addEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "destZip"    # Ljava/io/File;

    .prologue
    .line 1511
    new-instance v0, Lcom/corncop/capricornus/zip/FileSource;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p0, v0, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V

    .line 1512
    return-void
.end method

.method public static addEntry(Ljava/io/File;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 1560
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$4;-><init>(Ljava/io/File;Ljava/lang/String;[B)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 1566
    return-void
.end method

.method public static addEntry(Ljava/io/File;Ljava/lang/String;[BLjava/io/File;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "destZip"    # Ljava/io/File;

    .prologue
    .line 1546
    new-instance v0, Lcom/corncop/capricornus/zip/ByteSource;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ByteSource;-><init>(Ljava/lang/String;[B)V

    invoke-static {p0, v0, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V

    .line 1547
    return-void
.end method

.method public static addOrReplaceEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 2049
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$17;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$17;-><init>(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 2055
    return-void
.end method

.method public static addOrReplaceEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V
    .locals 8
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 2000
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZipUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' and adding/replacing entries "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_0
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZipUtil;->entriesByPath([Lcom/corncop/capricornus/zip/ZipEntrySource;)Ljava/util/Map;

    move-result-object v1

    .line 2005
    .local v1, "entryByPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntrySource;>;"
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2009
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Lcom/corncop/capricornus/zip/ZipUtil$16;

    invoke-direct {v5, v2, v1, v3}, Lcom/corncop/capricornus/zip/ZipUtil$16;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;)V

    invoke-static {p0, v5}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 2027
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/corncop/capricornus/zip/ZipEntrySource;

    .line 2028
    .local v4, "zipEntrySource":Lcom/corncop/capricornus/zip/ZipEntrySource;
    invoke-static {v4, v3}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2032
    .end local v2    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "zipEntrySource":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2035
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 2036
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    .line 2038
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 2032
    .restart local v2    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_1
    :try_start_3
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static archiveEquals(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;

    .prologue
    .line 2354
    :try_start_0
    invoke-static {p0, p1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->contentEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2355
    const/4 v1, 0x1

    .line 2370
    :cond_0
    :goto_0
    return v1

    .line 2358
    :cond_1
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ZipUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comparing archives \'{}\' and \'{}\'..., "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2361
    .local v2, "start":J
    invoke-static {p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->archiveEqualsInternal(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 2362
    .local v1, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 2363
    .local v4, "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 2364
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ZipUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Archives compared in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2368
    .end local v1    # "result":Z
    .end local v2    # "start":J
    .end local v4    # "time":J
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ZipUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not compare \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' and \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\':"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2370
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static archiveEqualsInternal(Ljava/io/File;Ljava/io/File;)Z
    .locals 14
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2375
    const/4 v6, 0x0

    .line 2376
    .local v6, "zf1":Ljava/util/zip/ZipFile;
    const/4 v8, 0x0

    .line 2378
    .local v8, "zf2":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2379
    .end local v6    # "zf1":Ljava/util/zip/ZipFile;
    .local v7, "zf1":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2382
    .end local v8    # "zf2":Ljava/util/zip/ZipFile;
    .local v9, "zf2":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->size()I

    move-result v11

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->size()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 2383
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "ZipUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number of entries changed ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2427
    :cond_0
    invoke-static {v7}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2428
    invoke-static {v9}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2433
    :goto_0
    return v10

    .line 2397
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 2398
    .local v2, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2399
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 2400
    .local v0, "e1":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2401
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 2404
    .local v1, "e2":Ljava/util/zip/ZipEntry;
    invoke-static {v5, v0, v1}, Lcom/corncop/capricornus/zip/ZipUtil;->metaDataEquals(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    .line 2427
    invoke-static {v7}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2428
    invoke-static {v9}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 2409
    :cond_2
    const/4 v3, 0x0

    .line 2410
    .local v3, "is1":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 2412
    .local v4, "is2":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 2413
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 2415
    invoke-static {v3, v4}, Lcom/corncop/capricornus/zip/commons/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2416
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "ZipUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entry \'{}\' content changed. path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2421
    :cond_3
    :try_start_5
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2422
    invoke-static {v4}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2427
    invoke-static {v7}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2428
    invoke-static {v9}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 2421
    :cond_4
    :try_start_6
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2422
    invoke-static {v4}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2427
    .end local v0    # "e1":Ljava/util/zip/ZipEntry;
    .end local v1    # "e2":Ljava/util/zip/ZipEntry;
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "is1":Ljava/io/InputStream;
    .end local v4    # "is2":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v8, v9

    .end local v9    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v8    # "zf2":Ljava/util/zip/ZipFile;
    move-object v6, v7

    .end local v7    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v6    # "zf1":Ljava/util/zip/ZipFile;
    :goto_2
    invoke-static {v6}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2428
    invoke-static {v8}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v10

    .line 2421
    .end local v6    # "zf1":Ljava/util/zip/ZipFile;
    .end local v8    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v0    # "e1":Ljava/util/zip/ZipEntry;
    .restart local v1    # "e2":Ljava/util/zip/ZipEntry;
    .restart local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "is1":Ljava/io/InputStream;
    .restart local v4    # "is2":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf2":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v10

    :try_start_7
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2422
    invoke-static {v4}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2427
    .end local v0    # "e1":Ljava/util/zip/ZipEntry;
    .end local v1    # "e2":Ljava/util/zip/ZipEntry;
    .end local v3    # "is1":Ljava/io/InputStream;
    .end local v4    # "is2":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2428
    invoke-static {v9}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2431
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "ZipUtil"

    const-string v11, "Archives are the same."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2427
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "zf1":Ljava/util/zip/ZipFile;
    .end local v9    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v6    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v8    # "zf2":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v10

    goto :goto_2

    .end local v6    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v7    # "zf1":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v10

    move-object v6, v7

    .end local v7    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v6    # "zf1":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static closeQuietly(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p0, "zf"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 2628
    if-eqz p0, :cond_0

    .line 2629
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :cond_0
    :goto_0
    return-void

    .line 2632
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static containsAnyEntry(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .local v3, "zf":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 114
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_0

    .line 115
    const/4 v4, 0x1

    .line 124
    invoke-static {v3}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    :goto_1
    return v4

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v4, 0x0

    .line 124
    invoke-static {v3}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_1

    .line 120
    .end local v1    # "i":I
    .end local v3    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v4

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "i":I
    .restart local v3    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 120
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v3    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static containsEntry(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .local v2, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 95
    :goto_0
    invoke-static {v2}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return v3

    .line 89
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 91
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v3

    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 91
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method private static copyEntries(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 2
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "out"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    .line 1733
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1734
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/corncop/capricornus/zip/ZipUtil$9;

    invoke-direct {v1, v0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$9;-><init>(Ljava/util/Set;Ljava/util/zip/ZipOutputStream;)V

    invoke-static {p0, v1}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 1745
    return-void
.end method

.method private static copyEntries(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/util/Set;)V
    .locals 3
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1758
    .local p2, "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1759
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->filterDirEntries(Ljava/io/File;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 1760
    .local v0, "dirNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lcom/corncop/capricornus/zip/ZipUtil$10;

    invoke-direct {v2, p2, v0, v1, p1}, Lcom/corncop/capricornus/zip/ZipUtil$10;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/zip/ZipOutputStream;)V

    invoke-static {p0, v2}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 1781
    return-void
.end method

.method private static doEntryEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "zf1"    # Ljava/util/zip/ZipFile;
    .param p1, "zf2"    # Ljava/util/zip/ZipFile;
    .param p2, "path1"    # Ljava/lang/String;
    .param p3, "path2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2589
    const/4 v2, 0x0

    .line 2590
    .local v2, "is1":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2592
    .local v3, "is2":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 2593
    .local v0, "e1":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2595
    .local v1, "e2":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 2615
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2616
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_0
    return v4

    .line 2599
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 2615
    :cond_1
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2616
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move v4, v5

    goto :goto_0

    .line 2603
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 2604
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2605
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 2615
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2616
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 2608
    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 2615
    :cond_4
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2616
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move v4, v5

    goto :goto_0

    .line 2612
    :cond_5
    :try_start_2
    invoke-static {v2, v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 2615
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2616
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 2615
    .end local v0    # "e1":Ljava/util/zip/ZipEntry;
    .end local v1    # "e2":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2616
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4
.end method

.method private static doUnpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 6
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 288
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracting \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' entry \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' into \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 291
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_2

    .line 292
    const/4 v2, 0x0

    .line 312
    :cond_1
    :goto_0
    return v2

    .line 295
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_5

    .line 296
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    invoke-static {p2}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 302
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_0

    .line 305
    :cond_5
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p2}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method private static doUnpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 3
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 180
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 189
    :goto_0
    return-object v2

    .line 184
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 186
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 189
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method static varargs entriesByPath([Lcom/corncop/capricornus/zip/ZipEntrySource;)Ljava/util/Map;
    .locals 4
    .param p0, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/corncop/capricornus/zip/ZipEntrySource;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/corncop/capricornus/zip/ZipEntrySource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2061
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2062
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntrySource;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 2063
    aget-object v2, p0, v0

    .line 2064
    .local v2, "source":Lcom/corncop/capricornus/zip/ZipEntrySource;
    invoke-interface {v2}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2066
    .end local v2    # "source":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :cond_0
    return-object v1
.end method

.method public static entryEquals(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 2518
    invoke-static {p0, p1, p2, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->entryEquals(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static entryEquals(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;
    .param p2, "path1"    # Ljava/lang/String;
    .param p3, "path2"    # Ljava/lang/String;

    .prologue
    .line 2535
    const/4 v1, 0x0

    .line 2536
    .local v1, "zf1":Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .line 2539
    .local v3, "zf2":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2540
    .end local v1    # "zf1":Ljava/util/zip/ZipFile;
    .local v2, "zf1":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2542
    .end local v3    # "zf2":Ljava/util/zip/ZipFile;
    .local v4, "zf2":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-static {v2, v4, p2, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->doEntryEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    .line 2548
    invoke-static {v2}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2549
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return v5

    .line 2544
    .end local v2    # "zf1":Ljava/util/zip/ZipFile;
    .end local v4    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v3    # "zf2":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2548
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 2549
    invoke-static {v3}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v5

    .line 2548
    .end local v1    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf1":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf1":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v1    # "zf1":Ljava/util/zip/ZipFile;
    .end local v3    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf2":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v3    # "zf2":Ljava/util/zip/ZipFile;
    move-object v1, v2

    .end local v2    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf1":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 2544
    .end local v1    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf1":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf1":Ljava/util/zip/ZipFile;
    goto :goto_0

    .end local v1    # "zf1":Ljava/util/zip/ZipFile;
    .end local v3    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf2":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "zf2":Ljava/util/zip/ZipFile;
    .restart local v3    # "zf2":Ljava/util/zip/ZipFile;
    move-object v1, v2

    .end local v2    # "zf1":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf1":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static entryEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "zf1"    # Ljava/util/zip/ZipFile;
    .param p1, "zf2"    # Ljava/util/zip/ZipFile;
    .param p2, "path1"    # Ljava/lang/String;
    .param p3, "path2"    # Ljava/lang/String;

    .prologue
    .line 2568
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->doEntryEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2570
    :catch_0
    move-exception v0

    .line 2571
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v1

    throw v1
.end method

.method public static explode(Ljava/io/File;)V
    .locals 5
    .param p0, "zip"    # Ljava/io/File;

    .prologue
    .line 1000
    :try_start_0
    invoke-static {p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->getTempFileFor(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1003
    .local v1, "tempFile":Ljava/io/File;
    invoke-static {p0, v1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 1006
    invoke-static {v1, p0}, Lcom/corncop/capricornus/zip/ZipUtil;->unpack(Ljava/io/File;Ljava/io/File;)V

    .line 1009
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1010
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v1    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v2

    throw v2

    .line 1016
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "tempFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method static filterDirEntries(Ljava/io/File;Ljava/util/Collection;)Ljava/util/Set;
    .locals 9
    .param p0, "zip"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1794
    .local v0, "dirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1818
    :goto_0
    return-object v0

    .line 1797
    :cond_0
    const/4 v4, 0x0

    .line 1799
    .local v4, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1800
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .local v5, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1801
    .local v3, "entryName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1802
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1803
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1812
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 1813
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1816
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 1805
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1807
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1816
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    :goto_3
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v6

    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :cond_3
    invoke-static {v5}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    move-object v4, v5

    .line 1817
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 1816
    :catchall_1
    move-exception v6

    goto :goto_3

    .line 1812
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static handle(Ljava/io/File;Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)Z
    .locals 6
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 676
    const/4 v3, 0x0

    .line 678
    .local v3, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 680
    .end local v3    # "zf":Ljava/util/zip/ZipFile;
    .local v4, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 681
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_0

    .line 682
    const/4 v5, 0x0

    .line 698
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    :goto_0
    return v5

    .line 685
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 687
    .local v1, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-interface {p2, v1, v2}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    :try_start_4
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 692
    const/4 v5, 0x1

    .line 698
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 694
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 695
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_6
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v5

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 698
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_2
    invoke-static {v3}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v5

    .end local v3    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .restart local v3    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 694
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static handle(Ljava/io/InputStream;Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)Z
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 718
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;-><init>(Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 719
    .local v0, "helper":Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;
    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 720
    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->found()Z

    move-result v1

    return v1
.end method

.method public static iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    .locals 10
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 368
    const/4 v5, 0x0

    .line 370
    .local v5, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v6, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 373
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 374
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 376
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 378
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-interface {p1, v3, v0}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    :try_start_3
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 391
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 392
    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v5}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v7

    .line 380
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/util/zip/ZipEntry;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v4

    .line 381
    .local v4, "ze":Ljava/io/IOException;
    :try_start_5
    new-instance v7, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to process zip entry \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' with action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    .end local v4    # "ze":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7

    .line 395
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 383
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v0    # "e":Ljava/util/zip/ZipEntry;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "zf":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v2

    .line 387
    .local v2, "ex":Lcom/corncop/capricornus/zip/ZipBreakException;
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 395
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v2    # "ex":Lcom/corncop/capricornus/zip/ZipBreakException;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {v6}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 397
    return-void

    .line 391
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V
    .locals 9
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "action"    # Lcom/corncop/capricornus/zip/ZipInfoCallback;

    .prologue
    .line 462
    const/4 v4, 0x0

    .line 464
    .local v4, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .local v5, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 467
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    .local v0, "e":Ljava/util/zip/ZipEntry;
    :try_start_2
    invoke-interface {p1, v0}, Lcom/corncop/capricornus/zip/ZipInfoCallback;->process(Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 472
    :catch_0
    move-exception v3

    .line 473
    .local v3, "ze":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process zip entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "ze":Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 481
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v6

    .line 475
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/util/zip/ZipEntry;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v2

    .line 484
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-static {v5}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 486
    return-void

    .line 484
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 480
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static iterate(Ljava/io/File;[Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    .locals 10
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entryNames"    # [Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 415
    const/4 v5, 0x0

    .line 417
    .local v5, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v6, "zf":Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v7, p1

    if-ge v2, v7, :cond_1

    .line 420
    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 421
    .local v0, "e":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 419
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 426
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-interface {p2, v3, v0}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 435
    :try_start_3
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 439
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 440
    .end local v2    # "i":I
    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 443
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v5}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v7

    .line 428
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/util/zip/ZipEntry;
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v4

    .line 429
    .local v4, "ze":Ljava/io/IOException;
    :try_start_5
    new-instance v7, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to process zip entry \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 435
    .end local v4    # "ze":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7

    .line 443
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 431
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v0    # "e":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "zf":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v1

    .line 435
    .local v1, "ex":Lcom/corncop/capricornus/zip/ZipBreakException;
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 443
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "ex":Lcom/corncop/capricornus/zip/ZipBreakException;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {v6}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 445
    return-void

    .line 439
    .end local v2    # "i":I
    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static iterate(Ljava/io/File;[Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V
    .locals 9
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entryNames"    # [Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipInfoCallback;

    .prologue
    .line 504
    const/4 v4, 0x0

    .line 506
    .local v4, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .local v5, "zf":Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 509
    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 510
    .local v0, "e":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 508
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_0
    :try_start_2
    invoke-interface {p2, v0}, Lcom/corncop/capricornus/zip/ZipInfoCallback;->process(Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 516
    :catch_0
    move-exception v3

    .line 517
    .local v3, "ze":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process zip entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 524
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "ze":Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 525
    .end local v2    # "i":I
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v4}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v6

    .line 519
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/util/zip/ZipEntry;
    .restart local v2    # "i":I
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v1

    .line 528
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_1
    invoke-static {v5}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 530
    return-void

    .line 528
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 524
    .end local v2    # "i":I
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;Ljava/nio/charset/Charset;)V

    .line 589
    return-void
.end method

.method public static iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;Ljava/nio/charset/Charset;)V
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 550
    const/4 v3, 0x0

    .line 551
    .local v3, "in":Ljava/util/zip/ZipInputStream;
    if-nez p2, :cond_0

    .line 552
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "in":Ljava/util/zip/ZipInputStream;
    .local v4, "in":Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .line 558
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "in":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 560
    :try_start_1
    invoke-interface {p1, v3, v1}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 562
    :catch_0
    move-exception v5

    .line 563
    .local v5, "ze":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process zip entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 570
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "ze":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v6

    throw v6

    .line 555
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_3
    invoke-static {p0, p2}, Lcom/corncop/capricornus/zip/ZipFileUtil;->createZipInputStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_0

    .line 565
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v2

    .line 573
    :cond_1
    return-void
.end method

.method public static iterate(Ljava/io/InputStream;[Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entryNames"    # [Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;[Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;Ljava/nio/charset/Charset;)V

    .line 659
    return-void
.end method

.method public static iterate(Ljava/io/InputStream;[Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;Ljava/nio/charset/Charset;)V
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entryNames"    # [Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 609
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 610
    .local v6, "namesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_0

    .line 611
    aget-object v8, p1, v3

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_0
    const/4 v4, 0x0

    .line 615
    .local v4, "in":Ljava/util/zip/ZipInputStream;
    if-nez p3, :cond_2

    .line 616
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .local v5, "in":Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .line 622
    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_3

    .line 623
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_1

    .line 628
    :try_start_1
    invoke-interface {p2, v4, v1}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 630
    :catch_0
    move-exception v7

    .line 631
    .local v7, "ze":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to process zip entry \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 638
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "ze":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 639
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v8

    throw v8

    .line 619
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-static {p0, p3}, Lcom/corncop/capricornus/zip/ZipFileUtil;->createZipInputStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto :goto_1

    .line 633
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v2

    .line 641
    :cond_3
    return-void
.end method

.method private static metaDataEquals(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)Z
    .locals 15
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "e1"    # Ljava/util/zip/ZipEntry;
    .param p2, "e2"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2457
    if-nez p2, :cond_1

    .line 2458
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "ZipUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Entry \'{}\' removed. path = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_0
    const/4 v12, 0x0

    .line 2502
    :goto_0
    return v12

    .line 2463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2464
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2465
    const/4 v12, 0x1

    goto :goto_0

    .line 2468
    :cond_2
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "ZipUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Entry \'{}\' not a directory any more. path = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 2472
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2473
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "ZipUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Entry \'{}\' now a directory."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 2478
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 2479
    .local v4, "size1":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    .line 2480
    .local v6, "size2":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_8

    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-eqz v12, :cond_8

    cmp-long v12, v4, v6

    if-eqz v12, :cond_8

    .line 2481
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "ZipUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Entry \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' size changed ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " vs "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2486
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    .line 2487
    .local v0, "crc1":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    .line 2488
    .local v2, "crc2":J
    const-wide/16 v12, -0x1

    cmp-long v12, v0, v12

    if-eqz v12, :cond_a

    const-wide/16 v12, -0x1

    cmp-long v12, v2, v12

    if-eqz v12, :cond_a

    cmp-long v12, v0, v2

    if-eqz v12, :cond_a

    .line 2489
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string v12, "ZipUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Entry \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' CRC changed ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " vs "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2494
    :cond_a
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_b

    .line 2495
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    .line 2496
    .local v8, "time1":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    .line 2497
    .local v10, "time2":J
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-eqz v12, :cond_b

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_b

    cmp-long v12, v8, v10

    if-eqz v12, :cond_b

    .line 2498
    sget-boolean v12, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v12, :cond_b

    const-string v12, "ZipUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Entry \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' time changed ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " vs "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    .end local v8    # "time1":J
    .end local v10    # "time2":J
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private static operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z
    .locals 5
    .param p0, "src"    # Ljava/io/File;
    .param p1, "action"    # Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;

    .prologue
    .line 2661
    const/4 v2, 0x0

    .line 2663
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "zt-zip-tmp"

    const-string v4, ".zip"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2664
    invoke-virtual {p1, v2}, Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;->act(Ljava/io/File;)Z

    move-result v1

    .line 2665
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2666
    invoke-static {p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 2667
    invoke-static {v2, p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    :cond_0
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return v1

    .line 2671
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2672
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2675
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    throw v3
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "zip"    # Ljava/io/File;

    .prologue
    .line 1062
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/io/File;I)V

    .line 1063
    return-void
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;I)V
    .locals 1
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "zip"    # Ljava/io/File;
    .param p2, "compressionLevel"    # I

    .prologue
    .line 1079
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;I)V

    .line 1080
    return-void
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 1
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetZip"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 1225
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;I)V

    .line 1226
    return-void
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;I)V
    .locals 6
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetZip"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;
    .param p3, "compressionLevel"    # I

    .prologue
    .line 1243
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compressing \'{}\' into \'{}\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1245
    new-instance v3, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t exist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1247
    :cond_1
    const/4 v1, 0x0

    .line 1249
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 1251
    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {p0, v2, p2, v3, v4}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Lcom/corncop/capricornus/zip/NameMapper;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1257
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1259
    return-void

    .line 1253
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .line 1253
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;Z)V
    .locals 2
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetZipFile"    # Ljava/io/File;
    .param p2, "preserveRoot"    # Z

    .prologue
    .line 1096
    if-eqz p2, :cond_0

    .line 1097
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "parentName":Ljava/lang/String;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipUtil$1;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 1107
    .end local v0    # "parentName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-static {p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method private static pack(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Lcom/corncop/capricornus/zip/NameMapper;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;
    .param p3, "pathPrefix"    # Ljava/lang/String;
    .param p4, "mustHaveChildren"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, "filenames":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1278
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1279
    new-instance v8, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Given file \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' doesn\'t exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1281
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Given file is not a directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1284
    :cond_1
    if-eqz p4, :cond_2

    array-length v8, v2

    if-nez v8, :cond_2

    .line 1285
    new-instance v8, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Given directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' doesn\'t contain any files!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1288
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_7

    .line 1289
    aget-object v1, v2, v3

    .line 1290
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1291
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 1292
    .local v4, "isDir":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1293
    .local v6, "path":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1298
    :cond_3
    invoke-interface {p2, v6}, Lcom/corncop/capricornus/zip/NameMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1299
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 1300
    invoke-static {v5, v0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->fromFile(Ljava/lang/String;Ljava/io/File;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 1302
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1305
    if-nez v4, :cond_4

    .line 1306
    invoke-static {v0, p1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 1309
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1313
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    if-eqz v4, :cond_6

    .line 1314
    const/4 v8, 0x0

    invoke-static {v0, p1, p2, v6, v8}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Lcom/corncop/capricornus/zip/NameMapper;Ljava/lang/String;Z)V

    .line 1288
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1317
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "isDir":Z
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public static pack([Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V
    .locals 7
    .param p0, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p1, "zip"    # Ljava/io/File;

    .prologue
    .line 1481
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating \'{}\' from {}.zip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    const/4 v2, 0x0

    .line 1485
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 1487
    aget-object v4, p0, v1

    invoke-static {v4, v3}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1494
    :cond_1
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1496
    return-void

    .line 1490
    .end local v1    # "i":I
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1494
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "i":I
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_2

    .line 1490
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1
.end method

.method public static packEntries([Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "filesToPack"    # [Ljava/io/File;
    .param p1, "destZipFile"    # Ljava/io/File;

    .prologue
    .line 1170
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->packEntries([Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 1171
    return-void
.end method

.method public static packEntries([Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 11
    .param p0, "filesToPack"    # [Ljava/io/File;
    .param p1, "destZipFile"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 1186
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ZipUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compressing \'{}\' into \'{}\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    const/4 v5, 0x0

    .line 1189
    .local v5, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v2, 0x0

    .line 1191
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1194
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .local v6, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_2
    array-length v8, p0

    if-ge v4, v8, :cond_1

    .line 1195
    aget-object v1, p0, v4

    .line 1197
    .local v1, "fileToPack":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lcom/corncop/capricornus/zip/NameMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->fromFile(Ljava/lang/String;Ljava/io/File;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 1198
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1199
    invoke-static {v1, v6}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 1200
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1194
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1207
    .end local v1    # "fileToPack":Ljava/io/File;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    invoke-static {v6}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1208
    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1210
    return-void

    .line 1203
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1207
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1208
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v8

    .line 1207
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_2

    .line 1203
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1
.end method

.method public static packEntry(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "fileToPack"    # Ljava/io/File;
    .param p1, "destZipFile"    # Ljava/io/File;

    .prologue
    .line 1120
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->packEntry(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 1121
    return-void
.end method

.method public static packEntry(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 2
    .param p0, "fileToPack"    # Ljava/io/File;
    .param p1, "destZipFile"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 1156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->packEntries([Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 1157
    return-void
.end method

.method public static packEntry(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "fileToPack"    # Ljava/io/File;
    .param p1, "destZipFile"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1136
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$2;

    invoke-direct {v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->packEntry(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 1141
    return-void
.end method

.method public static packEntry(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1027
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZipUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compressing \'{}\' into a ZIP file with single entry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1031
    .local v4, "result":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1032
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->fromFile(Ljava/lang/String;Ljava/io/File;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 1033
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, v2, v3}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->addEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    :try_start_2
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1040
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1045
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 1038
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1042
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v5

    throw v5
.end method

.method public static removeEntries(Ljava/io/File;[Ljava/lang/String;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 1715
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$8;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$8;-><init>(Ljava/io/File;[Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 1721
    return-void
.end method

.method public static removeEntries(Ljava/io/File;[Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 1690
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and removing paths "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_0
    const/4 v1, 0x0

    .line 1694
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2, v3}, Lcom/corncop/capricornus/zip/ZipUtil;->copyEntries(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1701
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1703
    return-void

    .line 1697
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1701
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .line 1697
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method public static removeEntry(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1670
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$7;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$7;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    .line 1676
    return-void
.end method

.method public static removeEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 1657
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->removeEntries(Ljava/io/File;[Ljava/lang/String;Ljava/io/File;)V

    .line 1658
    return-void
.end method

.method public static repack(Ljava/io/File;I)V
    .locals 5
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "compressionLevel"    # I

    .prologue
    .line 1378
    :try_start_0
    invoke-static {p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->getTempFileFor(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1380
    .local v1, "tmpZip":Ljava/io/File;
    invoke-static {p0, v1, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->repack(Ljava/io/File;Ljava/io/File;I)V

    .line 1383
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1384
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete the file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v1    # "tmpZip":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v2

    throw v2

    .line 1388
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "tmpZip":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {v1, p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1393
    return-void
.end method

.method public static repack(Ljava/io/File;Ljava/io/File;I)V
    .locals 4
    .param p0, "srcZip"    # Ljava/io/File;
    .param p1, "dstZip"    # Ljava/io/File;
    .param p2, "compressionLevel"    # I

    .prologue
    .line 1331
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repacking \'{}\' into \'{}\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_0
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;-><init>(Ljava/io/File;ILcom/corncop/capricornus/zip/ZipUtil$1;)V

    .line 1336
    .local v0, "callback":Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;
    :try_start_0
    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->access$200(Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;)V

    .line 1341
    return-void

    .line 1339
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->access$200(Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;)V

    throw v1
.end method

.method public static repack(Ljava/io/InputStream;Ljava/io/File;I)V
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "dstZip"    # Ljava/io/File;
    .param p2, "compressionLevel"    # I

    .prologue
    .line 1355
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repacking from input stream into \'{}\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;-><init>(Ljava/io/File;ILcom/corncop/capricornus/zip/ZipUtil$1;)V

    .line 1360
    .local v0, "callback":Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;
    :try_start_0
    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->access$200(Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;)V

    .line 1365
    return-void

    .line 1363
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->access$200(Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;)V

    throw v1
.end method

.method public static replaceEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 1982
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$15;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$15;-><init>(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static replaceEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)Z
    .locals 8
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 1937
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZipUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' and replacing entries "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_0
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZipUtil;->entriesByPath([Lcom/corncop/capricornus/zip/ZipEntrySource;)Ljava/util/Map;

    move-result-object v1

    .line 1940
    .local v1, "entryByPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntrySource;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    .line 1942
    .local v2, "entryCount":I
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
    .local v4, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1945
    .local v3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Lcom/corncop/capricornus/zip/ZipUtil$14;

    invoke-direct {v5, v3, v1, v4}, Lcom/corncop/capricornus/zip/ZipUtil$14;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;)V

    invoke-static {p0, v5}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    :try_start_2
    invoke-static {v4}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1969
    .end local v3    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-ge v5, v2, :cond_1

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 1963
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-static {v4}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1966
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    goto :goto_0

    .line 1969
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static replaceEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 1918
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$13;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$13;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static replaceEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)Z
    .locals 2
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 1905
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/corncop/capricornus/zip/ZipEntrySource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->replaceEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static replaceEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 1850
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$11;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static replaceEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "destZip"    # Ljava/io/File;

    .prologue
    .line 1835
    new-instance v0, Lcom/corncop/capricornus/zip/FileSource;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p0, v0, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->replaceEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static replaceEntry(Ljava/io/File;Ljava/lang/String;[B)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 1886
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$12;-><init>(Ljava/io/File;Ljava/lang/String;[B)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static replaceEntry(Ljava/io/File;Ljava/lang/String;[BLjava/io/File;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "destZip"    # Ljava/io/File;

    .prologue
    .line 1871
    new-instance v0, Lcom/corncop/capricornus/zip/ByteSource;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ByteSource;-><init>(Ljava/lang/String;[B)V

    invoke-static {p0, v0, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->replaceEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static transformEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    .prologue
    .line 2177
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$20;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$20;-><init>(Ljava/io/File;[Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static transformEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/File;)Z
    .locals 6
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 2149
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and transforming entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;-><init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;)V

    .line 2155
    .local v0, "action":Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;
    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 2156
    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->found()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 2159
    :try_start_2
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return v3

    .end local v0    # "action":Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2162
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 2163
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
.end method

.method public static transformEntries(Ljava/io/InputStream;[Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/OutputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 2228
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and transforming entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2232
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;-><init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;)V

    .line 2233
    .local v0, "action":Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;
    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 2236
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 2237
    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->found()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2239
    .end local v0    # "action":Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 2240
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
.end method

.method public static transformEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    .prologue
    .line 2130
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$19;

    invoke-direct {v0, p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil$19;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static transformEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/File;)Z
    .locals 2
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
    .param p2, "destZip"    # Ljava/io/File;

    .prologue
    .line 2117
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->transformEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static transformEntry(Ljava/io/File;Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transformer"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .prologue
    .line 2098
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$18;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->operateInPlace(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;)Z

    move-result v0

    return v0
.end method

.method public static transformEntry(Ljava/io/File;Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/File;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transformer"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    .param p3, "destZip"    # Ljava/io/File;

    .prologue
    .line 2083
    new-instance v0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;-><init>(Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)V

    invoke-static {p0, v0, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->transformEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static transformEntry(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/OutputStream;)Z
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 2213
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->transformEntries(Ljava/io/InputStream;[Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public static transformEntry(Ljava/io/InputStream;Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/OutputStream;)Z
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transformer"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 2198
    new-instance v0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;-><init>(Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)V

    invoke-static {p0, v0, p3}, Lcom/corncop/capricornus/zip/ZipUtil;->transformEntry(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method static transformersByPath(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2285
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2286
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    .line 2287
    .local v0, "entry":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->getTransformer()Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2289
    .end local v0    # "entry":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
    :cond_0
    return-object v1
.end method

.method public static unexplode(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 1436
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->unexplode(Ljava/io/File;I)V

    .line 1437
    return-void
.end method

.method public static unexplode(Ljava/io/File;I)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "compressionLevel"    # I

    .prologue
    .line 1456
    :try_start_0
    invoke-static {p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->getTempFileFor(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1459
    .local v1, "zip":Ljava/io/File;
    invoke-static {p0, v1, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->pack(Ljava/io/File;Ljava/io/File;I)V

    .line 1462
    invoke-static {p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 1465
    invoke-static {v1, p0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    return-void

    .line 1467
    .end local v1    # "zip":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v2

    throw v2
.end method

.method public static unpack(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    .line 767
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->unpack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 768
    return-void
.end method

.method public static unpack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 3
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "outputDir"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 783
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZipUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracting \'{}\' into \'{}\'. zip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "outputDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 785
    return-void
.end method

.method public static unpack(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    .line 833
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->unpack(Ljava/io/InputStream;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 834
    return-void
.end method

.method public static unpack(Ljava/io/InputStream;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outputDir"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 849
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZipUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracting \'{}\' into \'{}\'. is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "outputDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 851
    return-void
.end method

.method public static unpackEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .local v2, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-static {v2, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->doUnpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 250
    invoke-static {v2}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return v3

    .line 246
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v3

    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 246
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static unpackEntry(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$FileUnpacker;

    invoke-direct {v0, p2}, Lcom/corncop/capricornus/zip/ZipUtil$FileUnpacker;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->handle(Ljava/io/InputStream;Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)Z

    move-result v0

    return v0
.end method

.method public static unpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 268
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil;->doUnpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v1

    throw v1
.end method

.method public static unpackEntry(Ljava/io/File;Ljava/lang/String;)[B
    .locals 4
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .local v2, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-static {v2, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->doUnpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 147
    invoke-static {v2}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return-object v3

    .line 143
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v3

    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 143
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static unpackEntry(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 203
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;

    invoke-direct {v0, v1}, Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;-><init>(Lcom/corncop/capricornus/zip/ZipUtil$1;)V

    .line 204
    .local v0, "action":Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;
    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->handle(Ljava/io/InputStream;Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static unpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 2
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    invoke-static {p0, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->doUnpackEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    move-result-object v1

    throw v1
.end method

.method public static unwrap(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    .line 800
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->unwrap(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 801
    return-void
.end method

.method public static unwrap(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 3
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "outputDir"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 818
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZipUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unwrapping \'{}\' into \'{}\'. zip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "outputDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 820
    return-void
.end method

.method public static unwrap(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    .line 866
    sget-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-static {p0, p1, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->unwrap(Ljava/io/InputStream;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 867
    return-void
.end method

.method public static unwrap(Ljava/io/InputStream;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outputDir"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 884
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZipUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unwrapping \'{}\' into \'{}\'. is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "outputDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    new-instance v0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;

    invoke-direct {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;-><init>(Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil;->iterate(Ljava/io/InputStream;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V

    .line 886
    return-void
.end method
