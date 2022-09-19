.class public Lcom/youku/laifeng/libcuteroom/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final DOWNLOAD_APK_DIR_NAME:Ljava/lang/String; = "Apk"

.field private static final FANS_WALL_DIR_NAME:Ljava/lang/String; = "fans_wall"

.field private static final FANS_WALL_SHOW_DIR_NAME:Ljava/lang/String; = "LaifengShow"

.field private static final GIFTS_DIR_NAME:Ljava/lang/String; = "gifts"

.field private static final GIFT_RESOURCES_NAME:Ljava/lang/String; = "Resources"

.field private static final GIFT_ZIP_RESOURCES_NAME:Ljava/lang/String; = "ZipResources"

.field private static final HEAD_DIR_NAME:Ljava/lang/String; = "head"

.field private static final IMAGE_DIR_NAME:Ljava/lang/String; = "image"

.field private static final LEVEL_NAME:Ljava/lang/String; = "levelSource"

.field private static final MAIN_DIR_NAME:Ljava/lang/String; = "laifeng"

.field public static final PATH_SD_CARD:Ljava/lang/String;

.field private static final SPLASH_DIR_NAME:Ljava/lang/String; = "splash"

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static final UGCCOMPRESS_RESOURCES_NAME:Ljava/lang/String; = "UgcCompressFile"

.field private static final UPDATE_DIR_NAME:Ljava/lang/String; = "update"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private CustomDownloadApkDir:Ljava/lang/String;

.field private CustomDownloadApkDirName:Ljava/lang/String;

.field private CustomFansWallDirName:Ljava/lang/String;

.field private CustomGiftResourcesDir:Ljava/lang/String;

.field private CustomGiftResourcesDirName:Ljava/lang/String;

.field private CustomGiftZipResourcesDir:Ljava/lang/String;

.field private CustomGiftZipResourcesDirName:Ljava/lang/String;

.field private CustomGiftsDir:Ljava/lang/String;

.field private CustomGiftsDirName:Ljava/lang/String;

.field private CustomHeadDir:Ljava/lang/String;

.field private CustomHeadDirName:Ljava/lang/String;

.field private CustomImageDir:Ljava/lang/String;

.field private CustomImageDirName:Ljava/lang/String;

.field private CustomLevelResourcesDir:Ljava/lang/String;

.field private CustomLevelResourcesDirName:Ljava/lang/String;

.field private CustomMainDir:Ljava/lang/String;

.field private CustomMainDirName:Ljava/lang/String;

.field private CustomSplashDirName:Ljava/lang/String;

.field private CustomSplashsDir:Ljava/lang/String;

.field private CustomUGCCompressResourcesDir:Ljava/lang/String;

.field private CustomUGCCompressResourcesDirName:Ljava/lang/String;

.field private CustomUpdateDir:Ljava/lang/String;

