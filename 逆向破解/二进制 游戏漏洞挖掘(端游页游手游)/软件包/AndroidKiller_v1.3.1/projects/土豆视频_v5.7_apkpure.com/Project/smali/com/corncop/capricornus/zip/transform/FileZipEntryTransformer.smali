.class public abstract Lcom/corncop/capricornus/zip/transform/FileZipEntryTransformer;
.super Ljava/lang/Object;
.source "FileZipEntryTransformer.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method


# virtual methods
.method public transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "inFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 50
    .local v1, "outFile":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "zip"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 51
    const-string/jumbo v3, "zip"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 52
    invoke-static {p1, v0}, Lcom/corncop/capricornus/zip/transform/FileZipEntryTransformer;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 53
    invoke-virtual {p0, p2, v0, v1}, Lcom/corncop/capricornus/zip/transform/FileZipEntryTransformer;->transform(Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V

    .line 54
    new-instance v2, Lcom/corncop/capricornus/zip/FileSource;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 55
    .local v2, "source":Lcom/corncop/capricornus/zip/FileSource;
    invoke-static {v2, p3}, Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 59
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 61
    return-void

    .line 58
    .end local v2    # "source":Lcom/corncop/capricornus/zip/FileSource;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 59
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    throw v3
.end method

.method protected abstract transform(Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
