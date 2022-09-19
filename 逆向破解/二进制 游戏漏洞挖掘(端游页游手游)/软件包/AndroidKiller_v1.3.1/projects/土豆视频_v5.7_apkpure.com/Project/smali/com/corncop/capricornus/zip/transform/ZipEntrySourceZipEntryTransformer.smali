.class public Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;
.super Ljava/lang/Object;
.source "ZipEntrySourceZipEntryTransformer.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;


# instance fields
.field private final source:Lcom/corncop/capricornus/zip/ZipEntrySource;


# direct methods
.method public constructor <init>(Lcom/corncop/capricornus/zip/ZipEntrySource;)V
    .locals 0
    .param p1, "source"    # Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;->source:Lcom/corncop/capricornus/zip/ZipEntrySource;

    .line 17
    return-void
.end method

.method static addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V
    .locals 2
    .param p0, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;
    .param p1, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-interface {p0}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 33
    invoke-interface {p0}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 34
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-static {v0, p1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 43
    return-void

    .line 39
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method


# virtual methods
.method public transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;->source:Lcom/corncop/capricornus/zip/ZipEntrySource;

    invoke-static {v0, p3}, Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V

    .line 21
    return-void
.end method