.field private CustomUpdateDirName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->PATH_SD_CARD:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mInstance:Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDir:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDir:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDir:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDir:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDir:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDir:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDir:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDir:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDir:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDir:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDirName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDirName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDirName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDirName:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDirName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDirName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDirName:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDirName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashDirName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDirName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomFansWallDirName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDirName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static clearData()V
    .locals 5

    .prologue
    .line 421
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 422
    .local v1, "outStream":Ljava/io/FileOutputStream;
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 423
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getFansWallShowDirName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-class v2, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    monitor-enter v2

    const/4 v0, 0x0

    .line 159
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->PATH_SD_CARD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "laifeng"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "LaifengShow"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getHistory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v6

    const-string v7, "history"

    invoke-virtual {v6, v7}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 490
    .local v3, "inStream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 491
    .local v5, "outStream":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 492
    .local v4, "len":I
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 493
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 494
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 498
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .end local v5    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 499
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 503
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    :goto_2
    return-object v6

    .line 496
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    .restart local v5    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 497
    .local v1, "content_byte":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 500
    .end local v0    # "buffer":[B
    .end local v1    # "content_byte":[B
    .end local v4    # "len":I
    .end local v5    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 501
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mInstance:Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    if-nez v0, :cond_1

    .line 71
    sget-object v1, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mInstance:Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mInstance:Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->mInstance:Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getLevelResourcesDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    monitor-enter p0

    const/4 v0, 0x0

    .line 242
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 243
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "levelSource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 247
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDir:Ljava/lang/String;

    .line 250
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_1
    monitor-exit p0

    return-object v2

    .line 245
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDir:Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static readData()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 431
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 432
    .local v4, "inStream":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v6, "outStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 434
    .local v5, "len":I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 435
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 436
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 442
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    :cond_0
    const/4 v1, 0x0

    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 438
    .restart local v0    # "buffer":[B
    .restart local v5    # "len":I
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 439
    .local v2, "content_byte":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 440
    .local v1, "content":[Ljava/lang/String;
    goto :goto_1
.end method

.method public static readkey()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 459
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v7

    const-string v8, "key"

    invoke-virtual {v7, v8}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 460
    .local v4, "inStream":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 461
    .local v6, "outStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 462
    .local v5, "len":I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 463
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 464
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 470
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 472
    :cond_0
    const/4 v1, 0x0

    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 466
    .restart local v0    # "buffer":[B
    .restart local v5    # "len":I
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 467
    .local v2, "content_byte":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 468
    .local v1, "content":[Ljava/lang/String;
    goto :goto_1
.end method

.method public static updateHistory(Ljava/lang/String;)V
    .locals 5
    .param p0, "history"    # Ljava/lang/String;

    .prologue
    .line 477
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "history"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 478
    .local v1, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 479
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 482
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "DATA_ID"    # Ljava/lang/String;
    .param p1, "DATA_NICKNAME"    # Ljava/lang/String;
    .param p2, "DATA_FACE_URL"    # Ljava/lang/String;
    .param p3, "DATA_NOBLE_LEVEL"    # Ljava/lang/String;
    .param p4, "DATA_HAS_EXP"    # Ljava/lang/String;
    .param p5, "DATA_NEED_EXP"    # Ljava/lang/String;
    .param p6, "DATA_ANCHOR_LEVEL"    # Ljava/lang/String;
    .param p7, "DATA_IS_ANCHOR"    # Ljava/lang/String;
    .param p8, "DATA_LOGINED"    # Ljava/lang/String;
    .param p9, "DATA_COINS"    # Ljava/lang/String;
    .param p10, "DATA_BAN_SPEAK"    # Ljava/lang/String;
    .param p11, "DATA_KICK_OUT"    # Ljava/lang/String;
    .param p12, "DATA_GENDER"    # Ljava/lang/String;
    .param p13, "DATA_CITY"    # Ljava/lang/String;
    .param p14, "DATA_BIRTHDAY"    # Ljava/lang/String;
    .param p15, "DATA_POST_URL"    # Ljava/lang/String;
    .param p16, "DATA_ATTENTION"    # Ljava/lang/String;
    .param p17, "DATA_NEW_FEEDS"    # Ljava/lang/String;

    .prologue
    .line 407
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string v4, "data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 408
    .local v2, "outStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 408
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 413
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writekey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 449
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 450
    .local v1, "outStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 451
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized UriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 364
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "strRingPath":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-object v7

    .line 359
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "strRingPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAnchorlevelDirPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getLevelResourcesDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AnchorLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 273
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCustomSplashDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomSplashsDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDownloadApkDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    monitor-enter p0

    const/4 v0, 0x0

    .line 321
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 322
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 326
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDir:Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :goto_1
    monitor-exit p0

    return-object v2

    .line 324
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDir:Ljava/lang/String;

    .line 334
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomDownloadApkDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFansWallDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    monitor-enter p0

    const/4 v0, 0x0

    .line 148
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->PATH_SD_CARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "laifeng"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fans_wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 147
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0

    throw v2

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method public declared-synchronized getGiftResourcesDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    const/4 v0, 0x0

    .line 280
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 281
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resources"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 285
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDir:Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :goto_1
    monitor-exit p0

    return-object v2

    .line 283
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDir:Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftResourcesDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getGiftZipResourcesDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 297
    monitor-enter p0

    const/4 v0, 0x0

    .line 298
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 299
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ZipResources"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 303
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDir:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_1
    monitor-exit p0

    return-object v2

    .line 301
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDir:Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftZipResourcesDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getGiftsDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    monitor-enter p0

    const/4 v0, 0x0

    .line 224
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 225
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gifts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 229
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDir:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_1
    monitor-exit p0

    return-object v2

    .line 227
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDir:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getHeadDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 207
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 211
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDir:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_1
    monitor-exit p0

    return-object v2

    .line 209
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDir:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getImageDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    monitor-enter p0

    const/4 v0, 0x0

    .line 170
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 171
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 175
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDir:Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_1
    monitor-exit p0

    return-object v2

    .line 173
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDir:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMainDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x0

    .line 130
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 131
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->PATH_SD_CARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "laifeng"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 135
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDir:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_1
    monitor-exit p0

    return-object v2

    .line 133
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->PATH_SD_CARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDir:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSplashDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 372
    monitor-enter p0

    const/4 v0, 0x0

    .line 373
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 374
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "splash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 378
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :goto_1
    monitor-exit p0

    return-object v2

    .line 376
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;

    .line 386
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 372
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getUGCCompressResourcesDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    monitor-enter p0

    const/4 v0, 0x0

    .line 340
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 341
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UgcCompressFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 345
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDir:Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :goto_1
    monitor-exit p0

    return-object v2

    .line 343
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDir:Ljava/lang/String;

    .line 353
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUGCCompressResourcesDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 339
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getUpdateDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    const/4 v0, 0x0

    .line 188
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDirName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 189
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 193
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDir:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_1
    monitor-exit p0

    return-object v2

    .line 191
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getMainDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDir:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getUserlevelDirPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getLevelResourcesDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UserLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 263
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x1

    .line 398
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCustomGiftsDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customGiftsDirName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomGiftsDirName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCustomHeadDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customHeadDirName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomHeadDirName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCustomImageDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customImageDirName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomImageDirName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCustomLevelResourcesDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customLevelResourcesDirName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomLevelResourcesDirName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCustomMainDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customMainDirName"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomMainDirName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCustomSplashDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customSplashDirName"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashDirName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCustomSplashsDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "customSplashsDir"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomSplashsDir:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCustomUpdateDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customUpdateDirName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->CustomUpdateDirName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setGiftResourcesDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "CustomGiftResourcesDirName"    # Ljava/lang/String;

    .prologue
    .line 105
    .line 106
    return-void
.end method

.method public setGiftZipResourcesDirName(Ljava/lang/String;)V
    .locals 0
    .param p1, "CustomGiftZipResourcesDirName"    # Ljava/lang/String;

    .prologue
    .line 109
    .line 110
    return-void
.end method
