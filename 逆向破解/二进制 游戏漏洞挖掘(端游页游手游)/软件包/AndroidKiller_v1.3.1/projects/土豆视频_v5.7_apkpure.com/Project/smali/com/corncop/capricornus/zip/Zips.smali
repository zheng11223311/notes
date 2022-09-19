.class public Lcom/corncop/capricornus/zip/Zips;
.super Ljava/lang/Object;
.source "Zips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;,
        Lcom/corncop/capricornus/zip/Zips$CopyingCallback;
    }
.end annotation


# instance fields
.field private changedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/ZipEntrySource;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/nio/charset/Charset;

.field private dest:Ljava/io/File;

.field private nameMapper:Lcom/corncop/capricornus/zip/NameMapper;

.field private preserveTimestamps:Z

.field private removedEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final src:Ljava/io/File;

.field private transformers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private unpackedResult:Z


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->changedEntries:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->removedEntries:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->transformers:Ljava/util/List;

    .line 103
    iput-object p1, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    .line 104
    return-void
.end method

.method public static create()Lcom/corncop/capricornus/zip/Zips;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/corncop/capricornus/zip/Zips;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/corncop/capricornus/zip/Zips;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static get(Ljava/io/File;)Lcom/corncop/capricornus/zip/Zips;
    .locals 1
    .param p0, "src"    # Ljava/io/File;

    .prologue
    .line 113
    new-instance v0, Lcom/corncop/capricornus/zip/Zips;

    invoke-direct {v0, p0}, Lcom/corncop/capricornus/zip/Zips;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private getDestinationFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isUnpack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isInPlace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const-string/jumbo v2, "zips"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 391
    .local v1, "tempFile":Ljava/io/File;
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 417
    .end local v1    # "tempFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 399
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "result":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-object v1, v0

    .line 401
    goto :goto_0

    .line 403
    .end local v0    # "result":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    goto :goto_0

    .line 408
    :cond_2
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isInPlace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    const-string/jumbo v2, "zips"

    const-string v3, ".zip"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 412
    :cond_3
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 415
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    goto :goto_0
.end method

.method private getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "parentPath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a child of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getZipFile()Ljava/util/zip/ZipFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/Zips;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/corncop/capricornus/zip/ZipFileUtil;->getZipFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method

