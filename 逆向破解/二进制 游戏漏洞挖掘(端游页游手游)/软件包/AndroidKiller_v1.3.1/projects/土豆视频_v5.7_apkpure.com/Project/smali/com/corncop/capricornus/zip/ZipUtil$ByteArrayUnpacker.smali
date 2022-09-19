.class Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayUnpacker"
.end annotation


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/corncop/capricornus/zip/ZipUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/corncop/capricornus/zip/ZipUtil$1;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;->bytes:[B

    return-object v0
.end method

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
    .line 219
    invoke-static {p1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$ByteArrayUnpacker;->bytes:[B

    .line 220
    return-void
.end method
