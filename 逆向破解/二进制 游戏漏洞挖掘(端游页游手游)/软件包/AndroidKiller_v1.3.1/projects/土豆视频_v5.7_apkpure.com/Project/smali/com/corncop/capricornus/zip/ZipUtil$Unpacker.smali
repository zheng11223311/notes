.class Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;
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
    name = "Unpacker"
.end annotation


# instance fields
.field private final mapper:Lcom/corncop/capricornus/zip/NameMapper;

.field private final outputDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V
    .locals 0
    .param p1, "outputDir"    # Ljava/io/File;
    .param p2, "mapper"    # Lcom/corncop/capricornus/zip/NameMapper;

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;->outputDir:Ljava/io/File;

    .line 900
    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;->mapper:Lcom/corncop/capricornus/zip/NameMapper;

    .line 901
    return-void
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
    .line 904
    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;->mapper:Lcom/corncop/capricornus/zip/NameMapper;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/corncop/capricornus/zip/NameMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 906
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$Unpacker;->outputDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 907
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 908
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 920
    :goto_0
    invoke-static {p2}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->getZTFilePermissions(Ljava/util/zip/ZipEntry;)Lcom/corncop/capricornus/zip/ZTFilePermissions;

    move-result-object v2

    .line 921
    .local v2, "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    if-eqz v2, :cond_0

    .line 922
    invoke-static {}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->getDefaultStategy()Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;->setPermissions(Ljava/io/File;Lcom/corncop/capricornus/zip/ZTFilePermissions;)V

    .line 925
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    :cond_0
    return-void

    .line 911
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/corncop/capricornus/zip/commons/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 913
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 914
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

    .line 917
    :cond_2
    invoke-static {p1, v0}, Lcom/corncop/capricornus/zip/commons/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0
.end method
