.class Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;
.super Ljava/lang/Object;
.source "Zips.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/Zips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnpackingCallback"
.end annotation


# instance fields
.field private final destination:Ljava/io/File;

.field private final entryByPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private final visitedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p2, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->destination:Ljava/io/File;

    .line 666
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZipUtil;->transformersByPath(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->entryByPath:Ljava/util/Map;

    .line 667
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->visitedNames:Ljava/util/Set;

    .line 668
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/io/File;Lcom/corncop/capricornus/zip/Zips$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lcom/corncop/capricornus/zip/Zips$1;

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;-><init>(Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private transformIntoFile(Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 10
    .param p1, "transformer"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    .param p2, "entryIn"    # Ljava/io/InputStream;
    .param p3, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p4, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    new-instance v7, Ljava/io/PipedInputStream;

    invoke-direct {v7}, Ljava/io/PipedInputStream;-><init>()V

    .line 699
    .local v7, "pipedIn":Ljava/io/PipedInputStream;
    new-instance v8, Ljava/io/PipedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 701
    .local v8, "pipedOut":Ljava/io/PipedOutputStream;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 702
    .local v5, "zipOut":Ljava/util/zip/ZipOutputStream;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 704
    .local v9, "zipIn":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 707
    .local v6, "newFixedThreadPool":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;-><init>(Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 717
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 718
    invoke-static {v9, p4}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 728
    :goto_0
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 729
    invoke-static {v7}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 730
    invoke-static {v9}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 731
    invoke-static {v8}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 732
    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 735
    return-void

    .line 721
    :catchall_0
    move-exception v0

    .line 722
    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 728
    :goto_1
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 729
    invoke-static {v7}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 730
    invoke-static {v9}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 731
    invoke-static {v8}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 732
    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    .line 724
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "entryName":Ljava/lang/String;
    iget-object v3, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->visitedNames:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v3, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->visitedNames:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->destination:Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 679
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceMkdir(Ljava/io/File;)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 685
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 688
    iget-object v3, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->entryByPath:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .line 689
    .local v2, "transformer":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    if-nez v2, :cond_2

    .line 690
    invoke-static {p1, v1}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0

    .line 693
    :cond_2
    invoke-direct {p0, v2, p1, p2, v1}, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->transformIntoFile(Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    goto :goto_0
.end method