.method private handleInPlaceActions(Ljava/io/File;)V
    .locals 1
    .param p1, "result"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isInPlace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 587
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method private isEntryInDir(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "dirNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    .local v0, "dirName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    const/4 v1, 0x1

    .line 610
    .end local v0    # "dirName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInPlace()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnpack()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/Zips;->unpackedResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iterateChangedAndAdded(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V
    .locals 8
    .param p1, "zipEntryCallback"    # Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    .prologue
    .line 554
    iget-object v5, p0, Lcom/corncop/capricornus/zip/Zips;->changedEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corncop/capricornus/zip/ZipEntrySource;

    .line 556
    .local v2, "entrySource":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :try_start_0
    invoke-interface {v2}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 557
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    iget-object v6, p0, Lcom/corncop/capricornus/zip/Zips;->nameMapper:Lcom/corncop/capricornus/zip/NameMapper;

    if-eqz v6, :cond_1

    .line 558
    iget-object v6, p0, Lcom/corncop/capricornus/zip/Zips;->nameMapper:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/corncop/capricornus/zip/NameMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "mappedName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 562
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 564
    invoke-static {v1, v4}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 567
    .end local v4    # "mappedName":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Lcom/corncop/capricornus/zip/ZipEntrySource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 569
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    .line 576
    .end local v2    # "entrySource":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :cond_2
    return-void

    .line 572
    .restart local v2    # "entrySource":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :catch_1
    move-exception v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    goto :goto_0
.end method

.method private iterateExistingExceptRemoved(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V
    .locals 11
    .param p1, "zipEntryCallback"    # Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    .prologue
    .line 496
    iget-object v9, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    if-nez v9, :cond_0

    .line 545
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v9, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    iget-object v10, p0, Lcom/corncop/capricornus/zip/Zips;->removedEntries:Ljava/util/Set;

    invoke-static {v9, v10}, Lcom/corncop/capricornus/zip/ZipUtil;->filterDirEntries(Ljava/io/File;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    .line 502
    .local v7, "removedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 504
    .local v8, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v8

    .line 507
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 508
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 509
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 510
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "entryName":Ljava/lang/String;
    iget-object v9, p0, Lcom/corncop/capricornus/zip/Zips;->removedEntries:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0, v7, v3}, Lcom/corncop/capricornus/zip/Zips;->isEntryInDir(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 516
    iget-object v9, p0, Lcom/corncop/capricornus/zip/Zips;->nameMapper:Lcom/corncop/capricornus/zip/NameMapper;

    if-eqz v9, :cond_2

    .line 517
    iget-object v9, p0, Lcom/corncop/capricornus/zip/Zips;->nameMapper:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/corncop/capricornus/zip/NameMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "mappedName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 521
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 523
    invoke-static {v2, v6}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 527
    .end local v6    # "mappedName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 529
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, v5, v2}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catch Lcom/corncop/capricornus/zip/ZipBreakException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :try_start_2
    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 539
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 543
    invoke-static {v8}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 531
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 535
    .local v4, "ex":Lcom/corncop/capricornus/zip/ZipBreakException;
    :try_start_4
    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 543
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "ex":Lcom/corncop/capricornus/zip/ZipBreakException;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_3
    invoke-static {v8}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 535
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    :try_start_5
    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 543
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    invoke-static {v8}, Lcom/corncop/capricornus/zip/ZipUtil;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v9
.end method

.method private processAllEntries(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V
    .locals 0
    .param p1, "zipEntryAdapter"    # Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/corncop/capricornus/zip/Zips;->iterateChangedAndAdded(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/corncop/capricornus/zip/Zips;->iterateExistingExceptRemoved(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V

    .line 385
    return-void
.end method


# virtual methods
.method public addEntries([Lcom/corncop/capricornus/zip/ZipEntrySource;)Lcom/corncop/capricornus/zip/Zips;
    .locals 2
    .param p1, "entries"    # [Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->changedEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    return-object p0
.end method

.method public addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;)Lcom/corncop/capricornus/zip/Zips;
    .locals 1
    .param p1, "entry"    # Lcom/corncop/capricornus/zip/ZipEntrySource;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->changedEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object p0
.end method

.method public addFile(Ljava/io/File;)Lcom/corncop/capricornus/zip/Zips;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/corncop/capricornus/zip/Zips;->addFile(Ljava/io/File;ZLjava/io/FileFilter;)Lcom/corncop/capricornus/zip/Zips;

    move-result-object v0

    return-object v0
.end method

.method public addFile(Ljava/io/File;Ljava/io/FileFilter;)Lcom/corncop/capricornus/zip/Zips;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/corncop/capricornus/zip/Zips;->addFile(Ljava/io/File;ZLjava/io/FileFilter;)Lcom/corncop/capricornus/zip/Zips;

    move-result-object v0

    return-object v0
.end method

.method public addFile(Ljava/io/File;Z)Lcom/corncop/capricornus/zip/Zips;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "preserveRoot"    # Z

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/corncop/capricornus/zip/Zips;->addFile(Ljava/io/File;ZLjava/io/FileFilter;)Lcom/corncop/capricornus/zip/Zips;

    move-result-object v0

    return-object v0
.end method

.method public addFile(Ljava/io/File;ZLjava/io/FileFilter;)Lcom/corncop/capricornus/zip/Zips;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "preserveRoot"    # Z
    .param p3, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/corncop/capricornus/zip/Zips;->changedEntries:Ljava/util/List;

    new-instance v4, Lcom/corncop/capricornus/zip/FileSource;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-object p0

    .line 202
    :cond_1
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZTFileUtil;->listFiles(Ljava/io/File;)Ljava/util/Collection;

    move-result-object v2

    .line 203
    .local v2, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 204
    .local v0, "entryFile":Ljava/io/File;
    if-eqz p3, :cond_3

    invoke-interface {p3, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/corncop/capricornus/zip/Zips;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "entryPath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_4
    if-eqz p2, :cond_5

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_5
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_6
    iget-object v4, p0, Lcom/corncop/capricornus/zip/Zips;->changedEntries:Ljava/util/List;

    new-instance v5, Lcom/corncop/capricornus/zip/FileSource;

    invoke-direct {v5, v1, v0}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTransformer(Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)Lcom/corncop/capricornus/zip/Zips;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transformer"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->transformers:Ljava/util/List;

    new-instance v1, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;

    invoke-direct {v1, p1, p2}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;-><init>(Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lcom/corncop/capricornus/zip/Zips;
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/corncop/capricornus/zip/Zips;->charset:Ljava/nio/charset/Charset;

    .line 283
    return-object p0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source is not given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->containsEntry(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public destination(Ljava/io/File;)Lcom/corncop/capricornus/zip/Zips;
    .locals 0
    .param p1, "destination"    # Ljava/io/File;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    .line 297
    return-object p0
.end method

.method public getEntry(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source is not given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->unpackEntry(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public iterate(Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    .locals 2
    .param p1, "zipEntryCallback"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 436
    new-instance v0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;-><init>(Lcom/corncop/capricornus/zip/ZipEntryCallback;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V

    .line 437
    .local v0, "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/Zips;->processAllEntries(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V

    .line 438
    return-void
.end method

.method public iterate(Lcom/corncop/capricornus/zip/ZipInfoCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/corncop/capricornus/zip/ZipInfoCallback;

    .prologue
    .line 454
    new-instance v0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;-><init>(Lcom/corncop/capricornus/zip/ZipEntryCallback;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V

    .line 456
    .local v0, "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/Zips;->processAllEntries(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V

    .line 457
    return-void
.end method

.method public nameMapper(Lcom/corncop/capricornus/zip/NameMapper;)Lcom/corncop/capricornus/zip/Zips;
    .locals 0
    .param p1, "nameMapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/corncop/capricornus/zip/Zips;->nameMapper:Lcom/corncop/capricornus/zip/NameMapper;

    .line 307
    return-object p0
.end method

.method public preserveTimestamps()Lcom/corncop/capricornus/zip/Zips;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corncop/capricornus/zip/Zips;->preserveTimestamps:Z

    .line 261
    return-object p0
.end method

.method public process()V
    .locals 8

    .prologue
    .line 346
    iget-object v4, p0, Lcom/corncop/capricornus/zip/Zips;->src:Ljava/io/File;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/corncop/capricornus/zip/Zips;->dest:Ljava/io/File;

    if-nez v4, :cond_0

    .line 347
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Source and destination shouldn\'t be null together"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 352
    .local v0, "destinationFile":Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->getDestinationFile()Ljava/io/File;

    move-result-object v0

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v3, 0x0

    .line 356
    .local v3, "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v5, p0, Lcom/corncop/capricornus/zip/Zips;->charset:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lcom/corncop/capricornus/zip/ZipFileUtil;->createZipOutputStream(Ljava/io/BufferedOutputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;

    move-result-object v2

    .line 358
    new-instance v3, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    .end local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    new-instance v4, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;

    iget-object v5, p0, Lcom/corncop/capricornus/zip/Zips;->transformers:Ljava/util/List;

    iget-boolean v6, p0, Lcom/corncop/capricornus/zip/Zips;->preserveTimestamps:Z

    const/4 v7, 0x0

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;-><init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;ZLcom/corncop/capricornus/zip/Zips$1;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;-><init>(Lcom/corncop/capricornus/zip/ZipEntryCallback;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    .restart local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    :goto_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/corncop/capricornus/zip/Zips;->processAllEntries(Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :try_start_2
    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 369
    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/Zips;->handleInPlaceActions(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isInPlace()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 380
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    :cond_1
    :goto_1
    return-void

    .line 361
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    :cond_2
    :try_start_3
    new-instance v3, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;

    .end local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    new-instance v4, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;

    iget-object v5, p0, Lcom/corncop/capricornus/zip/Zips;->transformers:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;-><init>(Ljava/util/List;Ljava/io/File;Lcom/corncop/capricornus/zip/Zips$1;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;-><init>(Lcom/corncop/capricornus/zip/ZipEntryCallback;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V

    .restart local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    goto :goto_0

    .line 367
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "zipEntryAdapter":Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isInPlace()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_1

    .line 375
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    invoke-direct {p0}, Lcom/corncop/capricornus/zip/Zips;->isInPlace()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    :cond_3
    throw v4
.end method

.method public removeEntries([Ljava/lang/String;)Lcom/corncop/capricornus/zip/Zips;
    .locals 2
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->removedEntries:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    return-object p0
.end method

.method public removeEntry(Ljava/lang/String;)Lcom/corncop/capricornus/zip/Zips;
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Zips;->removedEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    return-object p0
.end method

.method public setPreserveTimestamps(Z)Lcom/corncop/capricornus/zip/Zips;
    .locals 0
    .param p1, "preserve"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/Zips;->preserveTimestamps:Z

    .line 272
    return-object p0
.end method

.method public unpack()Lcom/corncop/capricornus/zip/Zips;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corncop/capricornus/zip/Zips;->unpackedResult:Z

    .line 312
    return-object p0
.end method
