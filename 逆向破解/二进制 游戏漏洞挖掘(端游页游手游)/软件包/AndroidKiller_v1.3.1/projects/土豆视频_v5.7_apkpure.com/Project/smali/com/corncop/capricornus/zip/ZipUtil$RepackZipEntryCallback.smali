.class final Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepackZipEntryCallback"
.end annotation


# instance fields
.field private out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "dstZip"    # Ljava/io/File;
    .param p2, "compressionLevel"    # I

    .prologue
    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    .line 1407
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1, p2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :goto_0
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/io/File;ILcom/corncop/capricornus/zip/ZipUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/corncop/capricornus/zip/ZipUtil$1;

    .prologue
    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->closeStream()V

    return-void
.end method

.method private closeStream()V
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1420
    return-void
.end method


# virtual methods
.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$RepackZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1, v0}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    .line 1416
    return-void
.end method
