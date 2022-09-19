.class Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;
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
    name = "Unwraper"
.end annotation


# instance fields
.field private final mapper:Lcom/corncop/capricornus/zip/NameMapper;

.field private final outputDir:Ljava/io/File;

.field private rootDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 0
    .param p1, "outputDir"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->outputDir:Ljava/io/File;

    .line 942
    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->mapper:Lcom/corncop/capricornus/zip/NameMapper;

    .line 943
    return-void
.end method

.method private getRootName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 977
    invoke-static {p1}, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "newName":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 979
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 980
    new-instance v2, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from the root of the zip is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_0
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUnrootedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->getRootName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "root":Ljava/lang/String;
    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->rootDir:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 948
    iput-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->rootDir:Ljava/lang/String;

    .line 954
    :cond_0
    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->mapper:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->getUnrootedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/corncop/capricornus/zip/NameMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 956
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->outputDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 957
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 958
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 970
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 950
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->rootDir:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 951
    new-instance v3, Lcom/corncop/capricornus/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unwrapping with multiple roots is not supported, roots: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unwraper;->rootDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 961
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 963
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 964
    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overwriting file \'{}\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_4
    invoke-static {p1, v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0
.end method
