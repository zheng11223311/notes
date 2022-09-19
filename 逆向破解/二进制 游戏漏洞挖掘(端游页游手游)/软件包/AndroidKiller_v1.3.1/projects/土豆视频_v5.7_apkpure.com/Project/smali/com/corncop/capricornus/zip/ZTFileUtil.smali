.class public final Lcom/corncop/capricornus/zip/ZTFileUtil;
.super Ljava/lang/Object;
.source "ZTFileUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static innerListFiles(Ljava/io/File;Ljava/util/Collection;Ljava/io/FileFilter;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/FileFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "accumulator":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "filenames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 57
    new-instance v0, Ljava/io/File;

    aget-object v3, v1, v2

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-static {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZTFileUtil;->innerListFiles(Ljava/io/File;Ljava/util/Collection;Ljava/io/FileFilter;)V

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static listFiles(Ljava/io/File;)Ljava/util/Collection;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/ZTFileUtil;->listFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static listFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "accumulator":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    return-object v0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 40
    new-instance p1, Lcom/corncop/capricornus/zip/ZTFileUtil$1;

    .end local p1    # "filter":Ljava/io/FileFilter;
    invoke-direct {p1}, Lcom/corncop/capricornus/zip/ZTFileUtil$1;-><init>()V

    .line 47
    .restart local p1    # "filter":Ljava/io/FileFilter;
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/corncop/capricornus/zip/ZTFileUtil;->innerListFiles(Ljava/io/File;Ljava/util/Collection;Ljava/io/FileFilter;)V

    goto :goto_0
.end method
