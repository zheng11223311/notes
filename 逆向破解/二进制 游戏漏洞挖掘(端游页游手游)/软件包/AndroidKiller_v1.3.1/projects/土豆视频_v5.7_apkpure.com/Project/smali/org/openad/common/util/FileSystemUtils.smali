.class public Lorg/openad/common/util/FileSystemUtils;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_FREE_SIZE:I = 0x1f4

.field private static final DEFAULT_TOTAL_SIZE:I = 0x400

.field private static final _1024_X_1024_:I = 0x100000

.field public static fatFileSystem:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lorg/openad/common/util/FileSystemUtils;->fatFileSystem:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addElement4Array([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    array-length v3, p0

    if-lez v3, :cond_4

    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, p0, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move-object p0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move-object p0, v1

    goto :goto_2
.end method

.method private static filterBetterExternalPath([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    array-length v0, p0

    if-lez v0, :cond_9

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    move v2, v0

    :goto_1
    array-length v4, p0

    sub-int/2addr v4, v0

    if-ge v2, v4, :cond_3

    aget-object v4, p0, v0

    if-eqz v4, :cond_0

    aget-object v4, p0, v2

    if-nez v4, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    aget-object v5, p0, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    aget-object v6, p0, v2

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    aget-object v6, p0, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aput-object v3, p0, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aput-object v3, p0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    move v2, v1

    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_6

    aget-object v3, p0, v0

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-array v3, v2, [Ljava/lang/String;

    move v0, v1

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_8

    aget-object v2, p0, v1

    if-eqz v2, :cond_7

    add-int/lit8 v2, v0, 0x1

    aget-object v4, p0, v1

    aput-object v4, v3, v0

    move v0, v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move-object v0, v3

    :goto_5
    return-object v0

    :cond_9
    move-object v0, v3

    goto :goto_5
.end method

.method private static filterEmptyPadh([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    new-instance v4, Ljava/io/File;

    aget-object v5, p0, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aput-object v3, p0, v0

    goto :goto_1

    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    array-length v4, p0

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v5, p0, v3

    if-eqz v5, :cond_4

    add-int/lit8 v0, v1, 0x1

    aput-object v5, v2, v1

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_4
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public static findExternalPath()[Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v0, "/proc/mounts"

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "fuse rw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "fuse rw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    :goto_3
    return-object v0

    :cond_1
    :try_start_6
    const-string/jumbo v7, "vfat rw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "vfat rw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/openad/common/util/FileSystemUtils;->fatFileSystem:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_3
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1

    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catch_b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1
.end method

.method public static getAvailableSdCardPath()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->findExternalPath()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->filterEmptyPadh([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openad/common/util/FileSystemUtils;->addElement4Array([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalPath()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->findExternalPath()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->filterEmptyPadh([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openad/common/util/FileSystemUtils;->addElement4Array([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->filterBetterExternalPath([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFSDes(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;
    .locals 8

    const/16 v7, 0x400

    const/16 v6, 0x1f4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/openad/common/util/XFSDescriptor;

    invoke-direct {v0, v6, v7}, Lorg/openad/common/util/XFSDescriptor;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long v2, v4, v2

    long-to-int v2, v2

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4

    long-to-int v1, v0

    new-instance v0, Lorg/openad/common/util/XFSDescriptor;

    invoke-direct {v0, v1, v2}, Lorg/openad/common/util/XFSDescriptor;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/openad/common/util/XFSDescriptor;

    invoke-direct {v0, v6, v7}, Lorg/openad/common/util/XFSDescriptor;-><init>(II)V

    goto :goto_0
.end method

.method public static getInternalFSDes()Lorg/openad/common/util/XFSDescriptor;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->getFSDes(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalFSPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardFSDes()Lorg/openad/common/util/XFSDescriptor;
    .locals 2

    const/4 v1, -0x1

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->getFSDes(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/openad/common/util/XFSDescriptor;

    invoke-direct {v0, v1, v1}, Lorg/openad/common/util/XFSDescriptor;-><init>(II)V

    goto :goto_0
.end method

.method public static getSDCardFSDesByPath(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;
    .locals 2

    const/4 v1, -0x1

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/openad/common/util/FileSystemUtils;->getFSDes(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/openad/common/util/XFSDescriptor;

    invoke-direct {v0, v1, v1}, Lorg/openad/common/util/XFSDescriptor;-><init>(II)V

    goto :goto_0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSDCard()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlank(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlank([Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFat()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->findExternalPath()[Ljava/lang/String;

    sget-object v1, Lorg/openad/common/util/FileSystemUtils;->fatFileSystem:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/openad/common/util/FileSystemUtils;->fatFileSystem:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openad/common/util/FileSystemUtils;->filterEmptyPadh([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isFat(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lorg/openad/common/util/FileSystemUtils;->findExternalPath()[Ljava/lang/String;

    sget-object v1, Lorg/openad/common/util/FileSystemUtils;->fatFileSystem:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/openad/common/util/FileSystemUtils;->fatFileSystem:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openad/common/util/FileSystemUtils;->filterEmptyPadh([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/openad/common/util/FileSystemUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank([Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
