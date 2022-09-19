.class public Lcom/corncop/capricornus/zip/FileSource;
.super Ljava/lang/Object;
.source "FileSource.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntrySource;


# instance fields
.field private final file:Ljava/io/File;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/corncop/capricornus/zip/FileSource;->path:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/corncop/capricornus/zip/FileSource;->file:Ljava/io/File;

    .line 38
    return-void
.end method

.method public static pair([Ljava/io/File;[Ljava/lang/String;)[Lcom/corncop/capricornus/zip/FileSource;
    .locals 5
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 76
    array-length v2, p0

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "names array must contain at least the same amount of items as files array or more"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Lcom/corncop/capricornus/zip/FileSource;

    .line 82
    .local v1, "result":[Lcom/corncop/capricornus/zip/FileSource;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 83
    new-instance v2, Lcom/corncop/capricornus/zip/FileSource;

    aget-object v3, p1, v0

    aget-object v4, p0, v0

    invoke-direct {v2, v3, v4}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEntry()Ljava/util/zip/ZipEntry;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/corncop/capricornus/zip/FileSource;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/FileSource;->file:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->fromFile(Ljava/lang/String;Ljava/io/File;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 46
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/corncop/capricornus/zip/FileSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/FileSource;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/corncop/capricornus/zip/FileSource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileSource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/capricornus/zip/FileSource;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/capricornus/zip/FileSource;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
